# Forcefully enable Advanced Battery Information (Health, Manufacture/First Use Date, Regulatory Info)
# In One UI 9, battery regulatory and health availability is centralized in BatteryInfoUtils

SMALI_PATCH "system" "system/priv-app/SecSettings/SecSettings.apk"     "smali_classes3/com/samsung/android/settings/deviceinfo/batteryinfo/BatteryInfoUtils.smali" "return"     "isAvailableBatteryRegulatory(Landroid/content/Context;)Z" "true"
