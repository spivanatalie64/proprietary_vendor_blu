# Automatically generated file. DO NOT MODIFY

PRODUCT_SOONG_NAMESPACES += \
    vendor/blu/bold_n2

PRODUCT_COPY_FILES += \
    vendor/blu/bold_n2/proprietary/build.prop:$(TARGET_COPY_OUT_VENDOR)/build.prop

# Copy all proprietary files
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,vendor/blu/bold_n2/proprietary/bin,$(TARGET_COPY_OUT_VENDOR)/bin) \
    $(call find-copy-subdir-files,*,vendor/blu/bold_n2/proprietary/etc,$(TARGET_COPY_OUT_VENDOR)/etc) \
    $(call find-copy-subdir-files,*,vendor/blu/bold_n2/proprietary/lib,$(TARGET_COPY_OUT_VENDOR)/lib) \
    $(call find-copy-subdir-files,*,vendor/blu/bold_n2/proprietary/lib64,$(TARGET_COPY_OUT_VENDOR)/lib64) \
    $(call find-copy-subdir-files,*,vendor/blu/bold_n2/proprietary/firmware,$(TARGET_COPY_OUT_VENDOR)/firmware)

