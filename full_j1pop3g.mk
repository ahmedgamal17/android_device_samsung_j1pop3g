# Copyright (C) 2014 The CyanogenMod Project
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

LOCAL_PATH := device/samsung/j1pop3g

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(LOCAL_PATH)/device.mk)

DEVICE_PACKAGE_OVERLAYS := $(LOCAL_PATH)/overlay

# Media config
MEDIA_CONFIGS := \
	frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml \
	frameworks/av/media/libstagefright/data/media_codecs_google_video.xml \
	frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml

PRODUCT_COPY_FILES := \
	$(foreach f,$(MEDIA_CONFIGS),$(f):system/etc/$(notdir $(f)))


# Bluetooth config
BLUETOOTH_CONFIGS := \
	$(LOCAL_PATH)/configs/bluetooth/bt_vendor.conf

PRODUCT_COPY_FILES += \
	$(foreach f,$(BLUETOOTH_CONFIGS),$(f):system/etc/bluetooth/$(notdir $(f)))


# Bluetooth
PRODUCT_PACKAGES += \
	libbluetooth_jni



# Bluetooth
PRODUCT_PACKAGES += \
	bluetooth.default \
	audio.a2dp.default


WIFI_CONFIGS := \
	$(LOCAL_PATH)/configs/wifi/wpa_supplicant.conf \
	$(LOCAL_PATH)/configs/wifi/wpa_supplicant_overlay.conf \
	$(LOCAL_PATH)/configs/wifi/p2p_supplicant_overlay.conf

PRODUCT_COPY_FILES := \
	$(foreach f,$(WIFI_CONFIGS),$(f):system/etc/wifi/$(notdir $(f)))

# Charger
PRODUCT_PACKAGES += \
	charger \
	charger_res_images

# Permissions
PERMISSION_XML_FILES := \
	$(LOCAL_PATH)/permissions/platform.xml \
	frameworks/native/data/etc/handheld_core_hardware.xml \
	frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml \
	frameworks/native/data/etc/android.hardware.camera.front.xml \
	frameworks/native/data/etc/android.hardware.camera.xml \
	frameworks/native/data/etc/android.hardware.bluetooth_le.xml \
	frameworks/native/data/etc/android.hardware.location.gps.xml \
	frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.xml \
	frameworks/native/data/etc/android.hardware.telephony.gsm.xml \
	frameworks/native/data/etc/android.hardware.usb.accessory.xml \
	frameworks/native/data/etc/android.software.sip.voip.xml \
	frameworks/native/data/etc/android.software.sip.xml \
	frameworks/native/data/etc/android.hardware.wifi.xml \
	frameworks/native/data/etc/android.hardware.wifi.direct.xml

PRODUCT_COPY_FILES := \
	$(foreach f,$(PERMISSION_XML_FILES),$(f):system/etc/permissions/$(notdir $(f)))

# Scripts
SCRIPTS_FILES := \
	$(LOCAL_PATH)/scripts/set_freq.sh \
	$(LOCAL_PATH)/scripts/zram.sh

PRODUCT_COPY_FILES := \
	$(foreach f,$(SCRIPTS_FILES),$(f):system/bin/$(notdir $(f)))

# Set default USB interface
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	persist.sys.usb.config=mtp

# Device props
PRODUCT_PROPERTY_OVERRIDES += \
	keyguard.no_require_sim=true \
	ro.kernel.android.checkjni=0 \
	dalvik.vm.checkjni=false

# ART device props
PRODUCT_PROPERTY_OVERRIDES += \
	dalvik.vm.dex2oat-flags=--no-watch-dog \
	dalvik.vm.dex2oat-filter=everything \
	dalvik.vm.image-dex2oat-filter=everything \
	ro.sys.fw.dex2oat_thread_count=4

# Support for Browser's saved page feature. This allows
# for pages saved on previous versions of the OS to be
# viewed on the current OS.
PRODUCT_PACKAGES += \
	libskia_legacy

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := full_j1pop3g
PRODUCT_DEVICE := j1pop3g
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SM-J110H
