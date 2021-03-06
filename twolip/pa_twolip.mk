#
# Copyright (C) 2020 The ParanoidAndroid Project
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

ifeq (pa_twolip,$(TARGET_PRODUCT))

# Inherit some common aosp stuff.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit from the PA configuration.
$(call inherit-product, vendor/pa/config/common_full_phone.mk)

# Inherit AOSP device configuration
$(call inherit-product, device/xiaomi/twolip/device.mk)

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080

# No GAPPS
TARGET_DISABLES_GAPPS := true

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := twolip
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := pa_twolip
PRODUCT_MODEL := Redmi Note 6 Pro

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="tulip-user 9 PKQ1.180904.001 V11.0.2.0.PEKMIXM release-keys"

endif
