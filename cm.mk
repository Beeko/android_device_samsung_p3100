#
# Copyright (C) 2016 The CyanogenMod Project
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

# Release name
PRODUCT_RELEASE_NAME := p3100

# Boot animation
# TARGET_SCREEN_HEIGHT := 1024
TARGET_SCREEN_HEIGHT := 480
TARGET_SCREEN_WIDTH := 600

# Inherit common CM configuration
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# CyanogenMod specific overlay
DEVICE_PACKAGE_OVERLAYS += device/samsung/p3100/overlay/cm
DEVICE_PACKAGE_OVERLAYS += device/samsung/espresso-common/overlay/cm-common

# Inherit device specific configuration
$(call inherit-product, device/samsung/p3100/aosp_p3100.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := cm_p3100

# Set build fingerprint / ID / Product Name etc.
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="samsung/espressorfxx/espressorf:4.2.2/JDQ39/P3100XWDNA1:user/release-keys" \
    PRIVATE_BUILD_DESC="espressorfxx-user 4.2.2 JDQ39 P3100XWDNA1 release-keys"
