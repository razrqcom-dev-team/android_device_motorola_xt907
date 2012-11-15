$(call inherit-product, device/motorola/vanquish-common/device.mk)

LOCAL_PATH := device/motorola/xt926

PRODUCT_PROPERTY_OVERRIDES += \
	persist.radio.eons.enabled= true


$(call inherit-product-if-exists, vendor/motorola/xt926/xt926-vendor.mk)
