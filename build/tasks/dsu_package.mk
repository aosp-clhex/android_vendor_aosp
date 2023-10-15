# Copyright (C) 2021 StatiXOS
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

# -----------------------------------------------------------------
# StatiX DSU package

GSI_TARGETS := aosp_arm64 aosp_arm aosp_x86 aosp_x86_64

ifneq ($(filter $(TARGET_PRODUCT),$(GSI_TARGETS)),)

aosp_TARGET_PACKAGE := $(PRODUCT_OUT)/$(aosp_VERSION)-dsu.zip

.PHONY: dsu_package
dsu_package: $(INSTALLED_SYSTEMIMAGE_TARGET) $(INSTALLED_VBMETAIMAGE_TARGET) $(SOONG_ZIP)
	$(hide) cd $(PRODUCT_OUT) && $(SOONG_ZIP) -o $(aosp_TARGET_PACKAGE) -f system.img -f vbmeta.img
	@echo "Package Complete: $(aosp_TARGET_PACKAGE)" >&2
	@echo "Package size: `du -h $(aosp_TARGET_PACKAGE) | cut -f 1`"

endif
