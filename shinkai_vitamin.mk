# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from the custom device configuration.
$(call inherit-product, device/oneplus/vitamin/device.mk)

# Inherit from the LineageOS configuration.
$(call inherit-product, vendor/custom/config/common_full_phone.mk)

#Inherti ViperFx
$(call inherit-product, packages/apps/ViPER4AndroidFX/config.mk)

PRODUCT_BRAND := OnePlus
PRODUCT_DEVICE := vitamin
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_MODEL := PHP110
PRODUCT_NAME := shinkai_vitamin
PERF_ANIM_OVERRIDE := true

SHINKAI_MAINTAINER := ShoreKeeper

#lunastuff
LUNARIS_BUILD_TYPE := UNOFFICIAL
TARGET_OPTIMIZED_DEXOPT := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_DISABLE_MATLOG:= true
SURFACE_FLINGER_BOOST := true
USE_REALITY_ENGINE := false
WITH_GMS := true
TARGET_CUSTOM_UDFPS := true

# Build Google live wallpapers  (Only full gms)
TARGET_INCLUDE_LIVE_WALLPAPERS := true

TARGET_SUPPORTS_GOOGLE_TELEPHONY := true

# Set Boot Animation Resolution
TARGET_BOOT_ANIMATION_RES := 1080

# Build Google Files
TARGET_SUPPORTS_GOOGLE_FILES := true

# Build Google Recoder
TARGET_SUPPORTS_GOOGLE_RECORDER := true

# Build Photos app (Default true in Full GMS)
TARGET_INCLUDE_PHOTOS := true

# Build Pixel Weather
TARGET_INCLUDE_WEATHER := true

# Ship BCR
WITH_BCR := true

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="sys_mssi_64_cn_armv82-user 15 AP3A.240617.008 1761016969111 release-keys" \
    BuildFingerprint=OnePlus/PHP110/OP5927:15/AP3A.240617.008/T.207f82b-1_1:user/release-keys \
    DeviceName=OP5927 \
    DeviceProduct=PHP110 \
    SystemDevice=OP5927 \
    SystemName=PHP110
