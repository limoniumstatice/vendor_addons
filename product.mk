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

# Gapps app
PRODUCT_PACKAGES += \
    Chrome \
    GoogleContactsSyncAdapter \
    GoogleTTS \
    LatinIMEGooglePrebuilt \
    TrichromeLibrary \
    WebViewGoogle

# Gapps etc
PRODUCT_COPY_FILES += \
    vendor/extra/prebuilt/product/etc/permissions/com.google.android.maps.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/com.google.android.maps.xml \
    vendor/extra/prebuilt/product/etc/permissions/com.google.android.media.effects.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/com.google.android.media.effects.xml \
    vendor/extra/prebuilt/product/etc/permissions/privapp-permissions-google.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/privapp-permissions-google.xml \
    vendor/extra/prebuilt/product/etc/permissions/split-permissions-google.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/split-permissions-google.xml \
    vendor/extra/prebuilt/product/etc/preferred-apps/google.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/preferred-apps/google.xml \
    vendor/extra/prebuilt/product/etc/sysconfig/google-hiddenapi-package-whitelist.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/google-hiddenapi-package-whitelist.xml \
    vendor/extra/prebuilt/product/etc/sysconfig/google.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/google.xml \
    vendor/extra/prebuilt/product/etc/sysconfig/google_build.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/google_build.xml \
    vendor/extra/prebuilt/system/etc/hosts:$(TARGET_COPY_OUT_SYSTEM)/etc/hosts

# Gapps framework
PRODUCT_PACKAGES += \
    com.google.android.maps \
    com.google.android.media.effects

# Gapps priv-app
PRODUCT_PACKAGES += \
    AndroidMigratePrebuilt \
    ConfigUpdater \
    GoogleFeedback \
    GoogleOneTimeInitializer \
    GooglePartnerSetup \
    GoogleServicesFramework \
    Phonesky \
    PixelSetupWizard \
    PrebuiltGmsCore \
    SetupWizardPrebuilt \
    TurboPrebuilt \
    WellbeingPrebuilt

# Include {Lato,Rubik} fonts
$(call inherit-product-if-exists, external/google-fonts/lato/fonts.mk)
$(call inherit-product-if-exists, external/google-fonts/rubik/fonts.mk)

PRODUCT_COPY_FILES += \
    vendor/extra/prebuilt/system/fonts/RoundedMplus1c-Regular.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/RoundedMplus1c-Regular.ttf \
    $(call find-copy-subdir-files,*,vendor/extra/prebuilt/product/fonts,$(TARGET_COPY_OUT_PRODUCT)/fonts)
