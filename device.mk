# =========================
# Device Makefile (KJ5 - Recovery Build)
# =========================

# =========================
# A/B OTA (DISABLED for recovery)
# =========================
# DO NOT ENABLE IN RECOVERY TREE
# AB_OTA_UPDATER := true
# ENABLE_VIRTUAL_AB := true

# =========================
# Boot Control HAL (Required)
# =========================
PRODUCT_PACKAGES += \
    bootctrl.mt6768 \
    android.hardware.boot@1.2-mtkimpl \
    android.hardware.boot@1.2-mtkimpl.recovery

# =========================
# Health HAL (Required for Android 12/13 compatibility)
# =========================
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-service

# =========================
# Keymaster (IMPORTANT for boot + decryption compatibility)
# =========================
PRODUCT_PACKAGES += \
    android.hardware.keymaster@4.1

TARGET_RECOVERY_DEVICE_MODULES += \
    android.hardware.keymaster@4.1

TW_RECOVERY_ADDITIONAL_RELINK_LIBRARY_FILES += \
    $(TARGET_OUT_SHARED_LIBRARIES)/android.hardware.keymaster@4.1.so

# =========================
# REMOVE ALL OTA / UPDATE ENGINE (IMPORTANT)
# =========================
# ❌ update_engine
# ❌ update_engine_sideload
# ❌ update_verifier
# ❌ checkpoint_gc

# =========================
# REMOVE POSTINSTALL (BROKEN IN RECOVERY)
# =========================
# ❌ POSTINSTALL_PATH_system
# ❌ mtk_plpath_utils

# =========================
# REMOVE FULL AB PARTITIONS (RECOVERY DOES NOT NEED THIS)
# =========================
# ❌ AB_OTA_PARTITIONS

# =========================
# Debug (Optional safe tools only)
# =========================
PRODUCT_PACKAGES_DEBUG += \
    bootctrl