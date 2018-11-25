## Specify phone tech before including full_phone

# Release name
PRODUCT_RELEASE_NAME := g50

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/haier/g50/device_g50.mk)

TARGET_SCREEN_HEIGHT := 854
TARGET_SCREEN_WIDTH := 480

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := g50
PRODUCT_NAME := lineage_g50
PRODUCT_BRAND := Haier
PRODUCT_MODEL := G50
PRODUCT_MANUFACTURER := Haier

PRODUCT_GMS_CLIENTID_BASE := android-haier

# Available languages
PRODUCT_LOCALES := en_US 