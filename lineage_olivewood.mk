# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from olivewood device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := redmi
PRODUCT_DEVICE := olivewood
PRODUCT_MANUFACTURER := redmi
PRODUCT_NAME := lineage_olivewood
PRODUCT_MODEL := Redmi 8A Dual

PRODUCT_GMS_CLIENTID_BASE := android-redmi
TARGET_VENDOR := redmi
TARGET_VENDOR_PRODUCT_NAME := olivewood
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="olivewood-user 9 PKQ1.190319.001 V11.0.4.0.PCQINXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Redmi/olivewood/olivewood:9/PKQ1.190319.001/V11.0.4.0.PCQINXM:user/release-keys
