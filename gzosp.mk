# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

# Inherit some common Gzosp stuff.
$(call inherit-product, vendor/gzosp/config/common_full_phone.mk)
#$(call inherit-product, vendor/gzosp/config/caf_fw.mk)

# Inherit device configuration
$(call inherit-product, device/moto/shamu/aosp_shamu.mk)

#DEVICE_PACKAGE_OVERLAYS += device/moto/shamu/overlay-gzr

## Device identifier. This must come after all inclusions
PRODUCT_NAME := gzosp_shamu
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 6

TARGET_VENDOR := moto

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=shamu \
    BUILD_FINGERPRINT=google/shamu/shamu:7.1.1/N6F27M/4299435:user/release-keys \
    PRIVATE_BUILD_DESC="shamu-user 7.1.1 N6F27M 4299435 release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    DEVICE_MAINTAINERS="John Brewer (TheRingMaster), Mirko Weser (fraz14)"
