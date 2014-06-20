#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=vanir-MAGURO

# Inherit common product files.
$(call inherit-product, vendor/vanir/products/vanir_tuna.mk)
$(call inherit-product, vendor/vanir/products/gsm.mk)

# Inherit AOSP device configuration for maguro.
$(call inherit-product, device/samsung/maguro/full_maguro.mk)

# Setup device specific product configuration.
PRODUCT_NAME := vanir_maguro
PRODUCT_BRAND := google
PRODUCT_DEVICE := maguro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=yakju BUILD_FINGERPRINT="google/yakju/maguro:4.4.4/KTU84M/937116:user/release-keys" PRIVATE_BUILD_DESC="yakju-user 4.4.4 KTU84M 937116 release-keys"
