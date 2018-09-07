LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE:= libfaac
LOCAL_SRC_FILES:=       \
        aacquant.c      \
        backpred.c      \
        bitstream.c     \
        channels.c      \
        fft.c           \
        filtbank.c      \
        frame.c         \
        huffman.c       \
        ltp.c           \
        midside.c       \
        psychkni.c      \
        tns.c           \
        util.c          \

LOCAL_C_INCLUDES :=     \
    $(LOCAL_PATH)       \
    $(FAAC_TOP)         \
    $(FAAC_TOP)/include
LOCAL_CFLAGS:= -DHAVE_CONFIG_H
include $(BUILD_SHARED_LIBRARY)