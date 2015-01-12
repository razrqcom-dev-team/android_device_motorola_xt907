#
# Copyright (C) 2015 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# This file includes all definitions that apply to ALL xt907 devices, and
# are also specific to xt907 devices
#
# Everything in this directory will become public

$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

$(call inherit-product, device/motorola/msm8960-common/msm8960.mk)

LOCAL_PATH := device/motorola/xt907

# xt907 specific overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Audio configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/snd_soc_msm_2x:system/etc/snd_soc_msm/snd_soc_msm_2x

# Media config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/media_profiles.xml:system/etc/media_profiles.xml

# Recovery/IDC
PRODUCT_COPY_FILES += \
    device/motorola/qcom-common/idc/atmxt-i2c.idc:system/usr/idc/atmxt-i2c.idc \
    device/motorola/qcom-common/idc/evfwd.idc:system/usr/idc/evfwd.idc \
    device/motorola/qcom-common/idc/atmxt-i2c.idc:root/vendor/firmware/atmxt-i2c.idc \
    vendor/motorola/xt907/proprietary/etc/firmware/atmxt-r2.tdat:root/vendor/firmware/atmxt-r2.tdat

# QCOM Display
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=240

# Telephony
PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.0x9e_not_callname=1 \
    persist.radio.mode_pref_nv10=1 \
    persist.radio.skip_data_check=1 \
    persist.radio.vrte_logic=2 \
    persist.ril.max.crit.qmi.fails=4 \
    ro.cdma.data_retry_config=max_retries=infinite,0,0,10000,10000,100000,10000,10000,10000,10000,140000,540000,960000 \
    ro.cdma.home.operator.alpha=Verizon \
    ro.cdma.home.operator.numeric=310004 \
    ro.cdma.homesystem=64,65,76,77,78,79,80,81,82,83 \
    ro.cdma.nbpcd=1 \
    ro.cdma.otaspnumschema=SELC,1,80,99 \
    ro.cdma.home.operator.isnan=1 \
    ro.com.google.clientidbase.ms=android-verizon \
    ro.com.google.clientidbase.am=android-verizon \
    ro.com.google.clientidbase.yw=android-verizon \
    ro.config.svdo=true \
    ro.gsm.data_retry_config=default_randomization=2000,max_retries=infinite,1000,1000,80000,125000,485000,905000 \
    ro.gsm.2nd_data_retry_config=max_retries=1,15000 \
    ro.mot.build.customerid=verizon \
    ro.mot.ignore_csim_appid=true \
    ro.telephony.default_network=10 \
    ro.telephony.get_imsi_from_sim=true \
    ro.telephony.gsm-routes-us-smsc=1 \
    telephony.lteOnCdmaDevice=1 \

$(call inherit-product, device/motorola/qcom-common/keychars/keychars.mk)
$(call inherit-product, device/motorola/qcom-common/keylayout/keylayout.mk)
$(call inherit-product, device/motorola/qcom-common/modules/nfc/nfc.mk)
$(call inherit-product, vendor/motorola/xt907/xt907-vendor.mk)
