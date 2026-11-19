#!/usr/bin/env bash
# Rezoss Enhancements & Galaxy AI Suite for UN1CA
# SPDX-License-Identifier: GPL-3.0-or-later
SKIPUNZIP=1

LOG_STEP_IN "- Applying Rezoss Enhancements & Galaxy AI Suite"

# =============================================================================
# 1. Photo Ambient (Weather) Wallpaper & Lockscreen Typography
# =============================================================================
if [ -f "$WORK_DIR/system/system/priv-app/DressRoom/DressRoom.apk" ]; then
    LOG "- Patching DressRoom for Photo Ambient (Weather) Wallpaper and typography"
    APPLY_PATCH "system" "system/priv-app/DressRoom/DressRoom.apk" \
        "$MODPATH/dressroom/DressRoom.apk/0001-Bypass-AICore-weather-feature-check.patch" || true
    APPLY_PATCH "system" "system/priv-app/DressRoom/DressRoom.apk" \
        "$MODPATH/dressroom/DressRoom.apk/0002-Expose-UN1CA-selected-fonts-to-lockscreen-picker.patch" || true
    APPLY_PATCH "system" "system/priv-app/DressRoom/DressRoom.apk" \
        "$MODPATH/dressroom/DressRoom.apk/0003-Add-clock-height-and-widget-size-controls.patch" || true
fi

if [ -f "$WORK_DIR/system/system/priv-app/SamsungAiCore/SamsungAiCore.apk" ]; then
    LOG "- Guarding SamsungAiCore wallpaper pipeline"
    APPLY_PATCH "system" "system/priv-app/SamsungAiCore/SamsungAiCore.apk" \
        "$MODPATH/aicore/SamsungAiCore.apk/0003-Disable-crashing-wallpaper-pipeline.patch" || true
fi

# =============================================================================
# 2. Cloud Galaxy AI Suite (Generative Edit, Sketch to Image, Portrait Studio)
# =============================================================================
VCC_APK=""
if [ -f "$WORK_DIR/system/system/app/VisualCloudCore/VisualCloudCore.apk" ]; then
    VCC_APK="system/app/VisualCloudCore/VisualCloudCore.apk"
elif [ -f "$WORK_DIR/system/system/priv-app/VisualCloudCore/VisualCloudCore.apk" ]; then
    VCC_APK="system/priv-app/VisualCloudCore/VisualCloudCore.apk"
fi
if [ -n "$VCC_APK" ]; then
    LOG "- Patching VisualCloudCore for Cloud Galaxy AI features"
    APPLY_PATCH "system" "$VCC_APK" \
        "$MODPATH/visualcloudcore/VisualCloudCore.apk/0001-Use-S25-Ultra-model-for-stub-update-check.patch" || true
fi

# =============================================================================
# 3. Now Brief & Voice Summaries (Samsung IntelliVoice Services)
# =============================================================================
if [ -f "$WORK_DIR/system/system/priv-app/SamsungIntelliVoiceServices/SamsungIntelliVoiceServices.apk" ]; then
    LOG "- Patching SamsungIntelliVoiceServices for Now Brief and custom cards"
    APPLY_PATCH "system" "system/priv-app/SamsungIntelliVoiceServices/SamsungIntelliVoiceServices.apk" \
        "$MODPATH/sivs/SamsungIntelliVoiceServices.apk/0001-Use-S26U-device-model-for-SCS-requests.patch" || true
fi

# =============================================================================
# 4. Offline Live Translate & Interpreter Language Packs (nmt-preload)
# =============================================================================
NMT_TARGET_PRELOAD="$WORK_DIR/system/system/etc/sysconfig/allowed-system-preload-apps.xml"
if [ -f "$NMT_TARGET_PRELOAD" ] && [ -d "$MODPATH/nmt-preload" ]; then
    LOG "- Registering NMT offline language packs for Live Translate & Interpreter"
    for NMT_LANG in enar enesus enfil enid enko ennl enpt enro enru ensv entr enzh; do
        PKG="com.samsung.android.nmt.apps.t2t.languagepack.$NMT_LANG"
        PRELOAD_BLOCK="$MODPATH/nmt-preload/$NMT_LANG.txt"
        if [ -f "$PRELOAD_BLOCK" ] && ! grep -Fq "name='$PKG'" "$NMT_TARGET_PRELOAD"; then
            echo "" >> "$NMT_TARGET_PRELOAD"
            cat "$PRELOAD_BLOCK" >> "$NMT_TARGET_PRELOAD"
        fi
    done
fi

# =============================================================================
# 5. SmartSuggestions, Now Nudge & Reply Routing
# =============================================================================
if [ -f "$WORK_DIR/system/system/priv-app/SamsungSmartSuggestions/SamsungSmartSuggestions.apk" ]; then
    LOG "- Patching SamsungSmartSuggestions for Now Nudge and extended messengers"
    for p in "$MODPATH/smartsuggestions/SamsungSmartSuggestions.apk/"*.patch; do
        [ -f "$p" ] || continue
        APPLY_PATCH "system" "system/priv-app/SamsungSmartSuggestions/SamsungSmartSuggestions.apk" "$p" || true
    done
fi

# =============================================================================
# 6. Qwen LLM Provider & Local Summary Service
# =============================================================================
if [ -d "$MODPATH/qwen-llm/system/priv-app/QWEN_LLM_rezoss_stub" ]; then
    LOG "- Installing Qwen LLM provider engine stub"
    ADD_TO_WORK_DIR "$MODPATH/qwen-llm" "system" "system/priv-app/QWEN_LLM_rezoss_stub" 0 0 755 "u:object_r:system_file:s0"
fi

if [ -d "$MODPATH/local-summary-service/system" ]; then
    LOG "- Installing Local Summary Service"
    ADD_TO_WORK_DIR "$MODPATH/local-summary-service" "system" "." 0 0 755 "u:object_r:system_file:s0"
fi

# =============================================================================
# 7. Scheduled Power On / Off
# =============================================================================
if [ -f "$MODPATH/scheduled-power-on/integrate.sh" ] && [ ! -f "$MODPATH/scheduled-power-on/disable" ]; then
    source "$MODPATH/scheduled-power-on/integrate.sh" || true
fi

LOG_STEP_OUT
return 0
