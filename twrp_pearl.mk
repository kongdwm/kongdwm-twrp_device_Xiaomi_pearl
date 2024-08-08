#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Configure base.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Configure core_64_bit.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Configure launch_with_vendor_ramdisk.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/launch_with_vendor_ramdisk.mk)

# Configure emulated_storage.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Configure twrp config common.mk
$(call inherit-product, vendor/twrp/config/common.mk)

# Device specific configs
$(call inherit-product, device/xiaomi/pearl/device.mk)

# Device identifier
PRODUCT_DEVICE := pearl
PRODUCT_NAME := twrp_pearl
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 23054RA19C
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_RELEASE_NAME := Redmi Note 12T Pro

# Hide Reflash TWRP
PRODUCT_PROPERTY_OVERRIDES += ro.twrp.vendor_boot=true
