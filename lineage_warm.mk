#
# Copyright (C) 2024 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from warm device.
$(call inherit-product, device/xiaomi/warm/device.mk)

## Device identifier
PRODUCT_DEVICE := warm
PRODUCT_NAME := lineage_warm
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 24116PCC1I
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc=$(call normalize-path-list, "warm warm 15 AQ3A.241213.002 OS2.0.203.0.VGVINXM release-keys")

BUILD_FINGERPRINT := Xiaomi/warm/warm:15/AQ3A.241213.002/OS2.0.203.0.VGVINXM:user/release-keys

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
