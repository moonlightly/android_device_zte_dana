#
# Copyright (C) 2011 The CyanogenMod Project
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, device/common/gps/gps_as_supl.mk)
# common msm8960 configs
#$(call inherit-product, device/zte/msm8960-common/msm8960.mk)

DEVICE_PACKAGE_OVERLAYS += device/zte/dana/overlay

# Boot ramdisk setup
PRODUCT_COPY_FILES += \
    device/zte/dana/ramdisk/init.dana.rc:root/init.dana.rc \
    device/zte/dana/ramdisk/init.dana.usb.rc:root/init.dana.usb.rc \
    device/zte/dana/ramdisk/ueventd.dana.rc:root/ueventd.dana.rc \
    device/zte/dana/ramdisk/init.qcom.class_core.sh:root/init.qcom.class_core.sh \
    device/zte/dana/ramdisk/init.qcom.class_main.sh:root/init.qcom.class_main.sh \
    device/zte/dana/ramdisk/init.qcom.sh:root/init.qcom.sh \
    device/zte/dana/ramdisk/init.qcom.usb.sh:root/init.qcom.usb.sh

# vold config
PRODUCT_COPY_FILES += \
    device/zte/dana/configs/vold.fstab:system/etc/vold.fstab

# GPS
PRODUCT_PACKAGES += \
    gps.dana \

# camera
PRODUCT_COPY_FILES += \
    device/zte/dana/prebuilt/camera.msm8960.so:system/lib/hw/camera.msm8960.so

# Modules
PRODUCT_COPY_FILES += \
    device/zte/dana/prebuilt/modules/prima/prima_wlan.ko:system/lib/modules/prima/prima_wlan.ko \
    device/zte/dana/prebuilt/modules/ansi_cprng.ko:system/lib/modules/ansi_cprng.ko \
    device/zte/dana/prebuilt/modules/bluetooth-power.ko:system/lib/modules/bluetooth-power.ko \
    device/zte/dana/prebuilt/modules/dma_test.ko:system/lib/modules/dma_test.ko \
    device/zte/dana/prebuilt/modules/eeprom_93cx6.ko:system/lib/modules/eeprom_93cx6.ko \
    device/zte/dana/prebuilt/modules/evbug.ko:system/lib/modules/evbug.ko \
    device/zte/dana/prebuilt/modules/gspca_main.ko:system/lib/modules/gspca_main.ko \
    device/zte/dana/prebuilt/modules/ks8851.ko:system/lib/modules/ks8851.ko \
    device/zte/dana/prebuilt/modules/lcd.ko:system/lib/modules/lcd.ko \
    device/zte/dana/prebuilt/modules/mmc_test.ko:system/lib/modules/mmc_test.ko \
    device/zte/dana/prebuilt/modules/msm-buspm-dev.ko:system/lib/modules/msm-buspm-dev.ko \
    device/zte/dana/prebuilt/modules/qce40.ko:system/lib/modules/qce40.ko \
    device/zte/dana/prebuilt/modules/qcedev.ko:system/lib/modules/qcedev.ko \
    device/zte/dana/prebuilt/modules/qcrypto.ko:system/lib/modules/qcrypto.ko \
    device/zte/dana/prebuilt/modules/radio-iris-transport.ko:system/lib/modules/radio-iris-transport.ko \
    device/zte/dana/prebuilt/modules/reset_modem.ko:system/lib/modules/reset_modem.ko \
    device/zte/dana/prebuilt/modules/scsi_wait_scan.ko:system/lib/modules/scsi_wait_scan.ko \
    device/zte/dana/prebuilt/modules/spidev.ko:system/lib/modules/spidev.ko \
    device/zte/dana/prebuilt/modules/wlan.ko:system/lib/modules/wlan.ko \
    device/zte/dana/prebuilt/modules/zte_krait_oc.ko:system/lib/modules/zte_krait_oc.ko

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio_policy.msm8960 \
    audio.primary.msm8960 \
    libalsa-intf \
    libaudioutils \
    audio_policy.conf

# Graphics
PRODUCT_PACKAGES += \
    copybit.msm8960 \
    gralloc.msm8960 \
    hwcomposer.msm8960 \
    libgenlock \
    libhwcexternal \
    libhwcservice \
    libmemalloc \
    liboverlay \
    libqdutils \
    libtilerenderer

# Camera
#PRODUCT_PACKAGES += \
#    camera.msm8960

# Lights
PRODUCT_PACKAGES += \
    lights.msm8960

# OMX
PRODUCT_PACKAGES += \
    libdivxdrmdecrypt \
    libI420colorconvert \
    libmm-omxcore \
    libOmxCore \
    libOmxVdec \
    libOmxVenc \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libstagefrighthw

# Power
PRODUCT_PACKAGES += \
    power.msm8960

# HDMI
PRODUCT_PACKAGES += \
    hdmid

# QCOM rngd
PRODUCT_PACKAGES += \
    qrngd

# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/base/nfc-extras/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardwardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.compass.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

# Extra properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.setupwizard.enable_bypass=1 \
    dalvik.vm.lockprof.threshold=500 \
    ro.com.google.locationfeatures=1 \
    dalvik.vm.dexopt-flags=m=y

# We have enough space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# Set build date
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
#PRODUCT_AAPT_PREF_CONFIG := xhdpi
#PRODUCT_LOCALES += zh_CN xhdpi

# call the proprietary setup
$(call inherit-product-if-exists, vendor/zte/dana/dana-vendor.mk)

# call dalvik heap config
$(call inherit-product-if-exists, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

# Discard inherited values and use our own instead.
PRODUCT_DEVICE := dana
PRODUCT_NAME := dana
PRODUCT_BRAND := zte
PRODUCT_MODEL := ZTE N970
PRODUCT_MANUFACTURER := ZTE
