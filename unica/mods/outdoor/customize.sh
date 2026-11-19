DECODE_APK "system" "system/priv-app/SecSettings/SecSettings.apk"
OUTDOOR_CONTROLLER="$(find "$APKTOOL_DIR/system/priv-app/SecSettings/SecSettings.apk" -type f -name "SecOutDoorModePreferenceController.smali" 2>/dev/null | head -n 1)"
if [ -n "$OUTDOOR_CONTROLLER" ] && [ -f "$OUTDOOR_CONTROLLER" ]; then
    SMALI_PATCH "system" "system/priv-app/SecSettings/SecSettings.apk" \
        "${OUTDOOR_CONTROLLER#"$APKTOOL_DIR/system/priv-app/SecSettings/SecSettings.apk/"}" "return" \
        'isAvailable()Z' \
        'true'
fi
unset OUTDOOR_CONTROLLER
