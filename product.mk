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
    GoogleContactsSyncAdapter \
    GoogleTTS

# Gapps etc
PRODUCT_COPY_FILES += \
    vendor/extra/prebuilt/product/etc/permissions/com.google.android.dialer.support.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/com.google.android.dialer.support.xml \
    vendor/extra/prebuilt/product/etc/permissions/privapp-permissions-google-p.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/privapp-permissions-google-p.xml \
    vendor/extra/prebuilt/product/etc/permissions/privapp-permissions-google-se.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/privapp-permissions-google-se.xml \
    vendor/extra/prebuilt/product/etc/sysconfig/google-hiddenapi-package-whitelist.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/google-hiddenapi-package-whitelist.xml \
    vendor/extra/prebuilt/product/etc/sysconfig/google.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/google.xml \
    vendor/extra/prebuilt/product/etc/sysconfig/google_build.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/google_build.xml \
    vendor/extra/prebuilt/product/etc/hosts:$(TARGET_COPY_OUT_SYSTEM)/etc/hosts

# Gapps framework
PRODUCT_PACKAGES += \
    com.google.android.dialer.support.jar

# Gapps lib
PRODUCT_COPY_FILES += \
    vendor/extra/prebuilt/product/lib/libjni_latinimegoogle.so:$(TARGET_COPY_OUT_PRODUCT)/lib/libjni_latinimegoogle.so \
    vendor/extra/prebuilt/product/lib64/libjni_latinimegoogle.so:$(TARGET_COPY_OUT_PRODUCT)/lib64/libjni_latinimegoogle.so

# Gapps priv-app
PRODUCT_PACKAGES += \
    AndroidMigratePrebuilt \
    GoogleFeedback \
    GoogleServicesFramework \
    PartnerSetupPrebuilt \
    Phonesky \
    PrebuiltGmsCore \
    SetupWizardPrebuilt

# Froko fonts
PRODUCT_COPY_FILES += \
    vendor/extra/prebuilt/product/fonts/RoundedMplus1c-Regular.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/RoundedMplus1c-Regular.ttf

