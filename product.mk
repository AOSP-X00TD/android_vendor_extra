## Pixel Apps
include vendor/extra/apps/GoogleApps.mk

## Google Fonts
include vendor/extra/google-fonts/GoogleFonts.mk

# GMS
$(call inherit-product-if-exists, vendor/gapps/arm64/arm64-vendor.mk)

## ih8sn
$(call inherit-product-if-exists, ih8sn/product.mk)

## Overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/extra/overlay
