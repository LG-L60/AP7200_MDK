LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(call all-subdir-c-files)

LOCAL_MODULE:= libosal
LOCAL_MODULE_TAGS := optional
LOCAL_C_INCLUDES := $(KERNEL_HEADERS) \
	$(LOCAL_PATH)/../include

LOCAL_CFLAGS := 

LOCAL_SHARED_LIBRARIES := libcutils

include $(BUILD_STATIC_LIBRARY)
