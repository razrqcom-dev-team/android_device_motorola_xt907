$(call inherit-product, device/motorola/vanquish-common/device.mk)

LOCAL_PATH := device/motorola/xt926dev

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

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/config/gps.conf:system/etc/gps.conf \

#safestrap support
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/kernelmodules/cfg80211.ko:system/lib/modules/prima/cfg80211.ko \
    $(LOCAL_PATH)/kernelmodules/prima_wlan.ko:system/lib/modules/prima/prima_wlan.ko

$(call inherit-product-if-exists, vendor/motorola/xt926dev/xt926dev-vendor.mk)
