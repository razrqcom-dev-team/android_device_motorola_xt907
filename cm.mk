## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

$(call inherit-product, device/motorola/vanquish-common/cm.mk)

# Release name
PRODUCT_RELEASE_NAME := xt926

$(call inherit-product, device/motorola/xt926/full_xt926.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_BRAND=motorola PRODUCT_NAME=xt926 BUILD_PRODUCT=xt926 BUILD_FINGERPRINT=motorola/xt926/vanquish:4.0.4/7.7.1Q-144_VQW_S3-34:user/release-keys
