# Set auto confirm PIN min digits to 4 in services.jar
# shellcheck disable=SC2016
SMALI_PATCH "system" "system/framework/services.jar" \
    "smali_classes2/com/android/server/locksettings/LockSettingsService.smali" "replace" \
    'refreshStoredPinLength(I)Z' \
    'const/4 v0, 0x6' \
    'const/4 v0, 0x4'
# shellcheck disable=SC2016
SMALI_PATCH "system" "system/framework/services.jar" \
    "smali_classes2/com/android/server/locksettings/SyntheticPasswordManager.smali" "replace" \
    'createLskfBasedProtector(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/internal/widget/LockscreenCredential;JLcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;I)J' \
    'const/4 v12, 0x6' \
    'const/4 v12, 0x4'

# Set auto confirm PIN min digits to 4 in SecSettings.apk
DECODE_APK "system" "system/priv-app/SecSettings/SecSettings.apk"

SECSETTINGS_DIR="$APKTOOL_DIR/system/priv-app/SecSettings/SecSettings.apk"
FRAGMENT_SMALI="$(find "$SECSETTINGS_DIR" -type f -name "ChooseLockPassword\$ChooseLockPasswordFragment.smali" 2>/dev/null | head -n 1)"

if [ -n "$FRAGMENT_SMALI" ]; then
    FRAGMENT_REL="${FRAGMENT_SMALI#"$SECSETTINGS_DIR/"}"
else
    FRAGMENT_REL="smali_classes2/com/android/settings/password/ChooseLockPassword\$ChooseLockPasswordFragment.smali"
fi

# Detect exact 0x6 register in handleNext$2()V (e.g. v2 on One UI 9 / A34, v4 on earlier One UI)
HN_REG="v2"
if [ -f "$SECSETTINGS_DIR/$FRAGMENT_REL" ]; then
    DETECTED_HN_REG="$(python3 -c "
import re, sys
with open('$SECSETTINGS_DIR/$FRAGMENT_REL', 'r', encoding='utf-8') as f:
    text = f.read()
m = re.search(r'\.method[^\n]*handleNext\$2[\s\S]*?const/4\s+([vp]\d+),\s*0x6[\s\S]*?\.end method', text)
if m:
    print(m.group(1))
" 2>/dev/null)"
    [ -n "$DETECTED_HN_REG" ] && HN_REG="$DETECTED_HN_REG"
fi

# shellcheck disable=SC2016
SMALI_PATCH "system" "system/priv-app/SecSettings/SecSettings.apk" \
    "$FRAGMENT_REL" "replace" \
    'handleNext$2()V' \
    "const/4 $HN_REG, 0x6" \
    "const/4 $HN_REG, 0x4"

# Detect exact 0x6 register in setAutoPinConfirmOption(IZ)V (p2 or v4)
APO_REG="p2"
if [ -f "$SECSETTINGS_DIR/$FRAGMENT_REL" ]; then
    DETECTED_APO_REG="$(python3 -c "
import re, sys
with open('$SECSETTINGS_DIR/$FRAGMENT_REL', 'r', encoding='utf-8') as f:
    text = f.read()
m = re.search(r'\.method[^\n]*setAutoPinConfirmOption[\s\S]*?const/4\s+([vp]\d+),\s*0x6[\s\S]*?\.end method', text)
if m:
    print(m.group(1))
" 2>/dev/null)"
    [ -n "$DETECTED_APO_REG" ] && APO_REG="$DETECTED_APO_REG"
fi

# shellcheck disable=SC2016
SMALI_PATCH "system" "system/priv-app/SecSettings/SecSettings.apk" \
    "$FRAGMENT_REL" "replace" \
    'setAutoPinConfirmOption(IZ)V' \
    "const/4 $APO_REG, 0x6" \
    "const/4 $APO_REG, 0x4"
