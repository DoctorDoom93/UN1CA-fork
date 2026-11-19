# Fix Edge Lighting corner radius
# Remove SM-M127 support to support SM-A346 instead
DRAW_EDGE="$(find "$APKTOOL_DIR/system_ext/priv-app/SystemUI/SystemUI.apk" -type f -name "DrawEdgeLayout.smali" 2>/dev/null | head -n 1)"
if [ -n "$DRAW_EDGE" ] && [ -f "$DRAW_EDGE" ]; then
    SMALI_PATCH "system_ext" "priv-app/SystemUI/SystemUI.apk" \
        "${DRAW_EDGE#"$APKTOOL_DIR/system_ext/priv-app/SystemUI/SystemUI.apk/"}" "replace" \
        "dispatchDraw(Landroid/graphics/Canvas;)V" \
        "SM-M127" \
        "SM-A346"
fi
unset DRAW_EDGE

LOG "- Patching /system_ext/priv-app/SystemUI/SystemUI.apk/res/values/dimens.xml"
EVAL "sed -i \"s/<dimen name\=\\\"sm_m127\\\">36.0dp<\/dimen>/<dimen name\=\\\"sm_a346\\\">40.0dp<\/dimen>/\" \"$APKTOOL_DIR/system_ext/priv-app/SystemUI/SystemUI.apk/res/values/dimens.xml\""
LOG "- Patching /system_ext/priv-app/SystemUI/SystemUI.apk/res/values/public.xml"
EVAL "sed -i \"s/<public type\=\\\"dimen\\\" name\=\\\"sm_m127\\\"/<public type\=\\\"dimen\\\" name\=\\\"sm_a346\\\"/\" \"$APKTOOL_DIR/system_ext/priv-app/SystemUI/SystemUI.apk/res/values/public.xml\""

SET_PROP "system" "ro.factory.model" "SM-A346B"
