#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from NX669J device
$(call inherit-product, device/nubia/NX669J/device.mk)

PRODUCT_DEVICE := NX669J
PRODUCT_NAME := twrp_NX669J
PRODUCT_BRAND := nubia
PRODUCT_MODEL := NX669J
PRODUCT_MANUFACTURER := nubia

PRODUCT_GMS_CLIENTID_BASE := android-nubia

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="NX669J-user 11 RKQ1.210614.002 nubia.20230205.222839 release-keys"

BUILD_FINGERPRINT := nubia/NX669J/NX669J:11/RKQ1.210614.002/nubia.20230205.222839:user/release-keys
