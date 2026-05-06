#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# =========================
# Core 64-bit base (KEEP)
# =========================
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# =========================
# Emulated storage (KEEP - required for /data/media)
# =========================
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# =========================
# DEVICE TREE
# =========================
$(call inherit-product, device/tecno/KJ5/device.mk)

# =========================
# PRODUCT INFO
# =========================
PRODUCT_DEVICE := KJ5
PRODUCT_NAME := twrp_KJ5
PRODUCT_BRAND := TECNO
PRODUCT_MODEL := TECNO KJ5
PRODUCT_MANUFACTURER := TECNO

PRODUCT_GMS_CLIENTID_BASE := android-transsion

# =========================
# REMOVED (IMPORTANT)
# =========================
# ❌ gsi_keys.mk
# ❌ virtual_ab_ota/*
# ❌ compression.mk
# ❌ launch_with_vendor_ramdisk.mk