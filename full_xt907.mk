$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product, device/motorola/xt907/device_xt907.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := xt907
PRODUCT_NAME := full_xt907
PRODUCT_BRAND := motorola
PRODUCT_MODEL := XT907
PRODUCT_MANUFACTURER := motorola
