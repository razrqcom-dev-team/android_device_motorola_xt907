TARGET_USES_MOTOROLA_COMMON_LIBLIGHT:=true
TARGET_USES_MOTOROLA_COMMON_IDC:=true
TARGET_USES_MOTOROLA_COMMON_KEYCHARS:=true
TARGET_USES_MOTOROLA_COMMON_KEYLAYOUT:=true

$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

$(call inherit-product, device/motorola/msm8960-common/msm8960.mk)

LOCAL_PATH := device/motorola/xt907

# xt907 specific overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_LOCALES := en_US
PRODUCT_LOCALES += hdpi
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# QCOM Display
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=240

PRODUCT_PROPERTY_OVERRIDES += \
    telephony.lteOnCdmaDevice=1 \
    ro.config.svlte1x=true \
    persist.radio.eons.enabled= true \
    ro.cdma.nbpcd=1 \
    ro.cdma.home.operator.isnan=1 \
    ro.telephony.gsm-routes-us-smsc=1 \
    ro.cdma.otaspnumschema=SELC,1,80,99 \
    ro.cdma.data_retry_config=max_retries=infinite,0,0,10000,10000,100000,10000,10000,10000,10000,140000,540000,960000 \
    ro.gsm.data_retry_config=default_randomization=2000,max_retries=infinite,1000,1000,80000,125000,485000,905000 \
    ro.gsm.2nd_data_retry_config=max_retries=1,15000 \
    persist.radio.mode_pref_nv10=1 \
    persist.radio.vrte_logic=2 \
    persist.radio.0x9e_not_callname=1 \
    persist.radio.skip_data_check=1 \
    persist.ril.max.crit.qmi.fails=4 \
    ro.cdma.home.operator.numeric=310004 \
    ro.cdma.home.operator.alpha=Verizon \
    ro.cdma.homesystem=64,65,76,77,78,79,80,81,82,83 \
    ro.telephony.default_network=10 \
    ro.mot.ignore_csim_appid=true

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/gps.conf:system/etc/gps.conf

# IDC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/idc/atmxt-i2c.idc:system/usr/idc/atmxt-i2c.idc

$(call inherit-product-if-exists, vendor/motorola/xt907/xt907-vendor.mk)
