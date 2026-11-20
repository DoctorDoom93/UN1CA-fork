DECODE_APK "system" "system/priv-app/SecSetupWizard_Global/SecSetupWizard_Global.apk"

LOG "- Enabling navigation bar type settings step"
SUW_DIR="$APKTOOL_DIR/system/priv-app/SecSetupWizard_Global/SecSetupWizard_Global.apk"
NAV_STEP_FILE="$(find "$SUW_DIR" -type f -name "*.smali" -exec grep -l "navigationbar_setting" {} + 2>/dev/null | grep -v "SecSetupWizardActivity" | head -n 1)"
if [ -n "$NAV_STEP_FILE" ]; then
    NAV_STEP_REL="${NAV_STEP_FILE#"$SUW_DIR/"}"
    NAV_METHOD="$(python3 -c "
import re
with open('$NAV_STEP_FILE', 'r', encoding='utf-8') as f:
    text = f.read()
m = re.search(r'\.method[^\n]*\s+([A-Za-z0-9_\$]+\([^\)]*\)Ljava/util/ArrayList;)[\s\S]*?navigationbar_setting[\s\S]*?\.end method', text)
if m:
    print(m.group(1))
" 2>/dev/null)"
    if [ -n "$NAV_METHOD" ]; then
        SMALI_PATCH "system" "system/priv-app/SecSetupWizard_Global/SecSetupWizard_Global.apk" \
            "$NAV_STEP_REL" "replace" \
            "$NAV_METHOD" \
            "navigationbar_setting" \
            "this_string_does_not_exist" \
            > /dev/null || true
    fi
elif [ -f "$SUW_DIR/smali/e7/f.smali" ]; then
    SMALI_PATCH "system" "system/priv-app/SecSetupWizard_Global/SecSetupWizard_Global.apk" \
        "smali/e7/f.smali" "replace" \
        "d(Landroid/content/Context;Z)Ljava/util/ArrayList;" \
        "navigationbar_setting" \
        "this_string_does_not_exist" \
        > /dev/null || true
fi

SUW_ACT_FILE="$(find "$SUW_DIR" -type f -name "SecSetupWizardActivity.smali" 2>/dev/null | head -n 1)"
if [ -n "$SUW_ACT_FILE" ]; then
    SUW_ACT_REL="${SUW_ACT_FILE#"$SUW_DIR/"}"
    ACT_METHOD="$(python3 -c "
import re
with open('$SUW_ACT_FILE', 'r', encoding='utf-8') as f:
    text = f.read()
m = re.search(r'\.method[^\n]*\s+([A-Za-z0-9_\$]+\(Ljava/lang/String;\)Z)[\s\S]*?navigationbar_setting[\s\S]*?\.end method', text)
if m:
    print(m.group(1))
" 2>/dev/null)"
    if [ -n "$ACT_METHOD" ]; then
        SMALI_PATCH "system" "system/priv-app/SecSetupWizard_Global/SecSetupWizard_Global.apk" \
            "$SUW_ACT_REL" "replace" \
            "$ACT_METHOD" \
            "navigationbar_setting" \
            "this_string_does_not_exist" \
            > /dev/null || true
    elif grep -q "e(Ljava/lang/String;)Z" "$SUW_ACT_FILE" 2>/dev/null; then
        SMALI_PATCH "system" "system/priv-app/SecSetupWizard_Global/SecSetupWizard_Global.apk" \
            "$SUW_ACT_REL" "replace" \
            "e(Ljava/lang/String;)Z" \
            "navigationbar_setting" \
            "this_string_does_not_exist" \
            > /dev/null || true
    fi
fi

LOG "- Disabling Recommended apps step"
if [ -f "$APKTOOL_DIR/system/priv-app/SecSetupWizard_Global/SecSetupWizard_Global.apk/res/values/arrays.xml" ]; then
    EVAL "sed -i \"/omcagent/d\" \"$APKTOOL_DIR/system/priv-app/SecSetupWizard_Global/SecSetupWizard_Global.apk/res/values/arrays.xml\""
fi

# Dynamically patch SecSetupWizard_Global
# - Add missing/non-xml files in place
# - Patch existing files
#   - Use the first line of the file to tell sed how to apply the rest of the content
#   - Exception made for files under *res/values* where the "resources" tag gets nuked
while IFS= read -r f; do
    f="${f//$MODPATH\/SecSetupWizard_Global.apk\//}"

    if [ ! -f "$APKTOOL_DIR/system/priv-app/SecSetupWizard_Global/SecSetupWizard_Global.apk/$f" ] || \
            [[ "$f" != *".xml" ]]; then
        LOG "- Adding \"$f\" to /system/system/priv-app/SecSetupWizard_Global.apk"
        EVAL "mkdir -p \"$(dirname "$APKTOOL_DIR/system/priv-app/SecSetupWizard_Global/SecSetupWizard_Global.apk/$f")\""
        EVAL "cp -a \"$MODPATH/SecSetupWizard_Global.apk/${f//\$/\\$}\" \"$APKTOOL_DIR/system/priv-app/SecSetupWizard_Global/SecSetupWizard_Global.apk/${f//\$/\\$}\""
    else
        LOG "- Patching \"$f\" in /system/system/priv-app/SecSetupWizard_Global.apk"
        if [[ "$f" == *"res/values"* ]]; then
            PATCH_INST="/<\/resources>/i"
            CONTENT="$(sed -e "/?xml/d" -e "/resources>/d" "$MODPATH/SecSetupWizard_Global.apk/$f")"
        else
            PATCH_INST="$(head -n 1 "$MODPATH/SecSetupWizard_Global.apk/$f")"
            CONTENT="$(tail -n +2 "$MODPATH/SecSetupWizard_Global.apk/$f")"
        fi
        CONTENT="$(sed -e "s/\"/\\\\\"/g" -e "s/\\\\\\\\\"/\\\\\\\\\\\\\\\\\\\\\"/g" -e "s/\\$/\\\\$/g" -e "s/ /\\\ /g" -e "s/\\\\n/\\\\\\\\\n/g" <<< "$CONTENT")"
        CONTENT="$(sed -E ':a;N;$!ba;s/\r{0,1}\n/\\n/g' <<< "$CONTENT")"
        EVAL "sed -i \"$PATCH_INST $CONTENT\" \"$APKTOOL_DIR/system/priv-app/SecSetupWizard_Global/SecSetupWizard_Global.apk/$f\""
    fi
done < <(find "$MODPATH/SecSetupWizard_Global.apk" -type f)

unset PATCH_INST CONTENT
