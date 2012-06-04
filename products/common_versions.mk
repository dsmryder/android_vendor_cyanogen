PRODUCT_VERSION_MAJOR = 7
PRODUCT_VERSION_MINOR = 2
PRODUCT_VERSION_MAINTENANCE = 0-rc1

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=g60style-r0.10

ifdef CYANOGEN_NIGHTLY
    CMVERSION := CyanogenMod-$(PRODUCT_VERSION_MAJOR)-$(shell date +%Y%m%d)-NIGHTLY-$(CM_BUILD)
else
    ifdef CYANOGEN_RELEASE
        CMVERSION := CyanogenMod-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE)$(PRODUCT_VERSION_DEVICE_SPECIFIC)-$(CM_BUILD)
    else
        CMVERSION := CyanogenMod-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE)$(PRODUCT_VERSION_DEVICE_SPECIFIC)-g60style-r0.10
    endif
endif

PRODUCT_PROPERTY_OVERRIDES += \
    ro.modversion=$(CMVERSION)