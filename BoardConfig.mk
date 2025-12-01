# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/warm

# Kernel
KERNEL_PATH := $(DEVICE_PATH)-kernel

# Inherit from sm4635-common
include device/xiaomi/sm4635-common/BoardConfigCommon.mk

# OTA
TARGET_OTA_ASSERT_DEVICE := warm

# Properties
TARGET_ODM_PROP += $(COMMON_PATH)/configs/properties/odm.prop

# Inherit from the proprietary version

include vendor/xiaomi/warm/BoardConfigVendor.mk

