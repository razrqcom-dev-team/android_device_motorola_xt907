# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

DEVICE_PACKAGE_OVERLAYS += device/motorola/qcom-common/overlay-cm

# Media
PRODUCT_COPY_FILES += \
    device/motorola/msm8960-common/config/media_codecs.xml:system/etc/media_codecs.xml \
    frameworks/av/media/libstagefright/data/media_codecs_ffmpeg.xml:system/etc/media_codecs_ffmpeg.xml

# Boot animation
TARGET_SCREEN_HEIGHT := 960
TARGET_SCREEN_WIDTH := 540

PRODUCT_NAME := cm_xt907
TARGET_VENDOR_PRODUCT_NAME := smq_vzw
TARGET_VENDOR_DEVICE_NAME := smq

$(call inherit-product, device/motorola/xt907/full_xt907.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=motorola/smq_vzw/smq:4.4.2/KDA20.62-10.1/10:user/release-keys \
    PRIVATE_BUILD_DESC="smq_vzw-user 4.4.2 KDA20.62-10.1 10 release-keys"
