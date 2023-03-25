#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from ferrari device
$(call inherit-product, device/realme/ferrari/device.mk)

PRODUCT_DEVICE := ferrari
PRODUCT_NAME := lineage_ferrari
PRODUCT_BRAND := realme
PRODUCT_MODEL := Realme GT2 Pro
PRODUCT_PLATFORM := taro
PRODUCT_MANUFACTURER := $(PRODUCT_BRAND)

PRODUCT_GMS_CLIENTID_BASE := android-$(PRODUCT_BRAND)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="ferrari-user 13 TP1A.220905.001 1673257942194 release-keys"

BUILD_FINGERPRINT := $(PRODUCT_BRAND)/$(PRODUCT_DEVICE)/RMX3301:12/SKQ1.220617.001/1672321575442:user/release-keys
