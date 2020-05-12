# Copyright (C) 2016-2017 AOSiP
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
NARVIS_VERSION = 0.5

TARGET_PRODUCT_SHORT := $(subst narvis_,,$(NARVIS_BUILD_TYPE))

ifndef NARVIS_BUILD_TYPE
    NARVIS_BUILD_TYPE := UNOFFICIAL
endif

# Set all versions
BUILD_DATE := $(shell date -u +%Y%m%d)
BUILD_TIME := $(shell date -u +%H%M)
NARVIS_BUILD_DATE := $(BUILD_DATE)-$(BUILD_TIME)
NARVIS_BUILD_VERSION := NarvisOS$(NARVIS_VERSION)-$(NARVIS_BUILD)-$(NARVIS_BUILD_DATE)-$(NARVIS_BUILD_TYPE)
ROM_FINGERPRINT := NarvisOS/$(PLATFORM_VERSION)/$(TARGET_PRODUCT_SHORT)/$(BUILD_TIME)

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
  ro.narvis.build.version=$(NARVIS_VERSION) \
  ro.narvis.build.date=$(BUILD_DATE) \
  ro.narvis.buildtype=$(NARVIS_BUILD_TYPE) \
  ro.narvis.fingerprint=$(ROM_FINGERPRINT) \
  ro.narvis.version=$(NARVIS_VERSION) \
  ro.narvis.device=$(NARVIS_BUILD) \
  ro.modversion=$(NARVIS_VERSION)
