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
$(call inherit-product, device/realme/jennie/device.mk)

PRODUCT_DEVICE := jennie
PRODUCT_NAME := lineage_jennie
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX3551
PRODUCT_PLATFORM := taro
PRODUCT_MANUFACTURER := $(PRODUCT_BRAND)

PRODUCT_GMS_CLIENTID_BASE := android-$(PRODUCT_BRAND)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="RMX3551-user 13 TP1A.220905.001 S.efdd7c-12480-1247f release-keys" \

BUILD_FINGERPRINT := $(PRODUCT_BRAND)/$(PRODUCT_DEVICE)/$(PRODUCT_MAME):13/TPIA.220905.001/S.efdd7c-12480-1247:user/release-keys
