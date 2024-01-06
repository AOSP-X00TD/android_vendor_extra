EXTRA_PATH := vendor/extra

# GMS
ifeq ($(WITH_GMS),true)
$(call inherit-product-if-exists, vendor/gapps/arm64/arm64-vendor.mk)
endif

# ih8sn
ifneq (,$(wildcard vendor/ih8sn))
$(call inherit-product-if-exists, $(EXTRA_PATH)/ih8sn/ih8sn.mk)
endif

# Overlays
PRODUCT_PACKAGE_OVERLAYS += \
    $(EXTRA_PATH)/overlay
