#
# Copyright (C) 2011 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.

DEVICE_PACKAGE_OVERLAYS += device/htc/buzz/overlay

# Gallery 2D
PRODUCT_PACKAGES += Gallery

# Support files
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Media configuration xml file
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/media_profiles.xml:/system/etc/media_profiles.xml

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init.buzz.rc:root/init.buzz.rc \
    $(LOCAL_PATH)/ueventd.buzz.rc:root/ueventd.buzz.rc \
    $(LOCAL_PATH)/vold.fstab:system/etc/vold.fstab

# Keychars and keylayout files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/keychars/buzz-keypad.kcm.bin:system/usr/keychars/buzz-keypad.kcm.bin \
    $(LOCAL_PATH)/prebuilt/keychars/qwerty.kcm.bin:system/usr/keychars/qwerty.kcm.bin \
    $(LOCAL_PATH)/prebuilt/keychars/qwerty2.kcm.bin:system/usr/keychars/qwerty2.kcm.bin \
    $(LOCAL_PATH)/prebuilt/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    $(LOCAL_PATH)/prebuilt/keylayout/buzz-keypad.kl:system/usr/keylayout/buzz-keypad.kl \
    $(LOCAL_PATH)/prebuilt/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
    $(LOCAL_PATH)/prebuilt/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl

# Firmware
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/bcm4329.hcd:system/etc/firmware/bcm4329.hcd

PRODUCT_PACKAGES += \
    librs_jni \
    lights.buzz \
    sensors.buzz \
    gralloc.buzz \
    gps.buzz \
    copybit.buzz \
    libmm-omxcore \
    libOmxCore \
    libOmxVidEnc \
    com.android.future.usb.accessory

# Kernel Targets
ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/htc/buzz/prebuilt/kernel
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/bcm4329.ko:system/lib/modules/bcm4329.ko

$(call inherit-product-if-exists, vendor/htc/buzz/buzz-vendor.mk)

# stuff common to all HTC phones
$(call inherit-product, device/htc/common/common.mk)

$(call inherit-product, build/target/product/full_base.mk)

$(call inherit-product, device/common/gps/gps_eu_supl.mk)

PRODUCT_NAME := htc_buzz
PRODUCT_DEVICE := buzz
