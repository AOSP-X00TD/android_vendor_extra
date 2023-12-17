EXTRA_PATH := vendor/extra

## Pixel Apps
$(call inherit-product-if-exists, $(EXTRA_PATH)/apps/GoogleApps.mk)

## Google Fonts
$(call inherit-product-if-exists, $(EXTRA_PATH)/google-fonts/GoogleFonts.mk)

# GMS
ifeq ($(WITH_GMS),true)
$(call inherit-product-if-exists, vendor/gapps/arm64/arm64-vendor.mk)
endif

# ih8sn
ifneq (,$(wildcard vendor/ih8sn))
$(call inherit-product-if-exists, $(EXTRA_PATH)/ih8sn/ih8sn.mk)
endif

## Overlays
PRODUCT_PACKAGE_OVERLAYS += $(EXTRA_PATH)/overlay
