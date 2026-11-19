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
        "$MODPATH/dressroom/DressRoom.apk/0001-Bypass-AICore-weather-feature-check.patch"
    
    REZOSS_DRESSROOM_PATCH=$(mktemp /tmp/rezoss-dressroom-fonts.XXXXXX.patch 2>/dev/null || mktemp)
    if python3 "$MODPATH/dressroom/resolve_font_patch.py" \
        "$APKTOOL_DIR/system/priv-app/DressRoom/DressRoom.apk" \
        "$MODPATH/dressroom/DressRoom.apk/0002-Expose-UN1CA-selected-fonts-to-lockscreen-picker.patch" \
        > "$REZOSS_DRESSROOM_PATCH"; then
        APPLY_PATCH "system" "system/priv-app/DressRoom/DressRoom.apk" "$REZOSS_DRESSROOM_PATCH"
    else
        LOGW "DressRoom font patch dynamic resolution failed; attempting fallback"
        APPLY_PATCH "system" "system/priv-app/DressRoom/DressRoom.apk" \
            "$MODPATH/dressroom/DressRoom.apk/0002-Expose-UN1CA-selected-fonts-to-lockscreen-picker.patch" || true
    fi
    rm -f "$REZOSS_DRESSROOM_PATCH"

    APPLY_PATCH "system" "system/priv-app/DressRoom/DressRoom.apk" \
        "$MODPATH/dressroom/DressRoom.apk/0003-Add-clock-height-and-widget-size-controls.patch"
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
# S26U Galaxy AI, Now Brief and Now Nudge floating feature requirements
SET_FLOATING_FEATURE_CONFIG "SEC_FLOATING_FEATURE_COMMON_CONFIG_AI_VERSION" "20263"
SET_FLOATING_FEATURE_CONFIG "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_NOW_NUDGE_VERSION" "2"
SET_FLOATING_FEATURE_CONFIG "SEC_FLOATING_FEATURE_GENAI_CONFIG_LLM_VERSION" "0.81"
SET_FLOATING_FEATURE_CONFIG "SEC_FLOATING_FEATURE_GENAI_SUPPORT_OFFLINE_LANGUAGEMODEL" "TRUE"
SET_FLOATING_FEATURE_CONFIG "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_PERSONALIZED_DATA_CORE" "TRUE"
SET_FLOATING_FEATURE_CONFIG "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_AI_BRIEF_FOR_UT" "TRUE"

if [ -d "$MODPATH/system/priv-app/SamsungSmartSuggestions" ]; then
    LOG "- Installing Galaxy AI SmartSuggestions donor APK"
    ADD_TO_WORK_DIR "$MODPATH" "system" "system/priv-app/SamsungSmartSuggestions/SamsungSmartSuggestions.apk" 0 0 644 "u:object_r:system_file:s0"
fi
for scs_xml in \
    "system/etc/sysconfig/samsungsmartsuggestions.xml" \
    "system/etc/sysconfig/samsungintellivoiceservice.xml" \
    "system/etc/sysconfig/preinstalled-packages-com.samsung.android.scs.xml" \
    "system/etc/sysconfig/rezoss-ai-associations.xml" \
    "system/etc/default-permissions/default-permissions-com.samsung.android.scs.xml" \
    "system/etc/permissions/privapp-permissions-com.samsung.android.scs.xml" \
    "system/etc/permissions/signature-permissions-com.samsung.android.scs.xml"; do
    if [ -f "$MODPATH/$scs_xml" ]; then
        ADD_TO_WORK_DIR "$MODPATH" "system" "$scs_xml" 0 0 644 "u:object_r:system_file:s0"
    fi
done

if [ -f "$WORK_DIR/system/system/priv-app/SamsungSmartSuggestions/SamsungSmartSuggestions.apk" ]; then
    LOG "- Patching SamsungSmartSuggestions for Now Nudge and extended messengers"
    SS_PATCHES=(
        "0010-China-SmartSuggestions-compatibility.patch"
        "0011-Enable-Netflix-custom-card-helpers-and-forced-skills.patch"
        "0012-Bind-event-travel-custom-card-sources.patch"
        "0013-Allow-calendar-travel-custom-card-prompts.patch"
        "0025-Remove-Custom-Card-category-limit.patch"
        "0014-Allow-Now-Brief-recall-calendar-reminder-fallback.patch"
        "0015-Force-Now-Brief-non-empty-fallback.patch"
        "0016-Allow-more-Now-Nudge-messenger-packages.patch"
        "0017-Preserve-Now-Nudge-pass-package-message.patch"
        "0018-Route-notification-assistant-requests-to-Now-Nudge.patch"
        "0019-Log-Now-Nudge-assistant-request-extra-keys.patch"
        "0020-Route-Now-Nudge-replies-through-UN1CA-Qwen-provider.patch"
        "0026-Connect-in-app-and-notification-replies-to-RezossAI.patch"
        "0027-Preserve-WhatsApp-conversation-nudge-on-unknown-autofill.patch"
    )
    for p in "${SS_PATCHES[@]}"; do
        PATCH_FILE="$MODPATH/smartsuggestions/SamsungSmartSuggestions.apk/$p"
        if [ -f "$PATCH_FILE" ]; then
            APPLY_PATCH "system" "system/priv-app/SamsungSmartSuggestions/SamsungSmartSuggestions.apk" "$PATCH_FILE"
        fi
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

# =============================================================================
# 8. Experimental Horizontal Lock (Native EIS Horizon Adapter)
# =============================================================================
if [ -f "$MODPATH/horizontal-lock/install.sh" ]; then
    . "$MODPATH/horizontal-lock/install.sh" || true
fi

LOG_STEP_OUT
return 0
