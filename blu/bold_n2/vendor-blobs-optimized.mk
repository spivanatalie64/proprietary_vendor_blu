# Optimized vendor makefile for BLU Bold N2
# This file installs a curated set of vendor blobs instead of copying the entire
# proprietary tree. Use this when you want a smaller vendor partition and rely
# on the device's proprietary-files.txt to enumerate required blobs.

PRODUCT_SOONG_NAMESPACES += \
    vendor/blu/bold_n2

# copy only essential directories (adjust the patterns as needed)
PRODUCT_COPY_FILES += \
    vendor/blu/bold_n2/proprietary/build.prop:$(TARGET_COPY_OUT_VENDOR)/build.prop

# Core binaries and HALs
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,vendor/blu/bold_n2/proprietary/bin,$(TARGET_COPY_OUT_VENDOR)/bin) \
    $(call find-copy-subdir-files,*,vendor/blu/bold_n2/proprietary/bin/hw,$(TARGET_COPY_OUT_VENDOR)/bin/hw) \
    $(call find-copy-subdir-files,*,vendor/blu/bold_n2/proprietary/lib/hw,$(TARGET_COPY_OUT_VENDOR)/lib/hw) \
    $(call find-copy-subdir-files,*,vendor/blu/bold_n2/proprietary/lib,$(TARGET_COPY_OUT_VENDOR)/lib) \
    $(call find-copy-subdir-files,*,vendor/blu/bold_n2/proprietary/lib64,$(TARGET_COPY_OUT_VENDOR)/lib64) \
    $(call find-copy-subdir-files,*,vendor/blu/bold_n2/proprietary/firmware,$(TARGET_COPY_OUT_VENDOR)/firmware) \
    $(call find-copy-subdir-files,*,vendor/blu/bold_n2/proprietary/etc,$(TARGET_COPY_OUT_VENDOR)/etc)

# If you want to further trim blobs, replace the find-copy-subdir-files calls
# with explicit PRODUCT_COPY_FILES entries for each file listed in
# android_device_blu_bold_n2/proprietary-files.txt
