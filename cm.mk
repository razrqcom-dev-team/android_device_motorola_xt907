## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

$(call inherit-product, device/motorola/vanquish-common/cm.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 960
TARGET_SCREEN_WIDTH := 540


# Release name
PRODUCT_RELEASE_NAME := xt907

$(call inherit-product, device/motorola/xt907/full_xt907.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_BRAND=motorola PRODUCT_NAME=xt907 BUILD_PRODUCT=xt907 BUILD_FINGERPRINT=motorola/xt907/vanquish:4.0.4/7.7.1Q-144_VQW_S3-34:user/release-keys
