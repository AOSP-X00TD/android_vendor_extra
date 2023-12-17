# Google Apps
ifeq ($(WITH_GMS), true)
-include vendor/gapps/arm64/BoardConfigVendor.mk
endif

# Product
ifndef TARGET_COPY_OUT_PRODUCT
    TARGET_COPY_OUT_PRODUCT := system/product
endif

# System_ext
ifndef TARGET_COPY_OUT_SYSTEM_EXT
    TARGET_COPY_OUT_SYSTEM_EXT := system/system_ext
endif

## SELinux
BOARD_SEPOLICY_DIRS += \
    hardware/google/pixel-sepolicy/flipendo
