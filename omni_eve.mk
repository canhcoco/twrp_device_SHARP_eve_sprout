# Release name
PRODUCT_RELEASE_NAME := eve

LOCAL_PATH := device/SHARP/eve

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

#$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Release name
PRODUCT_RELEASE_NAME := eve

TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

include $(call all-subdir-makefiles)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := eve
PRODUCT_NAME := omni_eve
PRODUCT_BRAND := SHARP
PRODUCT_MODEL := 507SH
PRODUCT_MANUFACTURER := SHARP

# enable stock zip packages flash
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.build.product=507SH \
    ro.product.device=SG507SH
