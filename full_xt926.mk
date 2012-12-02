$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product, device/motorola/xt926dev/device_xt926dev.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := xt926dev
PRODUCT_NAME := cm_xt926dev
PRODUCT_BRAND := motorola
PRODUCT_MODEL := XT926
PRODUCT_MANUFACTURER := motorola
