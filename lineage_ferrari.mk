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

PRODUCT_SYSTEM_NAME := RED8ACL1
PRODUCT_SYSTEM_DEVICE := RED8ACL1

PRODUCT_GMS_CLIENTID_BASE := android-$(PRODUCT_BRAND)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="ferrari-user 13 TP1A.220905.001 S.efdd7c-12480-1247f release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_NAME) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := $(PRODUCT_BRAND)/$(PRODUCT_DEVICE)/$(PRODUCT_SYSTEM_NAME):13/TPIA.220905.001/S.efdd7c-12480-1247:user/release-keys
