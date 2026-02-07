LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),bold_n2)

include $(CLEAR_VARS)
LOCAL_MODULE := bold_n2-vendor
LOCAL_MODULE_OWNER := blu
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := proprietary/build.prop
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)
include $(BUILD_PREBUILT)

endif
