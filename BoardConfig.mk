#
# Copyright (C) 2015 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/samsung/j1pop3g/BoardConfigVendor.mk

# Architecture 
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_NO_BOOTLOADER := true
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

# define board
TARGET_BOARD_PLATFORM := sc8830
TARGET_BOOTLOADER_BOARD_NAME := SC7727S

# Kernel
BOARD_KERNEL_CMDLINE := console=ttyS1,115200n8
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
TARGET_PREBUILT_KERNEL := device/samsung/j1pop3g/prebuilt/kernel
# Use this if you use a prebuilt kernel
BOARD_MKBOOTIMG_ARGS := --second device/samsung/j1pop3g/prebuilt/second.bin

# lun
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/virtual/android_usb/android0/f_mass_storage/lun0/file
  
#TWRP fstab 
TARGET_RECOVERY_FSTAB := device/samsung/j1pop3g/rootdir/twrp.fstab
#cm specific fstab                                 -----------  use any one according to ur build flavour -----------
#TARGET_RECOVERY_FSTAB := device/samsung/j1pop3g/rootdir/recovery.fstab

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
DEVICE_RESOLUTION := 480x800

# Partition
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1258291200
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2457862144
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USERIMAGES_USE_EXT4 := true


# Twrp configs
TW_THEME := portrait_mdpi
SP1_NAME := "internal_sd"
SP1_BACKUP_METHOD := files
SP1_MOUNTABLE := 1
TW_INTERNAL_STORAGE_PATH := "/data/media/0"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_FLASH_FROM_STORAGE := true
TW_NO_REBOOT_BOOTLOADER := true
TW_MTP_DEVICE := /dev/usb_mtp_gadget
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_10x18.h\"
RECOVERY_GRAPHICS_USE_LINELENGTH := true
