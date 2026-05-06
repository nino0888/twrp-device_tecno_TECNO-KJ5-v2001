# =========================
# Device Path
# =========================
DEVICE_PATH := device/tecno/KJ5

# =========================
# Architecture Settings
# =========================
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a53

TARGET_SUPPORTS_64_BIT_APPS := true
TARGET_IS_64_BIT := true
TARGET_USES_64_BIT_BINDER := true

BOARD_USES_MTK_HARDWARE := true
ENABLE_CPUSETS := true
ENABLE_SCHEDBOOST := true

# =========================
# Bootloader Settings
# =========================
TARGET_BOOTLOADER_BOARD_NAME := KJ5
TARGET_NO_BOOTLOADER := true
TARGET_USES_UEFI := true

# =========================
# Build Hacks
# =========================
BUILD_BROKEN_DUP_RULES := true
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true

# =========================
# Display (UNCHANGED - THIS IS WHY YOUR RECOVERY WORKS)
# =========================
TARGET_SCREEN_DENSITY := 320
TW_THEME := portrait_hdpi

# =========================
# Assert
# =========================
TARGET_OTA_ASSERT_DEVICE := KJ5

# =========================
# DTBO
# =========================
BOARD_KERNEL_SEPARATED_DTBO := true

# =========================
# Kernel (ONLY CHANGE: GKI → PREBUILT)
# =========================
TARGET_NO_KERNEL := false
TARGET_FORCE_PREBUILT_KERNEL := true

TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel
TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilt/dtb.img

BOARD_USES_GENERIC_KERNEL_IMAGE := false

BOARD_BOOT_HEADER_VERSION := 4
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_KERNEL_TAGS_OFFSET := 0x0bc08000
BOARD_PAGE_SIZE := 4096
BOARD_TAGS_OFFSET := 0x0bc08000
BOARD_RAMDISK_OFFSET := 0x07c08000
BOARD_DTB_SIZE := 182209
BOARD_DTB_OFFSET := 0x0bc08000
BOARD_HEADER_SIZE = 2128
BOARD_VENDOR_CMDLINE := bootopt=64S3,32N2,64N2
BOARD_VENDOR_BASE := 0x40078000

BOARD_MKBOOTIMG_ARGS += --vendor_cmdline $(BOARD_VENDOR_CMDLINE)
BOARD_MKBOOTIMG_ARGS += --pagesize $(BOARD_PAGE_SIZE) --board ""
BOARD_MKBOOTIMG_ARGS += --kernel_offset $(BOARD_KERNEL_OFFSET)
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_TAGS_OFFSET)
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOT_HEADER_VERSION)
BOARD_MKBOOTIMG_ARGS += --dtb_offset $(BOARD_DTB_OFFSET)
BOARD_MKBOOTIMG_ARGS += --dtb $(TARGET_PREBUILT_DTB)

# =========================
# Partitions (UNCHANGED)
# =========================
BOARD_FLASH_BLOCK_SIZE := 262144

BOARD_VENDOR_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_SUPER_PARTITION_GROUPS := main
BOARD_MAIN_SIZE := 9122611200
BOARD_SUPER_PARTITIONS_SIZE := 9122611200

BOARD_MAIN_PARTITION_LIST += \
    product \
    system \
    system_ext \
    vendor \

# =========================
# Filesystems (UNCHANGED)
# =========================
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEM_EXTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_USES_METADATA_PARTITION := true

# =========================
# Platform
# =========================
TARGET_BOARD_PLATFORM := mt6768
BOARD_VNDK_VERSION := current

# =========================
# Recovery (UNCHANGED FROM WORKING GKI TREE)
# =========================
TARGET_NO_RECOVERY := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"

BOARD_INCLUDE_RECOVERY_RAMDISK_IN_VENDOR_BOOT := true
BOARD_MOVE_RECOVERY_RESOURCES_TO_VENDOR_BOOT := true

TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery/root/system/etc/recovery.fstab

BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_USES_RECOVERY_AS_VENDOR_BOOT := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_SUPPRESS_SECURE_ERASE := true

# IMPORTANT: KEEP THIS (this is why your GKI UI works)
BOARD_USES_GENERIC_KERNEL_IMAGE := false

# =========================
# AVB
# =========================
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 3
BOARD_AVB_RECOVERY_KEY_PATH := external/avb/test/data/testkey_rsa4096.pem
BOARD_AVB_RECOVERY_ALGORITHM := SHA256_RSA4096
BOARD_AVB_RECOVERY_ROLLBACK_INDEX := 1
BOARD_AVB_RECOVERY_ROLLBACK_INDEX_LOCATION := 1

# =========================
# Crypto (UNCHANGED - disabled)
# =========================
#TW_INCLUDE_CRYPTO := true
#TW_INCLUDE_CRYPTO_FBE := false

TW_PREPARE_MEDIA_EARLY := true
TW_FORCE_KEYMASTER_VER := true
OF_DEFAULT_KEYMASTER_VERSION=4.1

# =========================
# Modules
# =========================
TW_LOAD_VENDOR_BOOT_MODULES := true

# =========================
# Debug (UNCHANGED)
# =========================
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true
TWRP_EVENT_LOGGING := true

# =========================
# Tools (UNCHANGED)
# =========================
TW_INCLUDE_FB2PNG := true
TW_INCLUDE_NTFS_3G := true
TW_INCLUDE_REPACKTOOLS := true
TW_INCLUDE_RESETPROP := true
TW_INCLUDE_LPTOOLS := true
TW_INCLUDE_LIBRESETPROP := true
TW_USE_TOOLBOX := true
TW_INCLUDE_BASH := true
TW_INCLUDE_SUPERSU := true
TW_INCLUDE_LPDUMP := true
TARGET_USES_MKE2FS := true

# =========================
# TWRP CONFIG (UNCHANGED - IMPORTANT FOR UI/Screenshot)
# =========================
TW_ALLOW_FORMAT_DATA := true
TW_FRAMERATE := 90
TW_INCLUDE_FUSE_EXFAT := true
TW_EXTRA_LANGUAGES := true
TW_SCREEN_BLANK_ON_BOOT := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_EXCLUDE_APEX := true
TW_EXCLUDE_TZDATA := true
TW_EXCLUDE_PYTHON := true
TW_EXCLUDE_TWRPAPP := true
TW_NO_FASTBOOT_BOOT := true

# =========================
# Brightness (UNCHANGED)
# =========================
TW_NO_SCREEN_BLANK := true
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel/brightness"
TW_MAX_BRIGHTNESS := 2047
TW_DEFAULT_BRIGHTNESS := 1200

# =========================
# USB (UNCHANGED - IMPORTANT FOR OTG FIX)
# =========================
TW_EXCLUDE_DEFAULT_USB_INIT := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /config/usb_gadget/g1/functions/mass_storage.0/lun.%d/file
TW_USES_OTG_USB := true

# =========================
# Storage
# =========================
RECOVERY_SDCARD_ON_DATA := true
TW_USB_STORAGE := true
TW_HAS_MTP := true
TW_MTP_DEVICE := /dev/mtp_usb

# =========================
# Props
# =========================
TARGET_SYSTEM_PROP := $(DEVICE_PATH)/system.prop

# =========================
# Misc
# =========================
ALLOW_MISSING_DEPENDENCIES := true

TW_CUSTOM_CPU_TEMP_PATH := sys/devices/virtual/thermal/thermal_zone4/temp

# =========================
# Device Info
# =========================
TW_DEVICE_VERSION := SPARK 20 by r3nzph