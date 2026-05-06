#!/bin/bash

# =========================
# Device type
# =========================
export FOX_AB_DEVICE=1
export FOX_VIRTUAL_AB_DEVICE=1

# =========================
# Maintainer
# =========================
export OF_MAINTAINER="r3nzph"

# =========================
# OTA / AVB
# =========================
export OF_DISABLE_OTA_MENU=1
export OF_SUPPORT_VBMETA_AVB2_PATCHING=1

# =========================
# Stability (VERY IMPORTANT)
# =========================
export OF_NO_TREBLE_COMPATIBILITY_CHECK=1
export OF_LOOP_DEVICE_ERRORS_TO_LOG=1
export OF_USE_LZ4_COMPRESSION=true

# =========================
# Storage behavior (KEEP)
# =========================
export FOX_USE_DATA_RECOVERY_FOR_SETTINGS=1

# =========================
# Minimal tools (SAFE ONLY)
# =========================
export FOX_USE_BASH_SHELL=1
export OF_ENABLE_LPTOOLS=1

# =========================
# REMOVE PROBLEMATIC FEATURES
# =========================
export FOX_DELETE_MAGISK_ADDON=1
export FOX_DELETE_AROMAFM=1

# =========================
# UI (SAFE VALUES ONLY)
# =========================
# DO NOT hardcode full resolution (causes UI bugs)
export OF_STATUS_INDENT_LEFT=48
export OF_STATUS_INDENT_RIGHT=48
export OF_CLOCK_POS=1

# =========================
# Optional
# =========================
export OF_FLASHLIGHT_ENABLE=0

# =========================
# Locale fix
# =========================
export LC_ALL="C"