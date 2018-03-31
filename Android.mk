LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := \
    $(call all-java-files-under, src) \
    $(call all-proto-files-under, protos) \
    
LOCAL_PACKAGE_NAME := ProtoTest
LOCAL_SDK_VERSION := current

LOCAL_PROTOC_OPTIMIZE_TYPE := nano
LOCAL_PROTOC_FLAGS := --proto_path=$(LOCAL_PATH)/protos/
LOCAL_PROTO_JAVA_OUTPUT_PARAMS := enum_style=java

include $(BUILD_PACKAGE)
# ==================================================

#
# Launcher proto buffer jar used for development
#
include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(call all-proto-files-under, protos)

LOCAL_PROTOC_OPTIMIZE_TYPE := nano
LOCAL_PROTOC_FLAGS := --proto_path=$(LOCAL_PATH)/protos/ 
LOCAL_PROTO_JAVA_OUTPUT_PARAMS := enum_style=java

LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := launcher_proto_lib
LOCAL_IS_HOST_MODULE := true
LOCAL_STATIC_JAVA_LIBRARIES := host-libprotobuf-java-nano

include $(BUILD_HOST_JAVA_LIBRARY)

# ==================================================
include $(call all-makefiles-under,$(LOCAL_PATH))

