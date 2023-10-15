# Copyright (C) 2017 Unlegacy-Android
# Copyright (C) 2017 The LineageOS Project
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
# StatiX fastboot update package

aosp_TARGET_UPDATEPACKAGE := $(PRODUCT_OUT)/$(aosp_VERSION)-img.zip

.PHONY: updatepackage
updatepackage: $(INTERNAL_UPDATE_PACKAGE_TARGET)
	$(hide) ln -f $(INTERNAL_UPDATE_PACKAGE_TARGET) $(aosp_TARGET_UPDATEPACKAGE)
#	$(hide) $(MD5SUM) $(aosp_TARGET_UPDATEPACKAGE) | sed "s|$(PRODUCT_OUT)/||" > $(aosp_TARGET_UPDATEPACKAGE).md5sum
	@echo "Package Complete: $(aosp_TARGET_UPDATEPACKAGE)" >&2
	@echo "Package size: `du -h $(aosp_TARGET_UPDATEPACKAGE) | cut -f 1`"
