#
# Copyright (C) 2023 StatiXOS
# SPDX-License-Identifier: Apache-2.0
#

#
# Statix Release Package (Builds OTA and Fastboot packages)
#

# Package names
aosp_TARGET_UPDATEPACKAGE := $(PRODUCT_OUT)/$(aosp_VERSION)-img.zip
aosp_TARGET_PACKAGE := $(PRODUCT_OUT)/$(aosp_VERSION).zip

.PHONY: aosprelease
aosprelease: $(INTERNAL_UPDATE_PACKAGE_TARGET) $(INTERNAL_OTA_PACKAGE_TARGET)
	$(hide) ln -f $(INTERNAL_UPDATE_PACKAGE_TARGET) $(aosp_TARGET_UPDATEPACKAGE)
	$(hide) ln -f $(INTERNAL_OTA_PACKAGE_TARGET) $(aosp_TARGET_PACKAGE)
	@echo "============================================================================"
	@echo "Fastboot: $(aosp_TARGET_UPDATEPACKAGE)" >&2
	@echo "Size: `du -h $(aosp_TARGET_UPDATEPACKAGE) | cut -f 1`"
	@echo "============================================================================"
	@echo "OTA: $(aosp_TARGET_PACKAGE)" >&2
	@echo "Size: `du -h $(aosp_TARGET_PACKAGE) | cut -f 1`"
	@echo "============================================================================"
