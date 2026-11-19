# shellcheck disable=SC2034
SKIPUNZIP=1

ADD_TO_WORK_DIR "$MODPATH" "system" "." 0 0 755 "u:object_r:system_file:s0"

LOG "- Patching /system/system/etc/security/otacerts.zip"
EVAL "rm -f \"$WORK_DIR/system/system/etc/security/otacerts.zip\""
OTA_CERT="security/aosp_testkey.x509.pem"
[ -f "$SRC_DIR/security/unica_ota.x509.pem" ] && OTA_CERT="security/unica_ota.x509.pem"
EVAL "cd \"$SRC_DIR\"; zip -q \"$WORK_DIR/system/system/etc/security/otacerts.zip\" \"./$OTA_CERT\""

DECODE_APK "system" "system/priv-app/SecSettings/SecSettings.apk"

APPLY_PATCH "system" "system/priv-app/SecSettings/SecSettings.apk" \
    "$MODPATH/suggestions/SecSettings.apk/0001-Launch-UN1CA-Updates-from-suggestions.patch"

# Disable stock OTA references
SW_UTILS="$(find "$APKTOOL_DIR/system/priv-app/SecSettings/SecSettings.apk" -type f -name "SoftwareUpdateUtils.smali" 2>/dev/null | head -n 1)"
REL_SW_UTILS=""
if [ -n "$SW_UTILS" ] && [ -f "$SW_UTILS" ]; then
    REL_SW_UTILS="${SW_UTILS#"$APKTOOL_DIR/system/priv-app/SecSettings/SecSettings.apk/"}"
    if grep -q "isOTAUpgradeAllowed" "$SW_UTILS"; then
        SMALI_PATCH "system" "system/priv-app/SecSettings/SecSettings.apk" \
            "$REL_SW_UTILS" "return" \
            'isOTAUpgradeAllowed(Landroid/content/Context;)Z' \
            'false'
    fi
fi

# Dynamically patch SecSettings
# - Add missing/non-xml files in place
# - Patch existing files
#   - Use the first line of the file to tell sed how to apply the rest of the content
#   - Exception made for files under *res/values* where the "resources" tag gets nuked
while IFS= read -r f; do
    f="${f//$MODPATH\/SecSettings.apk\//}"

    if [ ! -f "$APKTOOL_DIR/system/priv-app/SecSettings/SecSettings.apk/$f" ] || \
            [[ "$f" != *".xml" ]]; then
        LOG "- Adding \"$f\" to /system/system/priv-app/SecSettings.apk"
        EVAL "mkdir -p \"$(dirname "$APKTOOL_DIR/system/priv-app/SecSettings/SecSettings.apk/$f")\""
        EVAL "cp -a \"$MODPATH/SecSettings.apk/${f//\$/\\$}\" \"$APKTOOL_DIR/system/priv-app/SecSettings/SecSettings.apk/${f//\$/\\$}\""
    else
        LOG "- Patching \"$f\" in /system/system/priv-app/SecSettings.apk"
        if [[ "$f" == *"res/values"* ]]; then
            PATCH_INST="/<\/resources>/i"
            CONTENT="$(sed -e "/?xml/d" -e "/resources>/d" "$MODPATH/SecSettings.apk/$f")"
        else
            PATCH_INST="$(head -n 1 "$MODPATH/SecSettings.apk/$f")"
            CONTENT="$(tail -n +2 "$MODPATH/SecSettings.apk/$f")"
        fi
        CONTENT="$(sed -e "s/\"/\\\\\"/g" -e "s/\\$/\\\\$/g" -e "s/ /\\\ /g" -e "s/\\\\n/\\\\\\\\\n/g" <<< "$CONTENT")"
        CONTENT="$(sed -E ':a;N;$!ba;s/\r{0,1}\n/\\n/g' <<< "$CONTENT")"
        EVAL "sed -i \"$PATCH_INST $CONTENT\" \"$APKTOOL_DIR/system/priv-app/SecSettings/SecSettings.apk/$f\""
    fi
done < <(find "$MODPATH/SecSettings.apk" -type f)

unset PATCH_INST CONTENT SW_UTILS REL_SW_UTILS
