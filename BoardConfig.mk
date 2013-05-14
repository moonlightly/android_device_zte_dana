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

# Bootloader
BOARD_VENDOR := zte
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := dana

# Platform
TARGET_BOARD_PLATFORM := msm8960
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

# Architecture
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_CPU_SMP := true
TARGET_USE_KRAIT_BIONIC_OPTIMIZATION := true

# Flags for Krait CPU
COMMON_GLOBAL_CFLAGS += -D__ARM_USE_PLD -D__ARM_CACHE_LINE_SIZE=64
TARGET_GLOBAL_CFLAGS += -mfpu=neon-vfpv4 -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon-vfpv4 -mfloat-abi=softfp

# Krait optimizations
TARGET_USE_KRAIT_BIONIC_OPTIMIZATION := true
TARGET_USE_KRAIT_PLD_SET := true
TARGET_KRAIT_BIONIC_PLDOFFS := 10
TARGET_KRAIT_BIONIC_PLDTHRESH := 10
TARGET_KRAIT_BIONIC_BBTHRESH := 64
TARGET_KRAIT_BIONIC_PLDSIZE := 64

# Use libril in the device tree
#BOARD_PROVIDES_LIBRIL := true

# Boot animation
TARGET_SCREEN_HEIGHT := 960
TARGET_SCREEN_WIDTH := 540

# Lights
TARGET_PROVIDES_LIBLIGHTS := true

# Include path
TARGET_SPECIFIC_HEADER_PATH := device/zte/dana/include

# Preload bootanimation
TARGET_BOOTANIMATION_PRELOAD := true

# QCOM hardware
BOARD_USES_QCOM_HARDWARE := true

# Audio
BOARD_USES_ALSA_AUDIO := true
BOARD_USES_FLUENCE_INCALL := true
BOARD_USES_SEPERATED_AUDIO_INPUT := true
TARGET_USES_QCOM_COMPRESSED_AUDIO := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
#BOARD_HAVE_BLUETOOTH_BCM := true
TARGET_CUSTOM_BLUEDROID := ../../../device/zte/dana/bluetooth/bluetooth.c

# FM radio
#BOARD_HAVE_QCOM_FM := true
#COMMON_GLOBAL_CFLAGS += -DQCOM_FM_ENABLED

# Camera
COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB
BOARD_NEEDS_MEMORYHEAPPMEM := true

# QCOM GPS
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := dana
BOARD_USES_QCOM_GPS := true

# Graphics
COMMON_GLOBAL_CFLAGS += -DQCOM_NO_SECURE_PLAYBACK
USE_OPENGL_RENDERER := true
TARGET_NO_HW_VSYNC := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_ION := true
#TARGET_QCOM_AUDIO_VARIANT := caf
TARGET_QCOM_DISPLAY_VARIANT := legacy
BOARD_EGL_CFG := device/zte/dana/configs/egl.cfg

# Wifi
WIFI_DRIVER_MODULE_NAME          := prima_wlan
WIFI_DRIVER_MODULE_PATH          := "/system/lib/modules/prima/prima_wlan.ko"
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_WLAN_DEVICE                := qcwcn

# Webkit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true

# USB
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file

# Filesystem
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16776704
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1744829440
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2550136320
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_VOLD_MAX_PARTITIONS := 36

# Kernel
BOARD_KERNEL_BASE := 0x80200000
BOARD_KERNEL_PAGE_SIZE := 2048
BOARD_KERNEL_CMDLINE := androidboot.hardware=dana user_debug=31 loglevel=7 kgsl.mmutype=gpummu
#BOARD_FORCE_RAMDISK_ADDRESS := 0x81500000
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01300000
TARGET_KERNEL_SOURCE := kernel/zte/msm8960
TARGET_KERNEL_CONFIG := cm_dana_defconfig
TARGET_PREBUILT_KERNEL := device/zte/dana/prebuilt/kernel

# Recovery
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
BOARD_USES_MMCUTILS := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_NO_SELECT_BUTTON := true
