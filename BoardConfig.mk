##******************************************##
#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#
##******************************************##
DEVICE_PATH := device/realme/RM6785

##** For building with minimal manifest **##
ALLOW_MISSING_DEPENDENCIES := true

##** Build Rules **##
BUILD_BROKEN_DUP_RULES := true
BUILD_BROKEN_PREBUILT_ELF_FILES := true
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true

##** Architecture **##
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-2a-dotprod
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 := 
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := cortex-a76

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-2a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a76
TARGET_BOARD_SUFFIX := _64
# TARGET_USES_64_BIT_BINDER := true
TARGET_SUPPORTS_64_BIT_APPS := true
TARGET_IS_64_BIT := true

##** Bootloader **##
TARGET_BOOTLOADER_BOARD_NAME := RM6785
TARGET_NO_BOOTLOADER := true
TARGET_USES_UEFI := true

##** Platform **##
TARGET_BOARD_PLATFORM := MT6785
MTK_PLATFORM := mt6785
TARGET_BOARD_PLATFORM_GPU := mali-g76mc4
BOARD_HAS_MTK_HARDWARE := true
BOARD_USES_MTK_HARDWARE := true
MTK_HARDWARE := true

##** Assert **##
TARGET_OTA_ASSERT_DEVICE := RMX2155,RMX2155L1,RM6785,RMX2151,RM6785,RMX2156L1,RMX2161L1,RMX2163L1,RM6785

##** Kernel - config **##
BOARD_KERNEL_IMAGE_NAME := Image           
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
BOARD_KERNEL_CMDLINE += loop.max_part=70
BOARD_KERNEL_CMDLINE += androidboot.init_fatal_reboot_target=recovery
BOARD_KERNEL_BASE := 0x40078000                        
BOARD_KERNEL_PAGESIZE := 2048   
BOARD_KERNEL_OFFSET := 0x00008000                       
BOARD_RAMDISK_OFFSET := 0x07c08000 
BOARD_KERNEL_SECOND_OFFSET := 0xbff88000               
BOARD_KERNEL_TAGS_OFFSET := 0x0bc08000                                                    
BOARD_DTB_OFFSET := 0x0bc08000                         
BOARD_BOOTIMG_HEADER_VERSION := 2

##************************************************************************##
##** Kernel - prebuilt **##
BOARD_PREBUILT_DTBIMAGE_DIR := $(DEVICE_PATH)/prebuilts/dtb
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilts/kernel/kernel
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilts/dtbo/dtbo.img
##************************************************************************##

BOARD_INCLUDE_DTB_IN_BOOTIMG := true
BOARD_INCLUDE_RECOVERY_DTBO := true  

BOARD_MKBOOTIMG_ARGS += --base $(BOARD_KERNEL_BASE)
BOARD_MKBOOTIMG_ARGS += --pagesize $(BOARD_KERNEL_PAGESIZE)
BOARD_MKBOOTIMG_ARGS += --kernel_offset $(BOARD_KERNEL_OFFSET)
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --second_offset $(BOARD_KERNEL_SECOND_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_MKBOOTIMG_ARGS += --dtb_offset $(BOARD_DTB_OFFSET)
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOTIMG_HEADER_VERSION)

##** Clang - config **##
#TARGET_KERNEL_VERSION := 4.14
#TARGET_KERNEL_ARCH := arm64
#TARGET_KERNEL_HEADER_ARCH := arm64
#HOSTCFLAGS="-fuse-ld=lld -Wno-unused-command-line-argument"
#TARGET_KERNEL_SOURCE := kernel/realme/mt6785
#TARGET_KERNEL_CONFIG := RM6785_defconfig
#TARGET_KERNEL_CLANG_COMPILE := true
#TARGET_KERNEL_CLANG_VERSION := r510928
#TARGET_CLANG_WITH_GNU_BINUTILS := true
#TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-gnu-
#TARGET_KERNEL_CROSS_COMPILE_PREFIX_ARM32 := arm-linux-gnueabi-
#TARGET_KERNEL_CLANG_PATH := $(shell pwd)/prebuilts/clang/host/linux-x86/clang-r510928
#KERNEL_LD := LD=ld.lld
#KERNEL_SUPPORTS_LLVM_TOOLS := true
#TARGET_KERNEL_ADDITIONAL_FLAGS := \
    #LLVM=1 \
    #LLVM_IAS=1

##** Metadata **##
BOARD_USES_METADATA_PARTITION := true
BOARD_ROOT_EXTRA_FOLDERS += metadata

##** Partitions **##
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 102760448
BOARD_DTBOIMG_PARTITION_SIZE := 8388608
BOARD_CACHEIMAGE_PARTITION_SIZE := 452984832
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_ODMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEM_EXTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEMIMAGE_PARTITION_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := f2fs
TARGET_COPY_OUT_VENDOR := vendor
TARGET_COPY_OUT_PRODUCT := product
TARGET_COPY_OUT_ODM := odm
TARGET_COPY_OUT_SYSTEM_EXT := system_ext
TARGET_USES_MKE2FS := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
##**
BOARD_SUPER_PARTITION_SIZE := 9126805504
BOARD_SUPER_PARTITION_GROUPS := main
BOARD_MAIN_PARTITION_LIST := system vendor product odm system_ext
BOARD_MAIN_SIZE := 9122611200 # TODO: Fix hardcoded value

##** Crypto **##
PLATFORM_SECURITY_PATCH := 2099-12-31
VENDOR_SECURITY_PATCH := $(PLATFORM_SECURITY_PATCH)
PLATFORM_VERSION := 99.87.36
PLATFORM_VERSION_LAST_STABLE := $(PLATFORM_VERSION)
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_FBE := true
TW_INCLUDE_CRYPTO_FBE := true
TW_INCLUDE_FBE_METADATA_DECRYPT := true
TW_PREPARE_DATA_MEDIA_EARLY := true

##** AVB **##
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --set_hashtree_disabled_flag
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 3
BOARD_AVB_RECOVERY_KEY_PATH := external/avb/test/data/testkey_rsa4096.pem
BOARD_AVB_RECOVERY_ALGORITHM := SHA256_RSA4096
BOARD_AVB_RECOVERY_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
BOARD_AVB_RECOVERY_ROLLBACK_INDEX_LOCATION := 1
BOARD_AVB_VBMETA_SYSTEM := system
BOARD_AVB_VBMETA_SYSTEM_KEY_PATH := external/avb/test/data/testkey_rsa2048.pem
BOARD_AVB_VBMETA_SYSTEM_ALGORITHM := SHA256_RSA2048
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX_LOCATION := 1

##** Recovery **##
RECOVERY_GRAPHICS_USE_LINELENGTH := true
BOARD_USE_FRAMEBUFFER_ALPHA_CHANNEL := true
BOARD_SPRUPESS_EMMC_WIPE := true
RECOVERY_SDCARD_ON_DATA := true   
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_LARGE_FILESYSTEM := true                 
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
TARGET_RECOVERY_PIXEL_FORMAT := RGBA_8888
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery/root/system/etc/recovery.fstab
TARGET_SYSTEM_PROP := $(DEVICE_PATH)/properties/system.prop
TARGET_VENDOR_PROP := $(DEVICE_PATH)/properties/vendor.prop
TARGET_RECOVERY_DEVICE_DIRS += $(DEVICE_PATH)

##** Display Size & Density **##
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_DENSITY := 420

##** DRM **##
TARGET_ENABLE_MEDIADRM_64 := true

##** Charger **##
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGER_DISABLE_INIT_BLANK := true

##** System as root **##
BOARD_SUPPRESS_SECURE_ERASE := true

##** Additional binaries & libraries needed for recovery **##
TARGET_RECOVERY_DEVICE_MODULES += \
    libdmabufheap \
    libhidlmemory \
    libion \
    libnetutils \
    libxml2 \
    libkeymaster4 \
    libkeymaster41 \
    libpuresoftkeymasterdevice \
    ashmemd_aidl_interface-cpp \
    libashmemd_client

TW_RECOVERY_ADDITIONAL_RELINK_LIBRARY_FILES += \
    $(TARGET_OUT_SHARED_LIBRARIES)/libdmabufheap.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libhidlmemory.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libion.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libnetutils.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libxml2.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libkeymaster4.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libkeymaster41.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libpuresoftkeymasterdevice.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/ashmemd_aidl_interface-cpp.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libashmemd_client.so

##** TWRP Configuration	**##
TW_CLOCK_OFFSET := "PAKST-5;PAKDT"	
TW_TIME_ZONE_VAR := "PAKST-5;PAKDT"
TW_TIME_ZONE_GUISEL := "PAKST-5;PAKDT"	
TW_MILITARY_TIME := 1																																																																					
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_EXTRA_LANGUAGES := false
TW_SCREEN_BLANK_ON_BOOT := true
TW_MAX_BRIGHTNESS := 2047
TW_DEFAULT_BRIGHTNESS := 1424
TW_USE_TOOLBOX := true
TW_INCLUDE_FASTBOOTD := true
TW_FRAMERATE := 60
TW_OZIP_DECRYPT_KEY := 0000
TW_INCLUDE_FB2PNG := true
TW_INCLUDE_LIBRESETPROP := true
TW_INCLUDE_NTFS_3G := true
TW_INCLUDE_FUSE_EXFAT := true
TW_INCLUDE_FUSE_NTFS := true
TW_NO_LEGACY_PROPS := true
TW_SKIP_COMPATIBILITY_CHECK := true
TW_EXCLUDE_LPTOOLS := true
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_CUSTOM_CPU_TEMP_PATH := /sys/class/power_supply/battery/temp
TARGET_USE_CUSTOM_LUN_FILE_PATH := /config/usb_gadget/g1/functions/mass_storage.0/lun.%d/file
TW_INCLUDE_LOGICAL := my_product my_engineering my_company my_carrier my_region my_heytap my_stock my_preload
TW_HAS_USB_STORAGE := true
TW_MILITARY_TIME := true
ENABLE_CPUSETS := true
ENABLE_SCHEDBOOST := true
#TW_LOAD_VENDOR_BOOT_MODULES := true
#TW_LOAD_VENDOR_MODULES := "fpsgo.ko wlan_drv_gen4m.ko wmt_chrdev_wifi.ko wmt_drv.ko"
#TW_NEVER_UNMOUNT_SYSTEM := true
#TW_USE_NEW_MINADBD := true
#TW_NO_BIND_SYSTEM := true
#TW_SKIP_ADDITIONAL_FSTAB := true
#TW_FORCE_KEYMASTER_VER := true
TW_FORCE_CPUINFO_FOR_DEVICE_ID := true
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true 
#TW_SUPPORT_INPUT_1_2_HAPTICS := true
#TW_FORCE_USE_BUSYBOX := true
#TW_EXCLUDE_SUPERSU := true

##** Resolution **##
TW_THEME := portrait_hdpi

##** Version/Maintainer **##
TW_DEVICE_VERSION := RUI_V2.0_by_Gofraway71

##** Debug flags **##
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true

##** Excludes **##
TW_EXCLUDE_TWRPAPP := true
TW_EXCLUDE_APEX := true
TW_EXCLUDE_PYTHON := false

##** resetprop and magiskboot **##
TW_INCLUDE_RESETPROP := true
TW_INCLUDE_REPACKTOOLS := true

##** Configure Status bar icons "TWRP builds only" **##
TW_Y_OFFSET := 28
TW_H_OFFSET := -28
TW_CUSTOM_CPU_POS := 185
#TW_CUSTOM_BATTERY_POS := 916
#TW_CUSTOM_CLOCK_POS := 520
#TW_STATUS_ICONS_ALIGN := center

# Property Override
TW_OVERRIDE_SYSTEM_PROPS := "ro.build.version.sdk"

##** Custom TWRP Versioning **##
##** device version is optional - the default value is "0" if nothing is set in device tree **##
CUSTOM_TWRP_DEVICE_VERSION := RUI_V2.0

##** version prefix is optional - the default value is "LOCAL" if nothing is set in device tree **##
CUSTOM_TWRP_VERSION_PREFIX := by_Gofraway71



ifeq ($(CUSTOM_TWRP_VERSION),)
CUSTOM_TWRP_VERSION := $(shell date +%Y%m%d)-01
endif
