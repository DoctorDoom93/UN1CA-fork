if [ -f "$WORK_DIR/system/system/etc/selinux/plat_property_contexts" ]; then
    LOG "- Patching /system/system/etc/selinux/plat_property_contexts for Keybox"
    if ! grep -q "persist.sys.unica.keybox" "$WORK_DIR/system/system/etc/selinux/plat_property_contexts" 2>/dev/null; then
        EVAL "echo \"persist.sys.unica.keybox u:object_r:default_prop:s0 exact bool\" >> \"$WORK_DIR/system/system/etc/selinux/plat_property_contexts\""
    fi
fi
