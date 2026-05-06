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


TARGET_COPY_OUT_PRODUCT := product
TARGET_COPY_OUT_SYSTEM := system
TARGET_COPY_OUT_SYSTEM_EXT := system_ext
TARGET_COPY_OUT_VENDOR := vendor

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
ALLOW_MISSING_DEPENDENCIES := true

# =========================
# Display Settings
# =========================
TARGET_SCREEN_DENSITY := 320
TW_THEME := portrait_hdpi
DEVICE_RESOLUTION := 1612x720

TW_SCREEN_BLANK_ON_BOOT := true
TW_NO_SCREEN_BLANK := true

# SAFE brightness (NO hardcoded broken path)
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 120

# =========================
# Kernel (PREBUILT ONLY - STABLE)
# =========================
TARGET_NO_KERNEL := false
TARGET_FORCE_PREBUILT_KERNEL := true

TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel
TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilt/dtb.img

BOARD_KERNEL_IMAGE_NAME := kernel
BOARD_RAMDISK_USE_LZ4 := true

# =========================
# DTBO
# =========================
BOARD_KERNEL_SEPARATED_DTBO := true

# =========================
# Boot image config
# =========================
BOARD_BOOT_HEADER_VERSION := 4
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_KERNEL_TAGS_OFFSET := 0x0bc08000
BOARD_RAMDISK_OFFSET := 0x07c08000
BOARD_DTB_OFFSET := 0x0bc08000
BOARD_PAGE_SIZE := 4096

BOARD_VENDOR_CMDLINE := bootopt=64S3,32N2,64N2

BOARD_MKBOOTIMG_ARGS += --vendor_cmdline $(BOARD_VENDOR_CMDLINE)
BOARD_MKBOOTIMG_ARGS += --pagesize $(BOARD_PAGE_SIZE)
BOARD_MKBOOTIMG_ARGS += --kernel_offset $(BOARD_KERNEL_OFFSET)
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_TAGS_OFFSET)
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOT_HEADER_VERSION)
BOARD_MKBOOTIMG_ARGS += --dtb_offset $(BOARD_DTB_OFFSET)
BOARD_MKBOOTIMG_ARGS += --dtb $(TARGET_PREBUILT_DTB)

# =========================
# Partitions
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
    odm_dlkm

# =========================
# Filesystems
# =========================
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEM_EXTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_ODM_DLKMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := f2fs

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# =========================
# Platform
# =========================
TARGET_BOARD_PLATFORM := mt6768
BOARD_VNDK_VERSION := current

# =========================
# Recovery (STABLE MODE)
# =========================
TARGET_NO_RECOVERY := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"

BOARD_INCLUDE_RECOVERY_RAMDISK_IN_VENDOR_BOOT := true
BOARD_MOVE_RECOVERY_RESOURCES_TO_VENDOR_BOOT := true

TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery/root/system/etc/recovery.fstab

BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_SELECT_BUTTON := true

BOARD_USES_GENERIC_KERNEL_IMAGE := false

# =========================
# AVB
# =========================
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 3

# =========================
# Crypto (DISABLED for stability)
# =========================
# DO NOT ENABLE — causes bootloops on MTK A13 recovery
# TW_INCLUDE_CRYPTO := true
# TW_INCLUDE_CRYPTO_FBE := true

# =========================
# USB (FIXED STABLE)
# =========================
TW_INCLUDE_LIBUSB := true
TW_USB_STORAGE := true

# IMPORTANT: DO NOT disable USB init

# =========================
# Debug
# =========================
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true
TWRP_EVENT_LOGGING := true

# =========================
# Tools (SAFE ONLY)
# =========================
TW_INCLUDE_FB2PNG := true
TW_INCLUDE_RESETPROP := true
TW_INCLUDE_LPTOOLS := true
TW_INCLUDE_LIBRESETPROP := true
TW_USE_TOOLBOX := true

TARGET_USES_MKE2FS := true

# =========================
# Storage
# =========================
RECOVERY_SDCARD_ON_DATA := true
TW_USE_EXTERNAL_STORAGE := true
TW_HAS_MTP := true
TW_MTP_DEVICE := /dev/mtp_usb

# =========================
# Screenshot
# =========================
TW_SCREENSHOT_FORMAT := png

# =========================
# Removed broken configs (IMPORTANT)
# =========================
# TW_LOAD_VENDOR_BOOT_MODULES := true   ❌ removed (breaks MTK A13)
# TW_EXCLUDE_DEFAULT_USB_INIT := true   ❌ removed (breaks OTG)
# TW_BRIGHTNESS_PATH := ...             ❌ removed (causes fb issues)

# =========================
# Device version
# =========================
TW_DEVICE_VERSION := SPARK 20 by r3nzph