# Inherit common board flags
include device/samsung/sm7150-common/BoardConfigCommon.mk

DEVICE_PATH := device/samsung/a71n

# Platform
#TARGET_SPECIFIC_HEADER_PATH += $(DEVICE_PATH)/include

# Assert
TARGET_OTA_ASSERT_DEVICE := a71n

# HIDL
DEVICE_FRAMEWORK_MANIFEST_FILE := $(DEVICE_PATH)/framework_manifest.xml

# Kernel
TARGET_KERNEL_CONFIG := sm7150_sec_defconfig
#TARGET_KERNEL_VARIANT_CONFIG := vendor/variant_x1q_chn_openx_defconfig
#KERNEL_LD := DEBUG_DEFCONFIG=vendor/aosp_defconfig

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth/include

# Display
TARGET_SCREEN_DENSITY := 420

# Properties
TARGET_PRODUCT_PROP += $(DEVICE_PATH)/product.prop

# SELinux
#BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
#    $(DEVICE_PATH)/sepolicy/private

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += $(DEVICE_PATH)
