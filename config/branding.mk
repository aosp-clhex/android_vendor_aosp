#
# Copyright (C) 2018-2022 StatiXOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Set date and time
BUILD_DATE := $(shell date +%Y%m%d)

## Versioning System
# Set all versions
AOSP_BASE_VERSION := 14
AOSP_PLATFORM_VERSION := 14

# Fingerprint
ROM_FINGERPRINT := AOSP/$(PLATFORM_VERSION)/$(BUILD_DATE)
# Declare it's a AOSP build
AOSP_BUILD := true