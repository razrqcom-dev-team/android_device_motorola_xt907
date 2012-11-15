$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product, device/motorola/xt926/device_xt926.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := xt926
PRODUCT_NAME := cm_xt926
PRODUCT_BRAND := motorola
PRODUCT_MODEL := XT926
PRODUCT_MANUFACTURER := motorola
