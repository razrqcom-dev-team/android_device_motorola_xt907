-include device/motorola/vanquish-common/BoardConfig.mk

# inherit from the proprietary version
-include vendor/motorola/xt926dev/BoardConfigVendor.mk

LOCAL_PATH := device/motorola/xt926dev

# Inline kernel building
TARGET_KERNEL_SOURCE := kernel/motorola/msm8960-common
TARGET_KERNEL_CONFIG := msm8960_mmi_defconfig
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel/zImage
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif
# copy all kernel modules under the "kerne/modules" directory to system/lib/modules
PRODUCT_COPY_FILES += $(shell \
	find $(LOCAL_PATH)/kernel/modules -name '*.ko' 2> /dev/null \
	| sed -r 's/^\/?(.*\/)([^/ ]+)$$/\1\2:system\/lib\/modules\/\2/' \
	| tr '\n' ' ')

BOARD_KERNEL_CMDLINE := console=/dev/null androidboot.hardware=qcom user_debug=31 loglevel=1 msm_rtb.filter=0x3F kgsl.mmutype=gpummu zcache
BOARD_KERNEL_BASE := 0x80200000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01600000
