# =========================
# A/B OTA (KEEP - REQUIRED)
# =========================
ENABLE_VIRTUAL_AB := true
AB_OTA_UPDATER := true

AB_OTA_PARTITIONS += \
    boot \
    dtbo \
    system \
    system_ext \
    product \
    vendor \
    vbmeta \
    vendor_boot \
    vbmeta_system \
    vbmeta_vendor

# =========================
# OTA Engine
# =========================
PRODUCT_PACKAGES += \
    otapreopt_script \
    update_engine \
    update_engine_sideload \
    update_verifier

PRODUCT_PACKAGES_DEBUG += \
    bootctrl \
    update_engine_client

# =========================
# Boot Control (MTK SAFE)
# =========================
PRODUCT_PACKAGES += \
    android.hardware.boot@1.2-mtkimpl \
    android.hardware.boot@1.2-mtkimpl.recovery \
    bootctrl.mt6768

# =========================
# Fastbootd (KEEP)
# =========================
PRODUCT_PACKAGES += \
    fastbootd \
    android.hardware.fastboot@1.0-impl-mock

# =========================
# Keymaster / Keystore
# =========================
PRODUCT_PACKAGES += \
    android.system.keystore2 \
    android.hardware.keymaster@4.1

TARGET_RECOVERY_DEVICE_MODULES += \
    android.hardware.keymaster@4.1

TW_RECOVERY_ADDITIONAL_RELINK_LIBRARY_FILES += \
    $(TARGET_OUT_SHARED_LIBRARIES)/android.hardware.keymaster@4.1.so

# =========================
# Health HAL (IMPORTANT for A13 MTK)
# =========================
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-service

# =========================
# MTK Postinstall fix (KEEP if OTA works in OFOX)
# =========================
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true