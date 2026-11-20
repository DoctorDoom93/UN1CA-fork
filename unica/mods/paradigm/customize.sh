# shellcheck disable=SC2034
SKIPUNZIP=1

if [ ! "$(GET_PROP "system" "ro.unica.codename")" ]; then
    LOG "- Patching /system/system/etc/selinux/plat_property_contexts"
    EVAL "echo \"ro.unica.codename u:object_r:build_prop:s0 exact string\" >> \"$WORK_DIR/system/system/etc/selinux/plat_property_contexts\""
    # Match latest Samsung's flagship device codename
    ROM_CODENAME="$(basename "$MODPATH")"
    SET_PROP "system" "ro.unica.codename" "${ROM_CODENAME^}"
    unset ROM_CODENAME
fi

# 2025 Audio Pack
LOG_STEP_IN "- Adding 2025 Audio Pack"
DELETE_FROM_WORK_DIR "system" "system/hidden/INTERNAL_SDCARD/Music/Samsung/Over_the_Horizon.mp3"
DELETE_FROM_WORK_DIR "system" "system/hidden/INTERNAL_SDCARD/Music/Samsung/Over_the_Horizon.m4a"
ADD_TO_WORK_DIR "pa2qxxx" "system" \
    "system/hidden/INTERNAL_SDCARD/Music/Samsung/Over_the_Horizon.m4a" 0 0 644 "u:object_r:system_file:s0"
DELETE_FROM_WORK_DIR "system" "system/media/audio/notifications"
DELETE_FROM_WORK_DIR "system" "system/media/audio/ringtones"
if $TARGET_AUDIO_SUPPORT_ACH_RINGTONE; then
    ADD_TO_WORK_DIR "pa2qxxx" "system" "system/etc/ringtones_count_list.txt" 0 0 644 "u:object_r:system_file:s0"
    ADD_TO_WORK_DIR "pa2qxxx" "system" "system/media/audio/notifications" 0 0 755 "u:object_r:system_file:s0"
    ADD_TO_WORK_DIR "pa2qxxx" "system" "system/media/audio/ringtones" 0 0 755 "u:object_r:system_file:s0"
    SET_PROP "vendor" "ro.config.ringtone" "ACH_Galaxy_Bells.ogg"
    SET_PROP "vendor" "ro.config.notification_sound" "ACH_Brightline.ogg"
    SET_PROP "vendor" "ro.config.alarm_alert" "ACH_Morning_Xylophone.ogg"
    SET_PROP "vendor" "ro.config.media_sound" "Media_preview_Over_the_horizon.ogg"
    SET_PROP "vendor" "ro.config.ringtone_2" "ACH_Atomic_Bell.ogg"
    SET_PROP "vendor" "ro.config.notification_sound_2" "ACH_Three_Star.ogg"
else
    ADD_TO_WORK_DIR "a56xnaxx" "system" "system/etc/ringtones_count_list.txt" 0 0 644 "u:object_r:system_file:s0"
    ADD_TO_WORK_DIR "a56xnaxx" "system" "system/media/audio/notifications" 0 0 755 "u:object_r:system_file:s0"
    ADD_TO_WORK_DIR "a56xnaxx" "system" "system/media/audio/ringtones" 0 0 755 "u:object_r:system_file:s0"
    SET_PROP "vendor" "ro.config.ringtone" "Galaxy_Bells.ogg"
    SET_PROP "vendor" "ro.config.notification_sound" "Brightline.ogg"
    SET_PROP "vendor" "ro.config.alarm_alert" "Morning_Xylophone.ogg"
    SET_PROP "vendor" "ro.config.media_sound" "Media_preview_Over_the_horizon.ogg"
    SET_PROP "vendor" "ro.config.ringtone_2" "Atomic_Bell.ogg"
    SET_PROP "vendor" "ro.config.notification_sound_2" "Three_Star.ogg"
fi
ADD_TO_WORK_DIR "pa2qxxx" "system" \
    "system/media/audio/ui/Media_preview_Over_the_horizon.ogg" 0 0 644 "u:object_r:system_file:s0"
APPLY_PATCH "system" "system/priv-app/SecSoundPicker/SecSoundPicker.apk" \
    "$MODPATH/brandsound/SecSoundPicker.apk/0001-Enable-SUPPORT_SAMSUNG_BRAND_SOUND_ONEUI_7.patch"
LOG_STEP_OUT

# Adaptive colour tone
LOG_STEP_IN "- Adding Adaptive colour tone feature"
ADD_TO_WORK_DIR "pa2qxxx" "system" \
    "system/etc/permissions/privapp-permissions-com.samsung.android.sead.xml" 0 0 644 "u:object_r:system_file:s0"
ADD_TO_WORK_DIR "pa2qxxx" "system" \
    "system/priv-app/EnvironmentAdaptiveDisplay/EnvironmentAdaptiveDisplay.apk" 0 0 644 "u:object_r:system_file:s0"
if $TARGET_LCD_SUPPORT_MDNIE_HW; then
    APPLY_PATCH "system" "system/framework/services.jar" \
        "$MODPATH/ead/services.jar/0001-Add-Adaptive-color-tone-feature.patch"
else
    APPLY_PATCH "system" "system/framework/services.jar" \
        "$MODPATH/ead_mdnie/services.jar/0001-Add-Adaptive-color-tone-feature.patch"
fi
SMALI_PATCH "system" "system/priv-app/SecSettings/SecSettings.apk" \
    "com/samsung/android/settings/display/controller/SecEADPreferenceController.smali" \
    "return" "getAvailabilityStatus()I" "0"
APPLY_PATCH "system" "system/priv-app/SettingsProvider/SettingsProvider.apk" \
    "$MODPATH/ead/SettingsProvider.apk/0001-Add-Adaptive-color-tone-feature.patch"

DECODE_APK "system_ext" "priv-app/SystemUI/SystemUI.apk"
SOURCE_FILE_ATTR="$(grep -F ".source" "$APKTOOL_DIR/system_ext/priv-app/SystemUI/SystemUI.apk/smali/base/packages/SystemUI/samsung/compose_qs/src/com/android/systemui/samsung/quicksetting/ui/tiles/MultiSIMPreferredPopupKt.smali" 2>/dev/null || echo "")"
if [ "$SOURCE_FILE_ATTR" ]; then
    SOURCE_FILE_ATTR="${SOURCE_FILE_ATTR//\./\\.}"
    SOURCE_FILE_ATTR="${SOURCE_FILE_ATTR//\"/\\\"}"
    SOURCE_FILE_ATTR="${SOURCE_FILE_ATTR//\//\\/}"
    LOG "- Replacing SourceFile attribute in /system_ext/priv-app/SystemUI/SystemUI.apk"
    find "$APKTOOL_DIR/system_ext/priv-app/SystemUI/SystemUI.apk" -type f -name "*.smali" -print0 \
        | xargs -0 -I "{}" -P "$(nproc)" sed -i "s/^\.source.*/\.source \"SourceFile\"/g" "{}"
fi
APPLY_PATCH "system_ext" "priv-app/SystemUI/SystemUI.apk" \
    "$MODPATH/ead/SystemUI.apk/0001-Add-Adaptive-color-tone-toggle.patch"
if [ "$SOURCE_FILE_ATTR" ]; then
    LOG "- Restoring original SourceFile attribute in /system_ext/priv-app/SystemUI/SystemUI.apk"
    find "$APKTOOL_DIR/system_ext/priv-app/SystemUI/SystemUI.apk" -type f -name "*.smali" -print0 \
        | xargs -0 -I "{}" -P "$(nproc)" sed -i "s/^\.source.*/$SOURCE_FILE_ATTR/g" "{}"
fi
LOG_STEP_OUT

# Set AI Version to 20253 (latest)
SET_FLOATING_FEATURE_CONFIG "SEC_FLOATING_FEATURE_COMMON_CONFIG_AI_VERSION" "20253"
SET_FLOATING_FEATURE_CONFIG "SEC_FLOATING_FEATURE_COMMON_DISABLE_NATIVE_AI" --delete

SMALI_PATCH "system" "system/framework/framework.jar" "smali_classes6/com/samsung/android/rune/CoreRune.smali" "return" "getAIVersion()I" "20253"

# Miscs
ADD_TO_WORK_DIR "b7sxxx" "system" "system/lib64/libC2paDps.camera.samsung.so" 0 0 644 "u:object_r:system_lib_file:s0"

LOG_STEP_IN "- Adding missing flagship apps and services"

# AI Wallpaper
ADD_TO_WORK_DIR "b7sxxx" "product" "priv-app/AiWallpaper/AiWallpaper.apk" 0 0 644 "u:object_r:system_file:s0"

# AI Core
ADD_TO_WORK_DIR "b7sxxx" "product" "priv-app/AICore/AICore.apk" 0 0 644 "u:object_r:system_file:s0"

# Android Glasses
ADD_TO_WORK_DIR "b7sxxx" "product" "priv-app/AndroidGlassesCore/AndroidGlassesCore.apk" 0 0 644 "u:object_r:system_file:s0"
ADD_TO_WORK_DIR "b7sxxx" "product" "etc/sysconfig/google_xr_projected.xml" 0 0 644 "u:object_r:system_file:s0"

# Tips
ADD_TO_WORK_DIR "b7sxxx" "system" "system/etc/default-permissions/default-permissions-com.samsung.android.app.tips.xml" 0 0 644 "u:object_r:system_file:s0"
ADD_TO_WORK_DIR "b7sxxx" "system" "system/etc/permissions/privapp-permissions-com.samsung.android.app.tips.xml" 0 0 644 "u:object_r:system_file:s0"
ADD_TO_WORK_DIR "b7sxxx" "system" "system/etc/permissions/signature-permissions-com.samsung.android.app.tips.xml" 0 0 644 "u:object_r:system_file:s0"
if ! grep -q 'com.samsung.android.app.tips' "$WORK_DIR/system/system/etc/sysconfig/allowed-system-preload-apps.xml" 2>/dev/null; then
    if [ -f "$WORK_DIR/system/system/etc/sysconfig/allowed-system-preload-apps.xml" ]; then
        sed -i "/<\/config>/d" "$WORK_DIR/system/system/etc/sysconfig/allowed-system-preload-apps.xml"
        echo "    <allowed-system-preload package=\"com.samsung.android.app.tips\"/>"  >> "$WORK_DIR/system/system/etc/sysconfig/allowed-system-preload-apps.xml"
        echo "</config>" >> "$WORK_DIR/system/system/etc/sysconfig/allowed-system-preload-apps.xml"
    fi
fi

# SketchBook
ADD_TO_WORK_DIR "b7sxxx" "system" "system/app/SketchBook/SketchBook.apk" 0 0 644 "u:object_r:system_file:s0"

# Live Effect Wallpaper
ADD_TO_WORK_DIR "b7sxxx" "system" "system/priv-app/LiveEffectService/LiveEffectService.apk" 0 0 644 "u:object_r:system_file:s0"
ADD_TO_WORK_DIR "b7sxxx" "system" "system/etc/permissions/privapp-permissions-com.samsung.android.liveeffectservice.xml" 0 0 644 "u:object_r:system_file:s0"

# AI-release SmartCapture
DELETE_FROM_WORK_DIR "system" "system/app/SmartCapture"
ADD_TO_WORK_DIR "b7sxxx" "system" "system/app/SmartCapture/SmartCapture.apk" 0 0 644 "u:object_r:system_file:s0"
ADD_TO_WORK_DIR "b7sxxx" "system" "system/lib64/libAuraRenderer.graphics.samsung.so" 0 0 644 "u:object_r:system_lib_file:s0"
ADD_TO_WORK_DIR "b7sxxx" "system" "system/lib64/libLttEngine.camera.samsung.so" 0 0 644 "u:object_r:system_lib_file:s0"
ADD_TO_WORK_DIR "b7sxxx" "system" "system/lib64/libLttAIEngines.camera.samsung.so" 0 0 644 "u:object_r:system_lib_file:s0"
if [ -f "$WORK_DIR/system/system/etc/public.libraries-camera.samsung.txt" ] && ! grep -q "libLttEngine.camera.samsung.so" "$WORK_DIR/system/system/etc/public.libraries-camera.samsung.txt"; then
    echo "libLttEngine.camera.samsung.so" >> "$WORK_DIR/system/system/etc/public.libraries-camera.samsung.txt"
fi

# Bixby Interpreter
ADD_TO_WORK_DIR "b7sxxx" "system" "system/priv-app/BixbyInterpreter/BixbyInterpreter.apk" 0 0 644 "u:object_r:system_file:s0"
ADD_TO_WORK_DIR "b7sxxx" "system" "system/etc/permissions/signature-permissions-com.samsung.android.app.interpreter.xml" 0 0 644 "u:object_r:system_file:s0"
ADD_TO_WORK_DIR "b7sxxx" "system" "system/etc/permissions/privapp-permissions-com.samsung.android.app.interpreter.xml" 0 0 644 "u:object_r:system_file:s0"
if [ ! "$(GET_FLOATING_FEATURE_CONFIG "SEC_FLOATING_FEATURE_AUDIO_CONFIG_INTERPRETER")" ]; then
    SET_FLOATING_FEATURE_CONFIG "SEC_FLOATING_FEATURE_AUDIO_CONFIG_INTERPRETER" "0"
fi

# Camera Sharing
ADD_TO_WORK_DIR "b7sxxx" "system" "system/etc/permissions/privapp-permissions-com.samsung.android.hwresourceshare.xml" 0 0 644 "u:object_r:system_file:s0"
ADD_TO_WORK_DIR "b7sxxx" "system" "system/etc/sysconfig/preinstalled-packages-com.samsung.android.hwresourceshare.xml" 0 0 644 "u:object_r:system_file:s0"
ADD_TO_WORK_DIR "b7sxxx" "system" "system/priv-app/HWResourceShare/HWResourceShare.apk" 0 0 644 "u:object_r:system_file:s0"

# AI-release PhotoEditor
DELETE_FROM_WORK_DIR "system" "system/priv-app/PhotoEditor_Full"
ADD_TO_WORK_DIR "b7sxxx" "system" "system/priv-app/PhotoEditor_AIFull/PhotoEditor_AIFull.apk" 0 0 644 "u:object_r:system_file:s0"
# Enable text-based create tab, part of 20261 Galaxy AI features
DECODE_APK "system" "system/priv-app/PhotoEditor_AIFull/PhotoEditor_AIFull.apk"
if [ -f "$APKTOOL_DIR/system/priv-app/PhotoEditor_AIFull/PhotoEditor_AIFull.apk/smali_classes4/q4/b.smali" ] || [ -f "$APKTOOL_DIR/system/priv-app/PhotoEditor_AIFull/PhotoEditor_AIFull.apk/smali/q4/b.smali" ]; then
    SMALI_PATCH "system" "system/priv-app/PhotoEditor_AIFull/PhotoEditor_AIFull.apk" "q4/b.smali" "return" "t()Z" "true"
elif [ -f "$APKTOOL_DIR/system/priv-app/PhotoEditor_AIFull/PhotoEditor_AIFull.apk/smali_classes4/K1/c.smali" ]; then
    SMALI_PATCH "system" "system/priv-app/PhotoEditor_AIFull/PhotoEditor_AIFull.apk" "smali_classes4/K1/c.smali" "replace" "D()V" "move-result v0" "const/16 v0, 0x4f25"
else
    PE_CLASS="$(grep -r "const/16 .*, 0x4f25" "$APKTOOL_DIR/system/priv-app/PhotoEditor_AIFull/PhotoEditor_AIFull.apk" 2>/dev/null | head -n1 | cut -d: -f1)"
    if [ "$PE_CLASS" ]; then
        LOG "- Enabling text-based create in $(basename "$PE_CLASS")"
        sed -i 's/const\/16 \(.*\), 0x4f25/const\/16 \1, 0x0/g' "$PE_CLASS"
    fi
fi

LOG_STEP_OUT

# Media Context Analyzer and VideoClassifier (V2)
LOG_STEP_IN "- Adding Media Context Analyzer feature"
ADD_TO_WORK_DIR "a56xnaxx" "system" "system/etc/mediacontextanalyzer/Detection.tflite" 0 0 644 "u:object_r:system_file:s0"
ADD_TO_WORK_DIR "a56xnaxx" "system" "system/etc/mediacontextanalyzer/human-pet-det_SR-V131.tflite" 0 0 644 "u:object_r:system_file:s0"
ADD_TO_WORK_DIR "a56xnaxx" "system" "system/etc/mediacontextanalyzer/human-pet-pose_SR-V200.tflite" 0 0 644 "u:object_r:system_file:s0"
ADD_TO_WORK_DIR "a56xnaxx" "system" "system/etc/mediacontextanalyzer/Keyword.tflite" 0 0 644 "u:object_r:system_file:s0"
ADD_TO_WORK_DIR "a56xnaxx" "system" "system/etc/mediacontextanalyzer/keyword-classification_SR-V031.tflite" 0 0 644 "u:object_r:system_file:s0"
EVAL "ln -s \"human-pet-pose_SR-V200.tflite\" \"$WORK_DIR/system/system/etc/mediacontextanalyzer/Pose.tflite\""
SET_METADATA "system" "system/etc/mediacontextanalyzer/Pose.tflite" 0 0 644 "u:object_r:system_file:s0"
ADD_TO_WORK_DIR "a56xnaxx" "system" "system/lib64/libcontextanalyzer_jni.media.samsung.so" 0 0 644 "u:object_r:system_lib_file:s0"
ADD_TO_WORK_DIR "a56xnaxx" "system" "system/lib64/libmediacontextanalyzer.so" 0 0 644 "u:object_r:system_lib_file:s0"
ADD_TO_WORK_DIR "a56xnaxx" "system" "system/lib64/libvideo-highlight-arm64-v8a.so" 0 0 644 "u:object_r:system_lib_file:s0"
SET_FLOATING_FEATURE_CONFIG "SEC_FLOATING_FEATURE_MMFW_CONFIG_MEDIA_CONTEXT_ANALYZER_CORE" "GPU"
SET_FLOATING_FEATURE_CONFIG "SEC_FLOATING_FEATURE_MMFW_SUPPORT_MEDIA_CONTEXT_ANALYZER" "TRUE"
ADD_TO_WORK_DIR "b7sxxx" "system" "system/lib64/libVideoClassifier.camera.samsung.so" 0 0 644 "u:object_r:system_lib_file:s0"
if [ -f "$WORK_DIR/system/system/etc/public.libraries-camera.samsung.txt" ] && ! grep -q "libVideoClassifier.camera.samsung.so" "$WORK_DIR/system/system/etc/public.libraries-camera.samsung.txt"; then
    echo "libVideoClassifier.camera.samsung.so" >> "$WORK_DIR/system/system/etc/public.libraries-camera.samsung.txt"
fi
SET_FLOATING_FEATURE_CONFIG "SEC_FLOATING_FEATURE_CAMERA_CONFIG_ACTION_CLASSIFIER" "1,0"
LOG_STEP_OUT

# Audio eraser
# Requires SEC_PRODUCT_FEATURE_MMFW_SUPPORT_MEDIA_CONTEXT_ANALYZER
LOG_STEP_IN "- Adding Audio eraser feature"
ADD_TO_WORK_DIR "pa2qxxx" "system" "system/etc/audio_ae_intervals.conf" 0 0 644 "u:object_r:system_file:s0"
ADD_TO_WORK_DIR "pa2qxxx" "system" "system/etc/fastScanner.tflite" 0 0 644 "u:object_r:system_file:s0"
ADD_TO_WORK_DIR "pa2qxxx" "system" "system/etc/mss_v0.13.0_4ch.sorione" 0 0 644 "u:object_r:system_file:s0"
ADD_TO_WORK_DIR "pa2qxxx" "system" "system/etc/public.libraries-audio.samsung.txt" 0 0 644 "u:object_r:system_file:s0"
ADD_TO_WORK_DIR "pa2qxxx" "system" "system/lib64/libmediasndk.mediacore.samsung.so" 0 0 644 "u:object_r:system_lib_file:s0"
ADD_TO_WORK_DIR "pa2qxxx" "system" "system/lib64/libmediasndk.so" 0 0 644 "u:object_r:system_lib_file:s0"
ADD_TO_WORK_DIR "pa2qxxx" "system" "system/lib64/libmultisourceseparator.audio.samsung.so" 0 0 644 "u:object_r:system_lib_file:s0"
ADD_TO_WORK_DIR "pa2qxxx" "system" "system/lib64/libmultisourceseparator.so" 0 0 644 "u:object_r:system_lib_file:s0"
ADD_TO_WORK_DIR "pa2qxxx" "system" "system/lib64/libsbs.so" 0 0 644 "u:object_r:system_lib_file:s0"
ADD_TO_WORK_DIR "pa2qxxx" "system" "system/lib64/libtensorflowlite_gpu_delegate.so" 0 0 644 "u:object_r:system_lib_file:s0"
ADD_TO_WORK_DIR "gts11xx" "system" "system/lib64/libveframework.videoeditor.samsung.so" 0 0 644 "u:object_r:system_lib_file:s0"
SET_FLOATING_FEATURE_CONFIG "SEC_FLOATING_FEATURE_AUDIO_CONFIG_MULTISOURCE_SEPARATOR" "{FastScanning_6, SourceSeparator_4, Version_1.3.0}"
LOG_STEP_OUT

# Now brief
# Requires SEC_FLOATING_FEATURE_COMMON_CONFIG_AI_VERSION >= 20251
# and SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_PERSONALIZED_DATA_CORE
# and SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_AI_BRIEF_FOR_UT
LOG_STEP_IN "- Adding Now brief feature"
ADD_TO_WORK_DIR "pa2qxxx" "system" \
    "system/etc/default-permissions/default-permissions-com.samsung.android.app.moments.xml" 0 0 644 "u:object_r:system_file:s0"
ADD_TO_WORK_DIR "pa2qxxx" "system" \
    "system/etc/permissions/privapp-permissions-com.samsung.android.app.moments.xml" 0 0 644 "u:object_r:system_file:s0"
ADD_TO_WORK_DIR "pa2qxxx" "system" \
    "system/etc/sysconfig/moments.xml" 0 0 644 "u:object_r:system_file:s0"
ADD_TO_WORK_DIR "pa2qxxx" "system" "system/priv-app/Moments/Moments.apk" 0 0 644 "u:object_r:system_file:s0"
SET_FLOATING_FEATURE_CONFIG "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_PERSONALIZED_DATA_CORE" "TRUE"
SET_FLOATING_FEATURE_CONFIG "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_AI_BRIEF_FOR_UT" "TRUE"
LOG_STEP_OUT

# Media Search
LOG_STEP_IN "- Adding Media Search feature"
ADD_TO_WORK_DIR "pa2qxxx" "system" \
    "system/etc/default-permissions/default-permissions-com.samsung.mediasearch.xml" 0 0 644 "u:object_r:system_file:s0"
ADD_TO_WORK_DIR "pa2qxxx" "system" \
    "system/etc/permissions/privapp-permissions-com.samsung.mediasearch.xml" 0 0 644 "u:object_r:system_file:s0"
ADD_TO_WORK_DIR "pa2qxxx" "system" \
    "system/priv-app/MediaSearch/MediaSearch.apk" 0 0 644 "u:object_r:system_file:s0"
SET_FLOATING_FEATURE_CONFIG "SEC_FLOATING_FEATURE_MSCH_SUPPORT_NLSEARCH" "TRUE"
LOG_STEP_OUT

# Pet + Face 2-in-1 Clustering
LOG_STEP_IN "- Adding Face and Pet Cluster feature"
ADD_TO_WORK_DIR "b7sxxx" "system" "system/etc/default-permissions/default-permissions-com.samsung.petservice.xml" 0 0 644 "u:object_r:system_file:s0"
ADD_TO_WORK_DIR "b7sxxx" "system" "system/etc/permissions/privapp-permissions-com.samsung.petservice.xml" 0 0 644 "u:object_r:system_file:s0"
ADD_TO_WORK_DIR "b7sxxx" "system" "system/priv-app/PetService/PetService.apk" 0 0 644 "u:object_r:system_file:s0"
if [ -d "$WORK_DIR/system/system/saiv/face/cluster_pb" ]; then
    DELETE_FROM_WORK_DIR "system" "system/saiv/face/cluster_pb"
fi
ADD_TO_WORK_DIR "b7sxxx" "system" "system/saiv/face/cluster_pb" 0 0 755 "u:object_r:system_file:s0"
DELETE_FROM_WORK_DIR "system" "system/lib64/libsaiv_HprFace_cmh_support_jni.camera.samsung.so"
DELETE_FROM_WORK_DIR "system" "system/lib64/libHpr_RecFace_dl_v1.0.camera.samsung.so"
ADD_TO_WORK_DIR "b7sxxx" "system" "system/lib64/libFace_Landmark_Engine.camera.samsung.so" 0 0 644 "u:object_r:system_lib_file:s0"
ADD_TO_WORK_DIR "b7sxxx" "system" "system/lib64/libFaceClustering.camera.samsung.so" 0 0 644 "u:object_r:system_lib_file:s0"
if [ -f "$WORK_DIR/system/system/etc/public.libraries-camera.samsung.txt" ]; then
    if ! grep -q "libFace_Landmark_Engine.camera.samsung.so" "$WORK_DIR/system/system/etc/public.libraries-camera.samsung.txt"; then
        echo "libFace_Landmark_Engine.camera.samsung.so" >> "$WORK_DIR/system/system/etc/public.libraries-camera.samsung.txt"
    fi
    if ! grep -q "libFaceClustering.camera.samsung.so" "$WORK_DIR/system/system/etc/public.libraries-camera.samsung.txt"; then
        echo "libFaceClustering.camera.samsung.so" >> "$WORK_DIR/system/system/etc/public.libraries-camera.samsung.txt"
    fi
fi
SET_FLOATING_FEATURE_CONFIG "SEC_FLOATING_FEATURE_GALLERY_CONFIG_FACE_CLUSTER_VERSION" "SR_V7"
SET_FLOATING_FEATURE_CONFIG "SEC_FLOATING_FEATURE_GALLERY_CONFIG_PET_CLUSTER_VERSION" "V1101"
LOG_STEP_OUT

# Flagship Image Tagger algorithm
LOG_STEP_IN "- Adding flagship Image Tagger feature"
ADD_TO_WORK_DIR "gts9fexx" "system" "system/lib64/libImageTagger.camera.samsung.so" 0 0 644 "u:object_r:system_lib_file:s0"
if [ -f "$WORK_DIR/system/system/etc/public.libraries-camera.samsung.txt" ] && ! grep -q "libImageTagger.camera.samsung.so" "$WORK_DIR/system/system/etc/public.libraries-camera.samsung.txt"; then
    echo "libImageTagger.camera.samsung.so" >> "$WORK_DIR/system/system/etc/public.libraries-camera.samsung.txt"
fi
if [ -d "$WORK_DIR/vendor/saiv/image_understanding/db/aig_classifier" ]; then
    DELETE_FROM_WORK_DIR "vendor" "saiv/image_understanding/db/aig_classifier"
fi
ADD_TO_WORK_DIR "gts9fexx" "vendor" "saiv/image_understanding/db/aig_classifier" 0 2000 755 "u:object_r:vendor_snap_file:s0"
if [ -d "$WORK_DIR/vendor/saiv/image_understanding/db/aig_detector" ]; then
    DELETE_FROM_WORK_DIR "vendor" "saiv/image_understanding/db/aig_detector"
fi
if [ -d "$WORK_DIR/vendor/saiv/image_understanding/db/aig_document_classifier" ]; then
    DELETE_FROM_WORK_DIR "vendor" "saiv/image_understanding/db/aig_document_classifier"
fi
ADD_TO_WORK_DIR "gts9fexx" "vendor" "saiv/image_understanding/db/aig_document_classifier" 0 2000 755 "u:object_r:vendor_snap_file:s0"
if [ -d "$WORK_DIR/vendor/saiv/image_understanding/db/aig_document_detector" ]; then
    DELETE_FROM_WORK_DIR "vendor" "saiv/image_understanding/db/aig_document_detector"
fi
ADD_TO_WORK_DIR "gts9fexx" "vendor" "saiv/image_understanding/db/aig_document_detector" 0 2000 755 "u:object_r:vendor_snap_file:s0"
if [ -d "$WORK_DIR/vendor/saiv/image_understanding/db/srr_interaction" ]; then
    DELETE_FROM_WORK_DIR "vendor" "saiv/image_understanding/db/srr_interaction"
fi
SET_FLOATING_FEATURE_CONFIG "SEC_FLOATING_FEATURE_GALLERY_CONFIG_IMAGE_TAGGER_VERSION" "V901"
LOG_STEP_OUT

# Flagship Text OCR
LOG_STEP_IN "- Adding flagship Text Recognition"
ADD_TO_WORK_DIR "b7sxxx" "system" "system/lib64/libStride.camera.samsung.so" 0 0 644 "u:object_r:system_lib_file:s0"
ADD_TO_WORK_DIR "b7sxxx" "system" "system/lib64/libStrideTensorflowLite.camera.samsung.so" 0 0 644 "u:object_r:system_lib_file:s0"
if [ -f "$WORK_DIR/system/system/etc/public.libraries-camera.samsung.txt" ]; then
    if ! grep -q "libStrideTensorflowLite.camera.samsung.so" "$WORK_DIR/system/system/etc/public.libraries-camera.samsung.txt"; then
        echo "libStrideTensorflowLite.camera.samsung.so" >> "$WORK_DIR/system/system/etc/public.libraries-camera.samsung.txt"
    fi
    if ! grep -q "libStride.camera.samsung.so" "$WORK_DIR/system/system/etc/public.libraries-camera.samsung.txt"; then
        echo "libStride.camera.samsung.so" >> "$WORK_DIR/system/system/etc/public.libraries-camera.samsung.txt"
    fi
fi
if [ -d "$WORK_DIR/system/system/saiv/textrecognition" ]; then
    DELETE_FROM_WORK_DIR "system" "system/saiv/textrecognition"
fi
ADD_TO_WORK_DIR "b7sxxx" "system" "system/saiv/textrecognition" 0 0 755 "u:object_r:system_file:s0"
if [ -d "$WORK_DIR/system/system/saiv/str" ]; then
    DELETE_FROM_WORK_DIR "system" "system/saiv/str"
fi
ADD_TO_WORK_DIR "b7sxxx" "system" "system/saiv/str" 0 0 755 "u:object_r:system_file:s0"
SET_FLOATING_FEATURE_CONFIG "SEC_FLOATING_FEATURE_CAMERA_CONFIG_STRIDE_OCR_VERSION" "V2"
LOG_STEP_OUT

# ARDoodle and Pet Detection
LOG_STEP_IN "- Adding enhanced AR Doodle"
ADD_TO_WORK_DIR "b7sxxx" "system" "system/lib64/lib_pet_detection.arcsoft.so" 0 0 644 "u:object_r:system_lib_file:s0"
if [ -f "$WORK_DIR/system/system/etc/public.libraries-arcsoft.txt" ] && ! grep -q "lib_pet_detection.arcsoft.so" "$WORK_DIR/system/system/etc/public.libraries-arcsoft.txt"; then
    echo "lib_pet_detection.arcsoft.so" >> "$WORK_DIR/system/system/etc/public.libraries-arcsoft.txt"
fi
ADD_TO_WORK_DIR "b7sxxx" "system" "system/etc/ardoodle/pickingsegmentation.tflite" 0 0 644 "u:object_r:system_lib_file:s0"
SET_FLOATING_FEATURE_CONFIG "SEC_FLOATING_FEATURE_SAIV_CONFIG_ARDOODLE_LIB" "PET_DETECTION,IMG_PICKING"
LOG_STEP_OUT

# Flagship MyFilter
LOG_STEP_IN "- Adding flagship Camera Filters support"
DELETE_FROM_WORK_DIR "system" "system/lib64/libtensorflowLite.myfilter.camera.samsung.so"
DELETE_FROM_WORK_DIR "system" "system/lib64/libtensorflowlite_inference_api.myfilter.camera.samsung.so"
ADD_TO_WORK_DIR "b7sxxx" "system" "system/lib64/libMyFilter.camera.samsung.so" 0 0 644 "u:object_r:system_lib_file:s0"
if [ -d "$WORK_DIR/cameradata/myfilter" ]; then
    DELETE_FROM_WORK_DIR "system" "system/cameradata/myfilter"
fi
if [ -d "$WORK_DIR/cameradata/preloadfilters" ]; then
    DELETE_FROM_WORK_DIR "system" "system/cameradata/preloadfilters"
fi
ADD_TO_WORK_DIR "b7sxxx" "system" "system/cameradata/myfilter" 0 0 755 "u:object_r:system_lib_file:s0"
ADD_TO_WORK_DIR "b7sxxx" "system" "system/cameradata/preloadfilters" 0 0 755 "u:object_r:system_lib_file:s0"
SET_FLOATING_FEATURE_CONFIG "SEC_FLOATING_FEATURE_CAMERA_CONFIG_MYFILTER" "1,3,4"
LOG_STEP_OUT

# Misc Floating Feature
LOG_STEP_IN "- Enabling Misc features"
SET_FLOATING_FEATURE_CONFIG "SEC_FLOATING_FEATURE_SAIV_SUPPORT_3DPHOTO" "TRUE"
SET_FLOATING_FEATURE_CONFIG "SEC_FLOATING_FEATURE_CAMERA_SUPPORT_PRIVACY_TOGGLE" "TRUE"
SET_FLOATING_FEATURE_CONFIG "SEC_FLOATING_FEATURE_GALLERY_SUPPORT_SPC_LOCATION_POI" "TRUE"
SET_FLOATING_FEATURE_CONFIG "SEC_FLOATING_FEATURE_LAUNCHER_CONFIG_ANIMATION_TYPE" "HighEnd"
SET_FLOATING_FEATURE_CONFIG "SEC_FLOATING_FEATURE_VISION_CONFIG_IMAGE_TRANSLATION_OVERLAY_VERSION" "5"
SET_FLOATING_FEATURE_CONFIG "SEC_FLOATING_FEATURE_CAMERA_SUPPORT_CONTROLLING_WATCH" "TRUE"
SET_FLOATING_FEATURE_CONFIG "SEC_FLOATING_FEATURE_SMART_VIEW_APP_CAST_SUPPORTED" "TRUE"
SET_FLOATING_FEATURE_CONFIG "SEC_FLOATING_FEATURE_VISION_SUPPORT_AI_MY_FAVORITE_CONTENTS" "TRUE"
SET_FLOATING_FEATURE_CONFIG "SEC_FLOATING_FEATURE_SYSTEMUI_CONFIG_EDGELIGHTING_FRAME_EFFECT" "frame_effect"
if [[ "$(GET_FLOATING_FEATURE_CONFIG "SEC_FLOATING_FEATURE_VOICERECORDER_CONFIG_DEF_MODE")" != *"voicememo"* ]]; then
  SET_FLOATING_FEATURE_CONFIG "SEC_FLOATING_FEATURE_VOICERECORDER_CONFIG_DEF_MODE" "$(GET_FLOATING_FEATURE_CONFIG "SEC_FLOATING_FEATURE_VOICERECORDER_CONFIG_DEF_MODE"),voicememo"
fi
LOG_STEP_OUT

# Semantic search
# Requires SEC_FLOATING_FEATURE_COMMON_CONFIG_AI_VERSION >= 20251
LOG_STEP_IN "- Adding Semantic search feature"
ADD_TO_WORK_DIR "pa2qxxx" "system" \
    "system/priv-app/SemanticSearchCore/SemanticSearchCore.apk" 0 0 644 "u:object_r:system_file:s0"
DECODE_APK "system" "system/priv-app/SecSettingsIntelligence/SecSettingsIntelligence.apk"
LOG "- Enabling Semantic search feature in /system/system/priv-app/SecSettingsIntelligence/SecSettingsIntelligence.apk"
EVAL "mkdir -p \"$APKTOOL_DIR/system/priv-app/SecSettingsIntelligence/SecSettingsIntelligence.apk/res/raw\" && cp -a \"$MODPATH/semanticsearch/SecSettingsIntelligence.apk/res/raw/\"* \"$APKTOOL_DIR/system/priv-app/SecSettingsIntelligence/SecSettingsIntelligence.apk/res/raw\""
SMALI_PATCH "system" "system/priv-app/SecSettingsIntelligence/SecSettingsIntelligence.apk" \
    "smali_classes2/com/samsung/android/settings/intelligence/Rune.smali" "return" "getSemanticSearchVersion()I" "400"
SMALI_PATCH "system" "system/priv-app/SecSettingsIntelligence/SecSettingsIntelligence.apk" \
    "smali_classes2/com/samsung/android/settings/intelligence/Rune.smali" "return" "getSupportSearchInAppAssist()Z" "true"
SMALI_PATCH "system" "system/priv-app/SecSettingsIntelligence/SecSettingsIntelligence.apk" \
    "smali_classes2/com/samsung/android/settings/intelligence/Utils.smali" "return" "isNPUVersion()Z" "false"
LOG_STEP_OUT

# Game Booster
LOG "- Downloading latest Game Booster app"
DOWNLOAD_FILE "$(GET_GALAXY_STORE_DOWNLOAD_URL "com.samsung.android.game.gametools")" \
    "$WORK_DIR/system/system/priv-app/GameTools_Dream/GameTools_Dream.apk"

# Pet Detector in Galaxy AI
LOG_STEP_IN "- Adding Pet Detector support in Galaxy AI features"
if [ -d "$WORK_DIR/vendor/etc/petdetector/studio_pd" ]; then
    DELETE_FROM_WORK_DIR "vendor" "etc/petdetector/studio_pd"
fi
ADD_TO_WORK_DIR "gts11xx" "vendor" "etc/petdetector/studio_pd/config_thresholds.json" 0 0 644 "u:object_r:vendor_configs_file:s0"
ADD_TO_WORK_DIR "gts11xx" "vendor" "etc/petdetector/studio_pd/studio_pd_cnn.info" 0 0 644 "u:object_r:vendor_configs_file:s0"
ADD_TO_WORK_DIR "gts11xx" "vendor" "etc/petdetector/studio_pd/studio_pd_cnn.tflite" 0 0 644 "u:object_r:vendor_configs_file:s0"
LOG_STEP_OUT
