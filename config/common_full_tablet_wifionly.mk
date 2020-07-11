# Inherit common stuff
$(call inherit-product, vendor/narvis/config/common.mk)
# Include AOSiP LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/overlay/dictionaries
