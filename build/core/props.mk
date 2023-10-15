# Build fingerprint
ifneq ($(BUILD_FINGERPRINT),)
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
endif

ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.aosp.version=$(AOSP_BASE_VERSION)-$(aosp_BUILD_TYPE)-$(BUILD_DATE) \
    ro.aosp.base.version=$(AOSP_BASE_VERSION) \
    ro.mod.version=$(BUILD_ID)-$(BUILD_DATE)-$(AOSP_BASE_VERSION) \
    ro.aosp.fingerprint=$(ROM_FINGERPRINT) \
    ro.aosp.device=$(TARGET_DEVICE)
