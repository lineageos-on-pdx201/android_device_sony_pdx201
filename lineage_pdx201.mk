#
# Copyright (C) 2021-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit framework first
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from pdx201 device
$(call inherit-product, device/sony/pdx201/device.mk)

# Inherit some common LineageOS stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier
PRODUCT_NAME := lineage_pdx201
PRODUCT_DEVICE := pdx201
PRODUCT_BRAND := Sony
PRODUCT_MODEL := Xperia 10 II
PRODUCT_MANUFACTURER := Sony
PRODUCT_GMS_CLIENTID_BASE := android-sonymobile

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="XQ-AU52_EEA-user 12 59.2.A.0.463 059002A000046302402528438 release-keys" \
    BuildFingerprint=Sony/XQ-AU52_EEA/XQ-AU52:12/59.2.A.0.463/059002A000046302402528438:user/release-keys \
    DeviceProduct=pdx201
