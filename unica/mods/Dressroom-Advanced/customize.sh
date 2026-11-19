#!/usr/bin/env bash
# Native port of BlueOutside / Dressroom-Advanced.
# Integration copyright (c) 2026 Rezoss
# SPDX-License-Identifier: GPL-3.0-or-later
SKIPUNZIP=1

if [[ "$TARGET_CODENAME" =~ ^(dm3q|a34x)$ && "$TARGET_PLATFORM_SDK_VERSION" -ge "36" && ! -f "$MODPATH/disable" ]]; then
    LOG "- Dressroom-Advanced by @BlueOutside: full native integration"
    source "$MODPATH/integrate.sh" dressroom || return 1
    source "$MODPATH/integrate.sh" aod || return 1
    source "$MODPATH/integrate.sh" systemui || return 1
    source "$MODPATH/integrate.sh" wallpaper || return 1
fi

