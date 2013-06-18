## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := dana

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/zte/dana/device_dana.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := dana
PRODUCT_NAME := cm_dana
PRODUCT_BRAND := zte
PRODUCT_MODEL := N970
PRODUCT_MANUFACTURER := zte
PRODUCT_LOCALES := zh_CN zh_TW en_US

#PRODUCT_BUILD_PROP_OVERRIDES += "PRODUCT_NAME=dana PRODUCT_DESCRIPTION=N970-user 4.0.4 IMM76D 20121010.091516 release-keys BUILD_FINGERPRINT=ZTE/N970/dana:4.0.4/IMM76D/20121010.091516:user/release-keys"
