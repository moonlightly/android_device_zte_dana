# Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/cdma.mk)

# Release name
PRODUCT_RELEASE_NAME := dana

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/zte/dana/device_dana.mk)

# Device naming
PRODUCT_DEVICE := dana
PRODUCT_NAME := cm_dana
PRODUCT_BRAND := zte
PRODUCT_MODEL := ZTE N970
PRODUCT_MANUFACTURER := ZTE

# Set build fingerprint / ID / Product Name etc.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=N970 BUILD_FINGERPRINT=ZTE/N970/dana:4.0.4/IMM76D/20121010.091516:user/release-keys PRIVATE_BUILD_DESC="N970-user 4.0.4 IMM76D 20121010.091516 release-keys" BUILD_NUMBER=79936
