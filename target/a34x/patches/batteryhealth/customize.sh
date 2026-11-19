# Forcefully enable Advanced Battery Information (Health, Manufacture/First Use Date, Regulatory Info)
# In One UI 9, battery regulatory and health availability is centralized in BatteryInfoUtils

DECODE_APK "system" "system/priv-app/SecSettings/SecSettings.apk"
BATTERY_UTILS="$(find "$APKTOOL_DIR/system/priv-app/SecSettings/SecSettings.apk" -type f -name "BatteryInfoUtils.smali" 2>/dev/null | head -n 1)"
if [ -n "$BATTERY_UTILS" ] && [ -f "$BATTERY_UTILS" ]; then
    SMALI_PATCH "system" "system/priv-app/SecSettings/SecSettings.apk" \
        "${BATTERY_UTILS#"$APKTOOL_DIR/system/priv-app/SecSettings/SecSettings.apk/"}" "return" \
        'isAvailableBatteryRegulatory(Landroid/content/Context;)Z' \
        'true'
fi
unset BATTERY_UTILS
