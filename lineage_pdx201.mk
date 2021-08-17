#
# Copyright (C) 2020 The LineageOS Project
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

# Inherit framework first
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Setup dalvik vm configs
$(call inherit-product, frameworks/native/build/phone-xhdpi-4096-dalvik-heap.mk)

# Inherit from pdx201 device
$(call inherit-product, device/sony/pdx201/device.mk)

# Inherit some common LineageOS stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier
PRODUCT_NAME := lineage_pdx201
PRODUCT_DEVICE := pdx201
PRODUCT_BRAND := sony
PRODUCT_MODEL := Xperia 10 II
PRODUCT_MANUFACTURER := sony
PRODUCT_GMS_CLIENTID_BASE := android-sonymobile

# Fingerprint
BUILD_FINGERPRINT := Sony/XQ-AU52/XQ-AU52:11/59.1.A.2.96/059001A002009603521489921:user/release-keys
BUILD_DESCRIPTION := Sony/XQ-AU52/XQ-AU52 11 59.1.A.2.96 059001A000048503521489921 user/release-keys

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="$(BUILD_DESCRIPTION)"
