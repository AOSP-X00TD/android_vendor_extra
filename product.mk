## Pixel Apps
include vendor/extra/apps/GoogleApps.mk

## Google Fonts
include vendor/extra/google-fonts/GoogleFonts.mk

# GMS
ifeq ($(WITH_GMS),true)
$(call inherit-product-if-exists, vendor/gapps/arm64/arm64-vendor.mk)
endif

## ih8sn
$(call inherit-product-if-exists, ih8sn/product.mk)

# Oplus cam
ifeq ($(WITH_OPLUSCAM),true)
$(call inherit-product-if-exists, vendor/oplus/camera/opluscamera.mk)
endif

## Overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/extra/overlay
