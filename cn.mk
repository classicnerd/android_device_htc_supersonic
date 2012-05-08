# Inherit AOSP device configuration for supersonic.
$(call inherit-product, device/htc/supersonic/full_supersonic.mk)

# Inherit some common evervolv stuff.
$(call inherit-product, vendor/cn/config/common_full_phone.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := classic_supersonic
PRODUCT_BRAND := sprint
PRODUCT_DEVICE := supersonic
PRODUCT_MODEL := PC36100
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_supersonic BUILD_FINGERPRINT=sprint/htc_supersonic/supersonic:2.3.5/GRJ90/239674.3:user/release-keys PRIVATE_BUILD_DESC="4.67.651.3 CL239674 release-keys"

# Set up the product codename, build version & MOTD.
PRODUCT_CODENAME := Sinatra
PRODUCT_VERSION_DEVICE_SPECIFIC := 1

PRODUCT_MOTD :="Thank you for choosing classicnerd for you android experience.  \nYou can follow us at www.classicnerd.net. \nEnjoy the possbilities..."

PRODUCT_PACKAGES += \
    Camera

# Hot reboot
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/cn/overlay/hot_reboot

# Copy compatible prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/cn/prebuilt/wvga/media/bootanimation.zip:system/media/bootanimation.zip
