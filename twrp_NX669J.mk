#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from core Android build system
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from NX669J device tree
$(call inherit-product, device/nubia/NX669J/device.mk)

# Device details
PRODUCT_DEVICE := NX669J
PRODUCT_NAME := twrp_NX669J
PRODUCT_BRAND := nubia
PRODUCT_MODEL := NX669J
PRODUCT_MANUFACTURER := nubia

# Google Services client ID
PRODUCT_GMS_CLIENTID_BASE := android-nubia

# Build fingerprint and description
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="NX669J-user 11 RKQ1.210614.002 nubia.20230205.222839 release-keys"

BUILD_FINGERPRINT := nubia/NX669J/NX669J:11/RKQ1.210614.002/nubia.20230205.222839:user/release-keys

# Include ADB, Fastboot, and related tools
PRODUCT_PACKAGES += \
    adb \
    fastboot \
    mkbootimg

# Enable USB OTG Support
TW_INCLUDE_USBHOST := true

# Ensure proper partition detection
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true

# Default screen orientation (portrait or landscape)
TW_THEME := portrait_hdpi

# Enable touch support and graphical UI optimizations
TW_INCLUDE_NTFS_3G := true
TW_EXCLUDE_TWRPAPP := true
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_DEFAULT_BRIGHTNESS := 160

# Support system-as-root devices
TW_HAS_NO_RECOVERY_PARTITION := true
TW_USE_TOOLBOX := true

# Enable Data Decryption (if needed)
TW_INCLUDE_CRYPTO := true

# Disable AromaFM (optional)
TW_EXCLUDE_AROMAFM := true
