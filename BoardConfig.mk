
# Copyright (C) 2009 The Android Open Source Project
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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#
# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).

USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/zte/dana/BoardConfigVendor.mk

# inherit from common msm8960
-include device/zte/msm8960-common/BoardConfigCommon.mk
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := dana

# Include path
TARGET_SPECIFIC_HEADER_PATH := device/zte/dana/include
# Init
TARGET_PROVIDES_INIT_RC := true

BOARD_KERNEL_CMDLINE :=androidboot.hardware=dana user_debug=31 loglevel=7 kgsl.mmutype=gpummu
BOARD_KERNEL_BASE := 0x80200000
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01300000
BOARD_KERNEL_PAGESIZE := 2048

# Vold
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/msm_hsusb/gadget/lun%d/file"

# Wifi
WIFI_DRIVER_MODULE_NAME          := wlan
WIFI_DRIVER_MODULE_PATH          := "/system/lib/modules/wlan.ko"
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_WLAN_DEVICE                := qcwcn
WIFI_DRIVER_FW_PATH_STA          := "sta"
WIFI_DRIVER_FW_PATH_AP           := "ap"
WIFI_DRIVER_FW_PATH_P2P          := "p2p"

BOARD_HOSTAPD_DRIVER        := NL80211
BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_qcwcn
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_qcwcn

# QCOM GPS
#BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000
#BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := dana

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 83886080
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 83886080
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 684720128
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1064304640
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_SUPPRESS_EMMC_WIPE := true

TARGET_PROVIDES_LIBLIGHTS := true
TARGET_PREBUILT_KERNEL := device/zte/dana/kernel

# Kernel
TARGET_KERNEL_SOURCE := kernel/zte/msm8960
TARGET_KERNEL_CONFIG := cm_dana_defconfig
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.4.3

#BOARD_HAS_NO_SELECT_BUTTON := true
# Use this flag if the board has a ext4 partition larger than 2gb
BOARD_HAS_LARGE_FILESYSTEM := true
CM_RELEASE := true
BOARD_VOLD_DISC_HAS_MULTIPLE_MAJORS := false
BOARD_VOLD_MAX_PARTITIONS := 36
# Graphics
COMMON_GLOBAL_CFLAGS += -DQCOM_ROTATOR_KERNEL_FORMATS

