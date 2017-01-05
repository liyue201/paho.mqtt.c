
#########################################
##同步客户端库
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := mqttv3c

LOCAL_CPP_EXTENSION :=  .c

LOCAL_C_INCLUDES :=   $(LOCAL_PATH)
LOCAL_C_INCLUDES +=   $(LOCAL_PATH)/src


MY_CPP_LIST += $(wildcard $(LOCAL_PATH)/src/*.c)
MY_CPP_LIST -= $(LOCAL_PATH)/src/client/MQTTClient.c

LOCAL_SRC_FILES := $(MY_CPP_LIST:$(LOCAL_PATH)/%=%)

 
LOCAL_CFLAGS :=  -Wno-format-y2k -fexceptions -fpermissive -Wwrite-strings  -lpthread -std=c++0x -Wall -fPIC

LOCAL_LDLIBS += 
 
LOCAL_ALLOW_UNDEFINED_SYMBOLS := true
 
include $(BUILD_SHARED_LIBRARY)

##################################
##支持ssl的同步客户端库
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := mqttv3cs

LOCAL_CPP_EXTENSION :=  .c

LOCAL_C_INCLUDES :=   $(LOCAL_PATH)
LOCAL_C_INCLUDES +=   $(LOCAL_PATH)/src


MY_CPP_LIST += $(wildcard $(LOCAL_PATH)/src/*.c)
MY_CPP_LIST -= $(LOCAL_PATH)/src/client/MQTTClient.c

LOCAL_SRC_FILES := $(MY_CPP_LIST:$(LOCAL_PATH)/%=%)
 
LOCAL_CFLAGS :=  -Wno-format-y2k -fexceptions -fpermissive -Wwrite-strings  -lpthread -std=c++0x -Wall -fPIC  -DOPENSSL

LOCAL_LDLIBS += 

LOCAL_ALLOW_UNDEFINED_SYMBOLS := true
 

include $(BUILD_SHARED_LIBRARY)

##################################
##异步客户端库
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE    := mqttv3a

LOCAL_C_INCLUDES :=   $(LOCAL_PATH)
LOCAL_C_INCLUDES +=   $(LOCAL_PATH)/src


MY_CPP_LIST += $(wildcard $(LOCAL_PATH)/src/*.c)
MY_CPP_LIST += $(LOCAL_PATH)/src/async/MQTTAsync.c)

LOCAL_SRC_FILES := $(MY_CPP_LIST:$(LOCAL_PATH)/%=%)


LOCAL_CFLAGS :=  -Wno-format-y2k -fexceptions -fpermissive -Wwrite-strings  -lpthread -std=c++0x -Wall -fPIC

LOCAL_LDLIBS += 
 
LOCAL_ALLOW_UNDEFINED_SYMBOLS := true
 
include $(BUILD_SHARED_LIBRARY)


##################################
##支持ssl的异步客户端库
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE    := mqttv3as

LOCAL_C_INCLUDES :=   $(LOCAL_PATH)
LOCAL_C_INCLUDES +=   $(LOCAL_PATH)/src



MY_CPP_LIST += $(wildcard $(LOCAL_PATH)/src/*.c)
MY_CPP_LIST += $(LOCAL_PATH)/src/async/MQTTAsync.c)

LOCAL_SRC_FILES := $(MY_CPP_LIST:$(LOCAL_PATH)/%=%)

LOCAL_CFLAGS :=  -Wno-format-y2k -fexceptions -fpermissive -Wwrite-strings  -lpthread -std=c++0x -Wall -fPIC  -DOPENSSL

LOCAL_LDLIBS += 
 
LOCAL_ALLOW_UNDEFINED_SYMBOLS := true
 
include $(BUILD_SHARED_LIBRARY)