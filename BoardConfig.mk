USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/alps/k05ts_a/BoardConfigVendor.mk
#64 bit
TARGET_ARCH := arm64
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := mt6753
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 := 
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_VARIANT := generic
TARGET_CPU_CORTEX_A53 := true
TARGET_BOARD_PLATFORM_GPU := Mali-T720

#32 bit
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

#TARGET_CPU_SMP := true
#ARCH_ARM_HAVE_TLS_REGISTER := true
#ARCH_ARM_HAVE_NEON := true
#ARCH_ARM_HAVE_VFP := true

TARGET_GLOBAL_CFLAGS   += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

TARGET_BOOTLOADER_BOARD_NAME := Auxus_PRIME_201

BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2
BOARD_KERNEL_BASE := 0x40078000
#extracted from stock recovery
BOARD_KERNEL_PAGESIZE := 2048
BOARD_RAMDISK_OFFSET := 0x03f88000

#extracted from /proc/partinfo
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216 
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2147483648 
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1107296256
BOARD_CACHEIMAGE_PARTITION_SIZE := 444596224
#pagesize * 64
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x03f88000 --tags_offset 0x0df88000 

TARGET_PREBUILT_KERNEL := device/alps/k05ts_a/prebuilt/kernel
#use precompiled bootimage for now
#DEVICE_BASE_BOOT_IMAGE := device/alps/k05ts_a/prebuilt/boot.img
USE_OPENGL_RENDERER := true
BOARD_HAS_NO_SELECT_BUTTON := true
#recovery
TARGET_RECOVERY_INITRC := device/alps/k05ts_a/recovery/init.mt6753.rc
TARGET_RECOVERY_FSTAB := device/alps/k05ts_a/recovery/root/fstab.mt6753
TARGET_RECOVERY_LCD_BACKLIGHT_PATH := \"/sys/devices/platform/leds-mt65xx/leds/lcd-backlight/brightness\"
