# Show battery regulatory info in Settings
# Requires SEM_BATTERY_PROPERTY_IC_AUTHENTICATION_RESULT support
if [ "$(GET_FLOATING_FEATURE_CONFIG "SEC_FLOATING_FEATURE_BATTERY_SUPPORT_BSOH_SETTINGS")" ]; then
    SET_FLOATING_FEATURE_CONFIG "SEC_FLOATING_FEATURE_BATTERY_SUPPORT_BSOH_SETTINGS" --delete
fi
SET_FLOATING_FEATURE_CONFIG "SEC_FLOATING_FEATURE_SETTINGS_ENABLE_EU_BATTERY_REGULATORY" "TRUE"

SMALI_PATCH "system" "system/framework/framework.jar" \
    "smali/android/app/Instrumentation.smali" "replace" \
    'newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;' \
    'invoke-virtual {p0, p1}, Landroid/app/Application;->attach(Landroid/content/Context;)V' \
    '    invoke-virtual {p0, p1}, Landroid/app/Application;->attach(Landroid/content/Context;)V\n\n    invoke-static {p1}, Lio/mesalabs/unica/SamsungPropsHooks;->init(Landroid/content/Context;)V' \
    > /dev/null
SMALI_PATCH "system" "system/framework/framework.jar" \
    "smali/android/app/Instrumentation.smali" "replace" \
    'newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;' \
    'invoke-virtual {p0, p3}, Landroid/app/Application;->attach(Landroid/content/Context;)V' \
    '    invoke-virtual {p0, p3}, Landroid/app/Application;->attach(Landroid/content/Context;)V\n\n    invoke-static {p3}, Lio/mesalabs/unica/SamsungPropsHooks;->init(Landroid/content/Context;)V' \
    > /dev/null

DECODE_APK "system" "system/priv-app/SecSettings/SecSettings.apk"

# Disable stock OTA references
if [ ! -f "$WORK_DIR/system/system/priv-app/ChoiDujour/ChoiDujour.apk" ]; then
    SW_UTILS_FILE="$(find "$APKTOOL_DIR/system/priv-app/SecSettings/SecSettings.apk" -type f -name "SoftwareUpdateUtils.smali" 2>/dev/null | head -n 1)"
    if [ -n "$SW_UTILS_FILE" ] && [ -f "$SW_UTILS_FILE" ] && grep -q "isOTAUpgradeAllowed" "$SW_UTILS_FILE"; then
        SW_UTILS="${SW_UTILS_FILE#"$APKTOOL_DIR/system/priv-app/SecSettings/SecSettings.apk/"}"
        SMALI_PATCH "system" "system/priv-app/SecSettings/SecSettings.apk" \
            "$SW_UTILS" "return" \
            'isOTAUpgradeAllowed(Landroid/content/Context;)Z' \
            'false'
    fi
fi

# Always show One UI minor version
ONEUI_CONTROLLER_FILE="$(find "$APKTOOL_DIR/system/priv-app/SecSettings/SecSettings.apk" -type f -name "OneUIVersionPreferenceController.smali" 2>/dev/null | head -n 1)"
if [ -n "$ONEUI_CONTROLLER_FILE" ] && [ -f "$ONEUI_CONTROLLER_FILE" ]; then
    ONEUI_CONTROLLER="${ONEUI_CONTROLLER_FILE#"$APKTOOL_DIR/system/priv-app/SecSettings/SecSettings.apk/"}"
    SMALI_PATCH "system" "system/priv-app/SecSettings/SecSettings.apk" \
        "$ONEUI_CONTROLLER" "replace" \
        'isDeviceWithMicroVersion()Z' \
        'move-result p0' \
        'const/4 p0, 0x1'
fi

# Show real device model number
MODEL_GETTER_FILE="$(find "$APKTOOL_DIR/system/priv-app/SecSettings/SecSettings.apk" -type f -name "ModelNameGetter.smali" 2>/dev/null | head -n 1)"
if [ -n "$MODEL_GETTER_FILE" ] && [ -f "$MODEL_GETTER_FILE" ]; then
    MODEL_GETTER="${MODEL_GETTER_FILE#"$APKTOOL_DIR/system/priv-app/SecSettings/SecSettings.apk/"}"
    SMALI_PATCH "system" "system/priv-app/SecSettings/SecSettings.apk" \
        "$MODEL_GETTER" "replace" \
        'getModelName()Ljava/lang/String;' \
        'ro.product.model' \
        'ro.boot.em.model'
fi

# Ensure Galaxy AI / Intelligence Service does not finish/vanish
USEFUL_UTILS="$(find "$APKTOOL_DIR/system/priv-app/SecSettings/SecSettings.apk" -name "UsefulfeatureUtils.smali" -print -quit)"
if [ -n "$USEFUL_UTILS" ]; then
    USEFUL_UTILS_REL="${USEFUL_UTILS#$APKTOOL_DIR/system/priv-app/SecSettings/SecSettings.apk/}"
    LOG "- Enabling Galaxy AI availability in $USEFUL_UTILS_REL"
    SMALI_PATCH "system" "system/priv-app/SecSettings/SecSettings.apk" \
        "$USEFUL_UTILS_REL" "return" \
        'isSupportedIntelligenceService(Landroid/content/Context;)Z' \
        'true' || true
fi

LOG_STEP_IN "- Adding UN1CA Settings"

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

# Add UN1CA Settings SearchIndexableData registrations
SEARCH_INDEX_RESOURCES="$(
    find "$APKTOOL_DIR/system/priv-app/SecSettings/SecSettings.apk" \
        -path '*/com/android/settings/search/SearchFeatureProviderImpl$$ExternalSyntheticLambda0.smali' \
        -print -quit
)"
if [ -n "$SEARCH_INDEX_RESOURCES" ]; then
    LOG "- Patching Settings search index providers in /system/system/priv-app/SecSettings.apk"
    SEARCH_INDEX_RESOURCES_SMALI="${SEARCH_INDEX_RESOURCES#$APKTOOL_DIR/system/priv-app/SecSettings/SecSettings.apk/}"

    ADD_UNICA_SETTINGS_SEARCH_INDEX_DATA_PROVIDER()
    {
        local FRAGMENT="$1"

        if grep -q "L$FRAGMENT;->SEARCH_INDEX_DATA_PROVIDER" "$SEARCH_INDEX_RESOURCES"; then
            return 0
        fi

        SMALI_PATCH "system" "system/priv-app/SecSettings/SecSettings.apk" \
            "$SEARCH_INDEX_RESOURCES_SMALI" "replace" \
            'invoke()Ljava/lang/Object;' \
            'new-instance v0, Lcom/android/settingslib/spa/search/SearchIndexableDataConverter;' \
            "    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;\n\n    const-class v1, L$FRAGMENT;\n\n    sget-object v2, L$FRAGMENT;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;\n\n    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable\$SearchIndexProvider;)V\n\n    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V\n\n    new-instance v0, Lcom/android/settingslib/spa/search/SearchIndexableDataConverter;" \
            > /dev/null
    }

    for f in \
        "io/mesalabs/unica/settings/UnicaSettingsFragment" \
        "io/mesalabs/unica/settings/extra/ExtraSettingsFragment" \
        "io/mesalabs/unica/settings/spoof/HideDeveloperStatusFragment" \
        "io/mesalabs/unica/settings/spoof/SpoofSettingsFragment" \
        "io/mesalabs/unica/settings/ui/UISettingsFragment" \
        "io/mesalabs/unica/settings/spoof/CameraFeatureFragment" \
        "io/mesalabs/unica/settings/font/FontSelectorFragment" \
        "io/mesalabs/unica/settings/extra/ScpmAllowlistFragment" \
        "io/mesalabs/unica/settings/design/AudioTweaksFragment" \
        "io/mesalabs/unica/settings/design/BatteryPerformanceFragment"; do
        ADD_UNICA_SETTINGS_SEARCH_INDEX_DATA_PROVIDER "$f" || return 1
    done
fi

# Mark UN1CA Settings fragments as valid
LOG "- Patching \"smali/com/android/settings/SettingsActivity.smali\" in /system/system/priv-app/SecSettings.apk"
SMALI_PATCH "system" "system/priv-app/SecSettings/SecSettings.apk" \
    "smali/com/android/settings/SettingsActivity.smali" "replace" \
    'isValidFragment(Ljava/lang/String;)Z' \
    'const/4 p0, 0x0' \
    'const-string v0, "io.mesalabs.unica."\n\n    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z\n\n    move-result v0\n\n    if-eqz v0, :cond_unica_valid\n\n    const/4 v0, 0x1\n\n    return v0\n\n    :cond_unica_valid\n    const/4 p0, 0x0' \
    > /dev/null

# Add UN1CA permissions to SecSettings AndroidManifest.xml
SETTINGS_MANIFEST="$APKTOOL_DIR/system/priv-app/SecSettings/SecSettings.apk/AndroidManifest.xml"
if [ -f "$SETTINGS_MANIFEST" ]; then
    for PERM in \
        "io.mesalabs.rezoss.permission.QWEN_ENGINE" \
        "android.permission.READ_LOGS" \
        "android.permission.QUERY_ALL_PACKAGES" \
        "android.permission.KILL_UID" \
        "android.permission.ACCESS_SHORTCUTS" \
        "com.android.alarm.permission.SET_ALARM"; do
        if ! grep -q "android:name=\"$PERM\"" "$SETTINGS_MANIFEST"; then
            sed -i "/<\/manifest>/i \    <uses-permission android:name=\"$PERM\"/>" "$SETTINGS_MANIFEST"
        fi
    done
fi

# Hook Settings background transparency into SecSettingsBaseActivity
BASE_ACTIVITY="$(find "$APKTOOL_DIR/system/priv-app/SecSettings/SecSettings.apk" -name "SecSettingsBaseActivity.smali" -print -quit)"
if [ -n "$BASE_ACTIVITY" ]; then
    LOG "- Hooking Settings background transparency into ${BASE_ACTIVITY#$APKTOOL_DIR/system/priv-app/SecSettings/SecSettings.apk/}"
    python3 - "$BASE_ACTIVITY" << 'EOF'
import sys
path = sys.argv[1]
with open(path, 'r', encoding='utf-8') as f:
    lines = f.readlines()

hook = '    invoke-static {p0}, Lio/mesalabs/unica/settings/display/SettingsBackgroundTransparencyUtils;->apply(Landroid/content/Context;)V\n'
new_lines = []
in_target_method = False

for line in lines:
    if line.startswith('.method ') and (' onCreate(' in line or ' onResume(' in line):
        in_target_method = True
    elif line.startswith('.end method'):
        in_target_method = False
    elif in_target_method and line.strip() == 'return-void':
        if not any('SettingsBackgroundTransparencyUtils;->apply' in l for l in new_lines[-5:]):
            new_lines.append(hook)
    new_lines.append(line)

with open(path, 'w', encoding='utf-8') as f:
    f.writelines(new_lines)
EOF
fi

# Hook Quick Tiles routeLongPress into QSTileLongPressGatewayActivity
QS_GATEWAY="$(find "$APKTOOL_DIR/system/priv-app/SecSettings/SecSettings.apk" -name "QSTileLongPressGatewayActivity.smali" -print -quit)"
if [ -n "$QS_GATEWAY" ]; then
    LOG "- Hooking Quick Tiles into ${QS_GATEWAY#$APKTOOL_DIR/system/priv-app/SecSettings/SecSettings.apk/}"
    python3 - "$QS_GATEWAY" << 'EOF'
import sys
path = sys.argv[1]
with open(path, 'r', encoding='utf-8') as f:
    content = f.read()

target = 'invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V'
replacement = target + '''

    invoke-static {p0}, Lio/mesalabs/unica/quicktiles/TileConfig;->routeLongPress(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_unica_quick_tile_stock

    return-void

    :cond_unica_quick_tile_stock'''

if target in content and 'routeLongPress' not in content:
    content = content.replace(target, replacement, 1)
    with open(path, 'w', encoding='utf-8') as f:
        f.write(content)
EOF
fi

if [ -f "$WORK_DIR/system/system/priv-app/SecSettingsIntelligence/SecSettingsIntelligence.apk" ]; then
    DECODE_APK "system" "system/priv-app/SecSettingsIntelligence/SecSettingsIntelligence.apk"
    TOP_KEYS_FILE="$(find "$APKTOOL_DIR/system/priv-app/SecSettingsIntelligence/SecSettingsIntelligence.apk" -type f -name "TopLevelKeysCollector.smali" 2>/dev/null | head -n 1)"
    if [ -n "$TOP_KEYS_FILE" ] && [ -f "$TOP_KEYS_FILE" ]; then
        TOP_KEYS="${TOP_KEYS_FILE#"$APKTOOL_DIR/system/priv-app/SecSettingsIntelligence/SecSettingsIntelligence.apk/"}"
        LOG "- Patching \"$TOP_KEYS\" in /system/system/priv-app/SecSettingsIntelligence/SecSettingsIntelligence.apk"
        if grep -q "filled-new-array/range {v1 .. v36}" "$APKTOOL_DIR/system/priv-app/SecSettingsIntelligence/SecSettingsIntelligence.apk/$TOP_KEYS"; then
            SMALI_PATCH "system" "system/priv-app/SecSettingsIntelligence/SecSettingsIntelligence.apk" \
                "$TOP_KEYS" "replace" \
                '<init>(Landroid/content/Context;)V' \
                '.locals 37' \
                '.locals 38' \
                > /dev/null
            SMALI_PATCH "system" "system/priv-app/SecSettingsIntelligence/SecSettingsIntelligence.apk" \
                "$TOP_KEYS" "replace" \
                '<init>(Landroid/content/Context;)V' \
                'filled-new-array/range {v1 .. v36}, [Ljava/lang/String;' \
                '    const-string v37, "top_level_unica"\n\n    filled-new-array/range {v1 .. v37}, [Ljava/lang/String;' \
                > /dev/null
        elif grep -q "filled-new-array/range {v1 .. v35}" "$APKTOOL_DIR/system/priv-app/SecSettingsIntelligence/SecSettingsIntelligence.apk/$TOP_KEYS"; then
            SMALI_PATCH "system" "system/priv-app/SecSettingsIntelligence/SecSettingsIntelligence.apk" \
                "$TOP_KEYS" "replace" \
                '<init>(Landroid/content/Context;)V' \
                '.locals 36' \
                '.locals 37' \
                > /dev/null
            SMALI_PATCH "system" "system/priv-app/SecSettingsIntelligence/SecSettingsIntelligence.apk" \
                "$TOP_KEYS" "replace" \
                '<init>(Landroid/content/Context;)V' \
                'filled-new-array/range {v1 .. v35}, [Ljava/lang/String;' \
                '    const-string v36, "top_level_unica"\n\n    filled-new-array/range {v1 .. v36}, [Ljava/lang/String;' \
                > /dev/null
        fi
    fi
fi

# Show Vulkan renderer toggle if required
if [[ "$(GET_PROP "ro.hwui.use_vulkan")" != "true" ]]; then
    SET_PROP "system" "persist.sys.unica.vulkan" "false"
fi

# Relax SDHMS policy control
if [ -d "$MODPATH/thermal" ] && [ -f "$WORK_DIR/system/system/priv-app/SamsungDeviceHealthManagerService/SamsungDeviceHealthManagerService.apk" ]; then
    LOG "- Installing Relax SDHMS policy control"
    APPLY_PATCH "system" "system/priv-app/SamsungDeviceHealthManagerService/SamsungDeviceHealthManagerService.apk" \
        "$MODPATH/thermal/patches/0001-Add-protected-SDHMS-policy-switch.patch" || true
fi

# Troubleshooting suite
if [ -d "$MODPATH/troubleshooting" ]; then
    LOG "- Compiling Troubleshooting compatibility catalog and policies"
    python3 "$MODPATH/troubleshooting/compile-catalog.py" \
        --output-dir "$WORK_DIR/system/system/etc/unica" --no-backup 2>/dev/null || true
    for _UNICA_COMPAT_TABLE in troubleshooting-root-purposes.tsv troubleshooting-lsposed-purposes.json troubleshooting-lsposed-conflicts.json troubleshooting-registry-info.json; do
        [ -f "$WORK_DIR/system/system/etc/unica/$_UNICA_COMPAT_TABLE" ] && SET_METADATA "system" "system/etc/unica/$_UNICA_COMPAT_TABLE" 0 0 644 "u:object_r:system_file:s0"
    done
    unset _UNICA_COMPAT_TABLE
    python3 "$MODPATH/troubleshooting/install-policy.py" "$WORK_DIR" 2>/dev/null || true
    python3 "$MODPATH/troubleshooting/registry.py" "$WORK_DIR/system/system/etc/unica/troubleshooting-targets.tsv" 2>/dev/null || true
    [ -f "$WORK_DIR/system/system/etc/unica/troubleshooting-targets.tsv" ] && SET_METADATA "system" "system/etc/unica/troubleshooting-targets.tsv" 0 0 644 "u:object_r:system_file:s0"
    [ -f "$WORK_DIR/system/system/bin/unica-troubleshooting" ] && SET_METADATA "system" "system/bin/unica-troubleshooting" 0 0 755 "u:object_r:unica_troubleshooting_exec:s0"
fi

# Allow runtime camera feature override in SamsungCamera
if [ -f "$WORK_DIR/system/system/priv-app/SamsungCamera/SamsungCamera.apk" ]; then
    DECODE_APK "system" "system/priv-app/SamsungCamera/SamsungCamera.apk"
    LOG "- Hooking SamsungCamera runtime camera feature override"
    python3 - "$APKTOOL_DIR/system/priv-app/SamsungCamera/SamsungCamera.apk" << 'EOF'
import sys, re
from pathlib import Path

apk_dir = Path(sys.argv[1])
for smali_file in apk_dir.rglob("*.smali"):
    content = smali_file.read_text(encoding="utf-8", errors="ignore")
    if "FeatureLoader" in content and "loadFeature : start" in content:
        if "getCameraFeatureFile" in content:
            break

        m_class = re.search(r'^\.class\s+.*?([L][^;\s]+;)', content, re.MULTILINE)
        if not m_class:
            continue
        class_desc = m_class.group(1)

        m_fis = re.search(r'invoke-direct\s*\{[^,]+,\s*(v\d+)\},\s*Ljava/io/FileInputStream;-><init>\(Ljava/io/File;\)V', content)
        if not m_fis:
            continue

        file_reg = m_fis.group(1)
        pattern_init = re.compile(
            rf'(invoke-direct\s*\{{{file_reg},\s*v\d+\}},\s*Ljava/io/File;-><init>\(Ljava/lang/String;\)V)',
            re.MULTILINE
        )

        sub_content = content[:m_fis.start()]
        matches = list(pattern_init.finditer(sub_content))
        if not matches:
            continue

        insert_pos = matches[-1].end()
        hook = f"\n\n    invoke-static {{{file_reg}}}, {class_desc}->getCameraFeatureFile(Ljava/io/File;)Ljava/io/File;\n\n    move-result-object {file_reg}"

        helper_method = """

.method private static getCameraFeatureFile(Ljava/io/File;)Ljava/io/File;
    .registers 7

    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/Download/unica/unica_camera_feature.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_unica_stock

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_unica_stock

    return-object v0

    :cond_unica_stock
    return-object p0
.end method
"""
        new_content = content[:insert_pos] + hook + content[insert_pos:] + helper_method
        smali_file.write_text(new_content, encoding="utf-8")
        break
EOF
fi

unset PATCH_INST CONTENT SW_UTILS ONEUI_CONTROLLER MODEL_GETTER TOP_KEYS SW_UTILS_FILE ONEUI_CONTROLLER_FILE MODEL_GETTER_FILE TOP_KEYS_FILE

LOG_STEP_OUT
