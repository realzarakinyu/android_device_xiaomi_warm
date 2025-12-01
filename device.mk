#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm4635-common
$(call inherit-product, device/xiaomi/sm4635-common/common.mk)

# Get non-open-source specific aspects
$(call inherit-product, vendor/xiaomi/warm/warm-vendor.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1640
TARGET_SCREEN_WIDTH := 720

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *
PRODUCT_PACKAGES += \
    FrameworksResWarm \
    SettingsOverlayWarm \
    SystemUIResWarm

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)