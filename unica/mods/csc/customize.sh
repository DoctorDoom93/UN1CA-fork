# Enable Power off lock feature
SMALI_PATCH "system" "system/framework/framework.jar" \
    "smali_classes6/com/samsung/android/globalactions/util/SystemPropertiesWrapper.smali" "return" \
    'isBrazilianCountryISO()Z' 'true'
SMALI_PATCH "system_ext" "priv-app/SystemUI/SystemUI.apk" \
    "smali_classes2/com/android/systemui/bixby2/controller/DeviceController.smali" "return" \
    'isSupportPowerOffLock()Z' 'true'

# Force enable real time network speed in status bar (BasicRune.STATUS_REAL_TIME_NETWORK_SPEED)
LOG "- Force enabling real time network speed in /system_ext/priv-app/SystemUI/SystemUI.apk"
python3 - <<'PY' || exit 1
import sys, os, glob, re

sysui_dir = os.path.join(os.environ["APKTOOL_DIR"], "system_ext/priv-app/SystemUI/SystemUI.apk")
basic_runes = glob.glob(f"{sysui_dir}/**/BasicRune.smali", recursive=True)
if not basic_runes:
    sys.exit("Error: BasicRune.smali not found in SystemUI.apk")

patched = False
for path in basic_runes:
    with open(path, "r", encoding="utf-8") as f:
        content = f.read()

    target_field = "Lcom/android/systemui/BasicRune;->STATUS_REAL_TIME_NETWORK_SPEED:Z"
    if target_field in content:
        # Force SYSUI_CHINA_FEATURE to true if checked
        content = re.sub(
            r'sget-boolean\s+([vp]\d+),\s*Lcom/android/systemui/Rune;->SYSUI_CHINA_FEATURE:Z',
            r'const/4 \1, 0x1',
            content
        )
        # Ensure any sput-boolean storing to STATUS_REAL_TIME_NETWORK_SPEED receives 0x1
        m = re.search(r'([ \t]*)(sput-boolean\s+([vp]\d+),\s*' + re.escape(target_field) + r')', content)
        if m:
            indent, sput_line, reg = m.group(1), m.group(2), m.group(3)
            replacement = f"{indent}const/4 {reg}, 0x1\n\n{indent}{sput_line}"
            content = content[:m.start()] + replacement + content[m.end():]
            patched = True

        # In addition, at the end of <clinit>()V before return-void, guarantee STATUS_REAL_TIME_NETWORK_SPEED:Z is true
        clinit_m = re.search(r'(\.method static constructor <clinit>\(\)V[\s\S]*?)([ \t]*)(return-void\s*\n\s*\.end method)', content)
        if clinit_m:
            body, indent, ret_end = clinit_m.group(1), clinit_m.group(2), clinit_m.group(3)
            ensure_code = (
                f"{indent}const/4 v0, 0x1\n\n"
                f"{indent}sput-boolean v0, {target_field}\n\n"
            )
            content = content[:clinit_m.start()] + body + ensure_code + indent + ret_end + content[clinit_m.end():]
            patched = True

        with open(path, "w", encoding="utf-8", newline="\n") as f:
            f.write(content)
        print(f"  Successfully enabled STATUS_REAL_TIME_NETWORK_SPEED in {os.path.basename(path)}")

if not patched:
    sys.exit("Error: Failed to patch STATUS_REAL_TIME_NETWORK_SPEED in BasicRune.smali")
PY

# Add padding to NetspeedView measurement in SystemUI.apk
LOG "- Adding padding measurement support to /system_ext/priv-app/SystemUI/SystemUI.apk/smali*/NetspeedView.smali"
python3 - <<'PY' || exit 1
import sys, os, glob, re

sysui_dir = os.path.join(os.environ["APKTOOL_DIR"], "system_ext/priv-app/SystemUI/SystemUI.apk")
netspeed_views = glob.glob(f"{sysui_dir}/**/NetspeedView.smali", recursive=True)
if not netspeed_views:
    sys.exit("Error: NetspeedView.smali not found in SystemUI.apk")

patched = False
for path in netspeed_views:
    with open(path, "r", encoding="utf-8") as f:
        content = f.read()

    if "getPaddingEnd()I" in content:
        print(f"  NetspeedView.smali already has getPaddingEnd, skipping")
        patched = True
        continue

    code_to_insert = (
        "invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingEnd()I\n\n"
        "move-result v1\n\n"
        "add-int/2addr p1, v1\n\n"
    )

    m = re.search(r'([ \t]*)(if-eq\s+v0,\s*p1,\s*:cond_\w+\s*\n\s*invoke-static\s*\{p2\},\s*Landroid/view/View\$MeasureSpec;->getSize\(I\)I)', content)
    if m:
        indent = m.group(1)
        target = m.group(2)
        indented_code = "".join(f"{indent}{line}\n" if line else "\n" for line in code_to_insert.split("\n")[:-1])
        content = content[:m.start()] + indented_code + indent + target + content[m.end():]
        patched = True
    else:
        # Fallback: search for invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I
        m2 = re.search(r'([ \t]*)(invoke-static\s*\{p2\},\s*Landroid/view/View\$MeasureSpec;->getSize\(I\)I)', content)
        if m2:
            indent = m2.group(1)
            target = m2.group(2)
            indented_code = "".join(f"{indent}{line}\n" if line else "\n" for line in code_to_insert.split("\n")[:-1])
            content = content[:m2.start()] + indented_code + indent + target + content[m2.end():]
            patched = True

    if patched:
        with open(path, "w", encoding="utf-8", newline="\n") as f:
            f.write(content)
        print(f"  Successfully patched onMeasure in {os.path.basename(path)}")

if not patched:
    sys.exit("Error: Failed to patch onMeasure in NetspeedView.smali")
PY
