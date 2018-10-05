# Release name
PRODUCT_RELEASE_NAME := SG507SH

LOCAL_PATH := device/SHARP/eve_sprout

# Inherit from the common Open Source product configuration
$(call inherit-product, build/target/product/embedded.mk)
 
# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)
 
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

#$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

include $(call all-subdir-makefiles)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := eve_sprout
PRODUCT_NAME := omni_eve_sprout
PRODUCT_BRAND := SG
PRODUCT_MODEL := 507SH
PRODUCT_MANUFACTURER := SHARP

# enable stock zip packages flash
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.build.product=507SH \
    ro.product.device=eve_sprout
