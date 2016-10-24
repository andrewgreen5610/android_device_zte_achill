## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := achill

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/zte/achill/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := achill
PRODUCT_NAME := cm_achill
PRODUCT_BRAND := zte
PRODUCT_MODEL := achill
PRODUCT_MANUFACTURER := zte
