SET_PROP_IF_DIFF "vendor" "ro.oem_unlock_supported" "0"

# Better device/model detection in CoreRune
SMALI_PATCH "system" "system/framework/framework.jar" \
    "smali_classes6/com/samsung/android/rune/CoreRune.smali" "replace" \
    '<clinit>()V' \
    'ro.product.model' \
    'ro.product.vendor.model'
SMALI_PATCH "system" "system/framework/framework.jar" \
    "smali_classes6/com/samsung/android/rune/CoreRune.smali" "replace" \
    '<clinit>()V' \
    'ro.product.device' \
    'ro.product.vendor.device'

# Disable AOSP CrashRecovery RescueParty, which is no longer in services.jar
SET_PROP "system" "persist.sys.disable_rescue" "true"

# Disable Samsung's PackageWatchdog rescue observer
SMALI_PATCH "system" "system/framework/services.jar" \
    "smali/com/android/server/SecRescueParty.smali" "null" \
    'secRescuePartyRegisterHealthObserver(Landroid/content/Context;)V'

# Better model detection in FreecessController
SMALI_PATCH "system" "system/framework/services.jar" \
    "smali/com/android/server/am/FreecessController.smali" "replace" \
    '<clinit>()V' \
    'ro.product.model' \
    'ro.product.vendor.model'

# Guard missing Knox application restrictions service and recents policy in services.jar
KNOX_CUSTOM_SVC="$(find "$APKTOOL_DIR/system/framework/services.jar" -name "KnoxCustomManagerService.smali" -print -quit)"
if [ -n "$KNOX_CUSTOM_SVC" ]; then
    python3 - "$KNOX_CUSTOM_SVC" << 'EOF'
import sys
path = sys.argv[1]
with open(path, 'r', encoding='utf-8') as f:
    c = f.read()
target = 'iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mApplicationRestrictionsInternal:Lcom/samsung/android/knox/localservice/ApplicationRestrictionsInternal;'
guard = target + '\n\n    if-eqz p0, :cond_0'
if target in c and 'if-eqz p0, :cond_0' not in c:
    c = c.replace(target, guard, 1)
    with open(path, 'w', encoding='utf-8') as f:
        f.write(c)
EOF
fi

RECENT_TASKS="$(find "$APKTOOL_DIR/system/framework/services.jar" -name "RecentTasks.smali" -print -quit)"
if [ -n "$RECENT_TASKS" ]; then
    python3 - "$RECENT_TASKS" << 'EOF'
import sys
path = sys.argv[1]
with open(path, 'r', encoding='utf-8') as f:
    c = f.read()
target = 'check-cast v5, Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;'
guard = target + '\n\n    if-eqz v5, :cond_5'
if target in c and 'if-eqz v5, :cond_5' not in c:
    c = c.replace(target, guard, 1)
    with open(path, 'w', encoding='utf-8') as f:
        f.write(c)
EOF
fi
