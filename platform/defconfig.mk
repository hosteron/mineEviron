# COPYRIGHT_CHUNFENG #
PLATFORM_VER ?= $(shell cat $(PLATFORM_DIR)/VERSION)

#daogou || cubie
BOARD ?= daogou 

REMOTE_HOST ?= 127.0.0.1
SVR_DEF_USER ?= chunfeng
SVN_SRV_USER ?= public

SRC_RELEASE_PATH ?= /data/source/release
SRC_RELEASE_HOME_PATH ?= /data/source/release/home
SRC_RELEASE_URI ?= $(REMOTE_HOST):/data/source/release
SRC_RELEASE_HOME_URI ?= $(REMOTE_HOST):/data/source/release/home

GERRIT_MODE ?= true

ifeq ($(GERRIT_MODE), true)
SRC_GIT_URI ?= $(REMOTE_HOST):29418/sdb1
SRC_GIT_URI_2 ?= $(REMOTE_HOST):29418/data/source/git/home/yangjingzhong/open/combot_zj1472
else
SRC_GIT_URI ?= $(REMOTE_HOST)/data/source/git
endif

GERRIT_SRV_USER ?= jack
GERRIT_SRV_HOST ?= 10.88.41.247
GERRIT_SRV_URI  ?= $(GERRIT_SRV_HOST):29418/data/source/git

BIN_RELEASE_PATH ?= /data/bin
BIN_RELEASE_HOME_PATH ?= /data/bin/home
BIN_RELEASE_URI ?= $(REMOTE_HOST):/data/bin
BIN_RELEASE_HOME_URI ?= $(REMOTE_HOST):/data/bin/home

CROSS_INSTALL_ROOT ?= $(PLATFORM_DIR)/../smboot/crossInstall/root
CROSS_INSTALL_DATA ?= $(PLATFORM_DIR)/../smboot/crossInstall/root/data

CONFIG_BUILD ?= x86-pc-linux
CONFIG_HOST ?= arm-none-linux
COMMON_CONFIG_ENV ?= CC=$(CROSS_COMPILE)gcc CXX=$(CROSS_COMPILE)g++ CFLAGS="$(TARGET_CFLAGS)" AR=$(CROSS_COMPILE)ar RANLIB=$(CROSS_COMPILE)ranlib NM=$(CROSS_COMPILE)nm
COMMON_CONFIG_PARAM ?= --host=arm-none-linux-gnueabi --build=i686-pc-linux
BUILD_ARCH ?= x86
HOST_ARCH ?= armv7

include $(PLATFORM_DIR)/board/$(BOARD).mk
