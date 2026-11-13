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
    basic_runes = glob.glob(f"{sysui_dir}/**/smali*/**/BasicRune.smali", recursive=True)

if not basic_runes:
    sys.exit("Error: BasicRune.smali not found in SystemUI.apk")

patched = False
for path in basic_runes:
    with open(path, "r", encoding="utf-8") as f:
        content = f.read()

    orig_content = content

    # 1. Force SYSUI_CHINA_FEATURE check to true if present in BasicRune (Salvo's original patch logic)
    content, c1 = re.subn(
        r'sget-boolean\s+([vp]\d+),\s*Lcom/android/systemui/Rune;->SYSUI_CHINA_FEATURE:Z',
        r'const/4 \1, 0x1',
        content
    )
    if c1 > 0:
        patched = True
        print(f"  Replaced Rune.SYSUI_CHINA_FEATURE with 1 ({c1} occurrence(s)) in {os.path.basename(path)}")

    # 2. Check for any network speed field in BasicRune
    speed_fields = re.findall(r'\.field\s+.*?([A-Za-z0-9_]*NET[A-Za-z0-9_]*SPEED[A-Za-z0-9_]*):Z', content)
    if not speed_fields and "STATUS_REAL_TIME_NETWORK_SPEED" in content:
        speed_fields = ["STATUS_REAL_TIME_NETWORK_SPEED"]

    for field_name in set(speed_fields):
        full_field = f"Lcom/android/systemui/BasicRune;->{field_name}:Z"
        pattern = r'([ \t]*)sput-boolean\s+([vp]\d+),\s*' + re.escape(full_field)
        content, c2 = re.subn(pattern, rf'\1const/4 \2, 0x1\n\n\1sput-boolean \2, {full_field}', content)
        if c2 > 0:
            patched = True
            print(f"  Forced sput-boolean for {field_name} in {os.path.basename(path)}")
        elif full_field not in content:
            clinit_m = re.search(r'(\.method static constructor <clinit>\(\)V[\s\S]*?)([ \t]*)(return-void\s*\n\s*\.end method)', content)
            if clinit_m:
                body, indent, ret_end = clinit_m.group(1), clinit_m.group(2), clinit_m.group(3)
                ensure_code = (
                    f"{indent}const/4 v0, 0x1\n\n"
                    f"{indent}sput-boolean v0, {full_field}\n\n"
                )
                content = content[:clinit_m.start()] + body + ensure_code + indent + ret_end + content[clinit_m.end():]
                patched = True
                print(f"  Guaranteed {field_name} = 1 in <clinit> of {os.path.basename(path)}")

    if content != orig_content:
        with open(path, "w", encoding="utf-8", newline="\n") as f:
            f.write(content)

# Fallback: if BasicRune didn't match, check other Rune classes in SystemUI
if not patched:
    all_runes = glob.glob(f"{sysui_dir}/**/smali*/**/*Rune*.smali", recursive=True)
    for path in all_runes:
        with open(path, "r", encoding="utf-8") as f:
            content = f.read()
        if "Lcom/android/systemui/Rune;->SYSUI_CHINA_FEATURE:Z" in content and "NET" in content.upper():
            content, c = re.subn(
                r'sget-boolean\s+([vp]\d+),\s*Lcom/android/systemui/Rune;->SYSUI_CHINA_FEATURE:Z',
                r'const/4 \1, 0x1',
                content
            )
            if c > 0:
                with open(path, "w", encoding="utf-8", newline="\n") as f:
                    f.write(content)
                patched = True
                print(f"  Patched SYSUI_CHINA_FEATURE in fallback {os.path.basename(path)}")

if not patched:
    sys.exit("Error: Failed to patch network speed rune in SystemUI.apk")
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
