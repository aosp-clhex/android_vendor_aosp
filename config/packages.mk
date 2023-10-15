#
# Copyright (C) 2018-2022 StatiXOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Include librsjni explicitly to workaround GMS issue
PRODUCT_PACKAGES += \
    librsjni

# Packages
PRODUCT_PACKAGES += \
    RepainterServicePriv \

# Camera
PRODUCT_PACKAGES += \
    Aperture

# Google Pixel Launcher
ifeq ($(INCLUDE_PIXEL_LAUNCHER),true)
PRODUCT_PACKAGES += \
    PixelLauncher
endif

# Updaters
ifeq ($(TARGET_SHIP_UPDATER),true)
PRODUCT_PACKAGES += \
    Updater
endif

# Some useful shell based utilities for Android
PRODUCT_PACKAGES += \
    htop \
    nano \
    vim

# Charger images
PRODUCT_PACKAGES += \
    charger_res_images \
    product_charger_res_images

-include vendor/aosp/config/overlay.mk
