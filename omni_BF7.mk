#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit some common pbrp stuff.
$(call inherit-product, vendor/pb/config/common.mk)

# Inherit from BF7 device
$(call inherit-product, device/tecno/BF7/device.mk)

PRODUCT_DEVICE := BF7
PRODUCT_NAME := omni_BF7
PRODUCT_BRAND := TECNO
PRODUCT_MODEL := TECNO pop 7 pro
PRODUCT_MANUFACTURER := tecno

PRODUCT_GMS_CLIENTID_BASE := android-tecno
