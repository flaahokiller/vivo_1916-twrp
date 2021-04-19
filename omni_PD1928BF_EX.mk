#
# Copyright (C) 2019 The TwrpBuilder Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Release name
PRODUCT_RELEASE_NAME := PD1928BF_EX

$(call inherit-product, build/target/product/embedded.mk)
$(call inherit-product, build/target/product/core_64_bit.mk)
# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := PD1928BF_EX
PRODUCT_NAME := omni_PD1928BF_EX
PRODUCT_BRAND := vivo
PRODUCT_MODEL := vivo 1916
PRODUCT_MANUFACTURER := vivo

# HACK: Set vendor patch level
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.build.security_patch=2099-12-31

PRODUCT_SYSTEM_PROPERTY_BLACKLIST += \
    ro.product.device \
    ro.product.name \
    ro.build.product \
    ro.bootimage.build.date.utc \
    ro.build.date.utc
