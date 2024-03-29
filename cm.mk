# Copyright (C) 2014 The CyanogenMod Project
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

# Inherit device configuration
$(call inherit-product, device/cmcc/m623c/full_m623c.mk)
#vendor/cmcc/m623c/BoardConfigVendor.mk
# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Assert
TARGET_OTA_ASSERT_DEVICE := m623c,M623C,wt86621,HM2014813

PRODUCT_NAME := cm_m623c
BOARD_VENDOR := cmcc
PRODUCT_DEVICE := m623c

PRODUCT_DEFAULT_LANGUAGE := zh
PRODUCT_DEFAULT_REGION := CN

PRODUCT_GMS_CLIENTID_BASE := android-cmcc
