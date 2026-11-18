APPLY_PATCH "system" "system/framework/framework.jar" \
    "$MODPATH/framework.jar/0001-Introduce-PlayIntegrityHooks.patch"
APPLY_PATCH "system" "system/framework/framework.jar" \
    "$MODPATH/framework.jar/0002-Spoof-PIF-system-properties.patch"

# SDK 37 child startup hook; install native virtualizer payload for a34x / One UI 9
if [ -f "$MODPATH/native/payload/system/lib64/libunica_pif.so" ]; then
    ADD_TO_WORK_DIR "$MODPATH/native/payload" "system" "system/lib64/libunica_pif.so" 0 0 644 "u:object_r:system_lib_file:s0"
    ADD_TO_WORK_DIR "$MODPATH/native/payload" "system" "system/lib/libunica_pif.so" 0 0 644 "u:object_r:system_lib_file:s0"
    APPLY_PATCH "system" "system/framework/framework.jar" \
        "$MODPATH/framework.jar/0003-Initialize-native-PIF-in-app-child.patch"
fi

SMALI_PATCH "system" "system/framework/framework.jar" \
    "smali/android/app/Instrumentation.smali" "replace" \
    'newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;' \
    'return-object p0' \
    '    invoke-static {p1}, Lio/mesalabs/unica/PlayIntegrityHooks;->setProps(Landroid/content/Context;)V\n\n    return-object p0' \
    > /dev/null
SMALI_PATCH "system" "system/framework/framework.jar" \
    "smali/android/app/Instrumentation.smali" "replace" \
    'newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;' \
    'return-object p0' \
    '    invoke-static {p3}, Lio/mesalabs/unica/PlayIntegrityHooks;->setProps(Landroid/content/Context;)V\n\n    return-object p0' \
    > /dev/null
APPLY_PATCH "system" "system/framework/services.jar" \
    "$MODPATH/services.jar/0001-Introduce-PlayIntegrityHooks.patch"

if [ ! -f "$APKTOOL_DIR/system/framework/framework.jar/smali_classes6/io/mesalabs/unica/KeyboxImitationHooks.smali" ]; then
    SMALI_PATCH "system" "system/framework/framework.jar" \
        "smali_classes6/io/mesalabs/unica/PlayIntegrityHooks.smali" "return" \
        'shouldBlockKeyAttestation()Z' 'true'
fi
