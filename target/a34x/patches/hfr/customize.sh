# https://android.googlesource.com/platform/frameworks/native/+/refs/tags/android-16.0.0_r2/services/surfaceflinger/Scheduler/RefreshRateSelector.h#314
IDLE_TIMER_MS=250
# https://android.googlesource.com/platform/frameworks/native/+/refs/tags/android-16.0.0_r2/services/surfaceflinger/sysprop/SurfaceFlingerProperties.sysprop#346
TOUCH_TIMER_MS=300

SET_PROP "vendor" "ro.surface_flinger.use_content_detection_for_refresh_rate" "true"
SET_PROP "vendor" "ro.surface_flinger.set_idle_timer_ms" "$IDLE_TIMER_MS"
SET_PROP "vendor" "ro.surface_flinger.set_touch_timer_ms" "$TOUCH_TIMER_MS"
SET_PROP "vendor" "ro.surface_flinger.enable_frame_rate_override" "true"

unset IDLE_TIMER_MS TOUCH_TIMER_MS
