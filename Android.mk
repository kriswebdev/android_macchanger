# (c) 2014 KrisWebDev
# License: This file (solely) is licenced under the GNU GPL v3
# > This intends to be compiled using CyanogenMod full source build system. Check 
# > Put sources in external/<module-name> folder in CM source root
# > Compile:
# $ . build/envsetup.sh
# $ croot
# $ mka airodump-ng
# > Copy $OUT/system/bin generated files to connected phone (USB debugging mode enabled). You can use mkap instead of mka to do that.
# > Run first all mka module-name (or mkap) to compile shared library dependencies, then run mmm (or mmmp) just for updates

LOCAL_PATH:=$(call my-dir)

MY_SRC := src/mac.c src/maclist.c src/netinfo.c src/main.c

MY_CFLAGS		:= -g -W -Wall -O3 -Wno-unused-but-set-variable -Wno-array-bounds -I $(LOCAL_PATH)/src -DPACKAGE="\"macchanger\"" -DVERSION="\"1.5.0\""
#  -DLISTDIR="\"/data/tmp/maclist\""


include $(CLEAR_VARS)
LOCAL_MODULE		:= macchanger
LOCAL_SRC_FILES		:= $(MY_SRC)
LOCAL_CFLAGS		+= $(MY_CFLAGS)
LOCAL_C_INCLUDES	:= 
LOCAL_STATIC_LIBRARIES  := 
LOCAL_SHARED_LIBRARIES  := 
include $(BUILD_EXECUTABLE)
