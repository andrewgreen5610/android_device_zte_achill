#
# Copyright (C) 2016 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
LOCAL_PATH := $(call my-dir)

# Platform
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := achill

TARGET_BOARD_PLATFORM := msm8909
TARGET_BOARD_PLATFORM_GPU := qcom-adreno304
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := true

TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

# Inline Kernel Building
BOARD_KERNEL_BASE := 0x80000000
BOARD_RAMDISK_OFFSET := 0x02000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x3F ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 earlyprintk
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_KERNEL_SEPARATED_DT := true
TARGET_KERNEL_CONFIG := msm8909-achill_defconfig
TARGET_KERNEL_SOURCE := kernel/zte/achill

# Init
TARGET_PLATFORM_DEVICE_BASE := /devices/soc.0/

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x02000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x02000000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x08c60000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072

# Memory
MALLOC_IMPL := dlmalloc

# QCOM hardware
BOARD_USES_QCOM_HARDWARE := true

# Recovery
TARGET_RECOVERY_FSTAB := device/zte/achill/ramdisk/fstab.qcom
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"
TARGET_USERIMAGES_USE_EXT4 := true
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD

# SELinux
include device/qcom/sepolicy/sepolicy.mk

# TWRP
DEVICE_RESOLUTION := 854x480
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun0/file
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_INCLUDE_CRYPTO := true
TW_THEME := portrait_mdpi

