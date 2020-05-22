# Copyright (C) 2019-2020 FrokoROM Android Project
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

LOCAL_PATH := $(call my-dir)
include $(call all-subdir-makefiles,$(LOCAL_PATH))

DEVICE_PACKAGE_OVERLAYS += vendor/addons/overlay/common

ifeq ($(TARGET_HAS_FOD),true)
DEVICE_PACKAGE_OVERLAYS += vendor/addons/overlay-fod
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/addons/overlay-fod
endif

# Include {Lato,Rubik} fonts
$(call inherit-product-if-exists, external/google-fonts/lato/fonts.mk)
$(call inherit-product-if-exists, external/google-fonts/rubik/fonts.mk)

# Froko fonts
PRODUCT_COPY_FILES += \
    vendor/addons/prebuilt/system/fonts/RoundedMplus1c-Regular.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/RoundedMplus1c-Regular.ttf \
    $(call find-copy-subdir-files,*,vendor/addons/prebuilt/product/fonts,$(TARGET_COPY_OUT_PRODUCT)/fonts)
