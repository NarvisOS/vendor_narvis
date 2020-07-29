#
# Copyright (C) 2020 NarvisOS
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

# Versioning System
# narvis first version.
PRODUCT_VERSION_MAJOR = 1
PRODUCT_VERSION_MINOR = 0
#PRODUCT_VERSION_MAINTENANCE = 1.0
NARVIS_POSTFIX := -$(shell date +"%Y%m%d-%H%M")
ifdef NARVIS_BUILD_EXTRA
    NARVIS_POSTFIX := -$(NARVIS_BUILD_EXTRA)
endif

ifndef NARVIS_BUILD_TYPE
    NARVIS_BUILD_TYPE := Unofficial
endif

# Set all versions
NARVIS_VERSION := Narvis-$(NARVIS_BUILD)-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)$(NARVIS_POSTFIX)-$(NARVIS_BUILD_TYPE)

PRODUCT_PROPERTY_OVERRIDES += \
    BUILD_DISPLAY_ID=$(BUILD_ID) \
    narvis.ota.version=$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE) \
    ro.narvis.version=$(NARVIS_VERSION) \
    ro.narvis.buildtype=$(NARVIS_BUILD_TYPE)
