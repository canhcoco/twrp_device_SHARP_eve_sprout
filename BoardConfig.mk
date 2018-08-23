DEVICE_PATH := device/SHARP/eve
USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/SHARP/eve/BoardConfigVendor.mk
-include $(DEVICE_PATH)/config/*.mk

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8952
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := msm8952
TARGET_BOARD_PLATFORM_GPU := qcom-adreno405

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a53
TARGET_CPU_SMP := true

# Kernel
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom user_debug=30 msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 earlyprintk buildvariant=userdebug androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --kernel_offset 0x00008000

# Partitions
# Filesystem
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_PERSISTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel

# Treble
BOARD_NEEDS_VENDORIMAGE_SYMLINK := false
TARGET_COPY_OUT_VENDOR := vendor

# SELinux policies
# qcom sepolicy
#include device/qcom/sepolicy/sepolicy.mk

#BOARD_SEPOLICY_DIRS += \
        $(LOCAL_PATH)/sepolicy
