USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/motorola/ghost/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := unknown
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_CPU_VARIANT := krait
TARGET_BOOTLOADER_BOARD_NAME := ghost

BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x3F ehci-hcd.park=3 maxcpus=2 vmalloc=400M
BOARD_KERNEL_BASE := 0x80200000
BOARD_KERNEL_PAGESIZE := 2048

#Thanks to JackpotClavin for bringing this point up in http://forum.xda-developers.com/showthread.php?p=44884904#post44884904
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02200000 

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/motorola/ghost/kernel

BOARD_HAS_NO_SELECT_BUTTON := true

#Font size too small for 720p. Fixing.
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"

#TWRP config
DEVICE_RESOLUTION := 720x1280
RECOVERY_SDCARD_ON_DATA := true 
RECOVERY_GRAPHICS_USE_LINELENGTH := true 
BOARD_HAS_NO_REAL_SDCARD := true
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

TW_INCLUDE_CRYPTO := true
TW_FLASH_FROM_STORAGE := true 
TW_NO_USB_STORAGE := true
#TW_INCLUDE_DUMLOCK := true
TW_INTERNAL_STORAGE_PATH := "/data/media" 
TW_INTERNAL_STORAGE_MOUNT_POINT := "data" 
TW_EXTERNAL_STORAGE_PATH := "/usb-otg"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "usb-otg"
