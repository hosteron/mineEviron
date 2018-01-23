# COPYRIGHT_CHUNFENG #
include ../platform/config.mk
PROJ_NAME = libchunfeng
GIT_VER = cea7cb06
GIT_TAG = zj1472
PROJ_VER = $(GIT_VER)
PROJ_REL = 10
PKG_NAME = $(PROJ_NAME)-$(PROJ_VER)-$(PROJ_REL)-$(HOST_ARCH)-$(FP_FLAG).pkg.tar.bz2
SRC_NAME = $(PROJ_NAME)-$(PROJ_VER)-$(PROJ_REL).tar.bz2
PWD=$(shell pwd)
SRC_MAINTAINER = kai
SRC_LICENSE = private
BIN_MAINTAINER = kai
BIN_LICENSE = open
default: build


fetchSrc:
	git clone -b $(GIT_TAG) ssh://$(SVR_DEF_USER)@$(SRC_GIT_URI_2)/$(PROJ_NAME) src/$(PROJ_NAME)
ifeq ($(GERRIT_MODE), true)
	cd src/$(PROJ_NAME) && \
	scp -p -P 29418 $(SVR_DEF_USER)@$(REMOTE_HOST):hooks/commit-msg .git/hooks/ && \
	git config remote.origin.push HEAD:refs/for/refs/heads/$(GIT_TAG) && \
	cd -
endif

EMBD_DEBUG=yes
configure:
	cd src/$(PROJ_NAME) &&	\
	./configure \
	$(COMMON_CONFIG_ENV)	\
	CFLAGS="-std=gnu90 " \
	DEBUG=$(EMBD_DEBUG) \
	INSTALL_ROOT="$(PWD)/install/root" \
	ENABLE_FCGI=no \
	ENABLE_BLKID=no \
	ENABLE_XMPP=no  \
	ENABLE_STOU=no \
	ENABLE_STOU_XMPP=no \
	ENABLE_ICE=no \
	ENABLE_XC_P2P=no \
	ENABLE_RTP=yes   \
	ENABLE_WWW=no   \
	CONFIG_FD_EVENTS_BACKEND_GLIB=no 

build:
	$(MAKE) -C src/$(PROJ_NAME)
	
clean:
	$(MAKE) -C src/$(PROJ_NAME) clean

distclean:
	$(MAKE) -C src/$(PROJ_NAME) distclean

install:
	$(MAKE) -C src/$(PROJ_NAME) install

PKG:
	-rm $(PKG_NAME)
	cd install/root && tar jcf ../../$(PKG_NAME) *

put-pkg:
ifeq ($(GERRIT_MODE), true)
	mkdir -p ../$(BOARD)_packages/src/$(BOARD)_packages/$(PROJ_NAME)
	cp $(PKG_NAME) ../$(BOARD)_packages/src/$(BOARD)_packages/$(PROJ_NAME)
	cd ../$(BOARD)_packages/src/$(BOARD)_packages/ && \
	git add $(PROJ_NAME)/$(PKG_NAME) && \
	git commit -m "$(PKG_NAME)" && \
	git push && \
	cd -
else
	scp  $(PKG_NAME) $(SVR_DEF_USER)@$(BIN_RELEASE_URI)/home/$(BIN_MAINTAINER)/$(BIN_LICENSE)/$(BOARD)/$(PROJ_NAME)/$(PKG_NAME)
endif

fetchPkg:
ifneq ($(PKG_NAME), $(wildcard $(PKG_NAME)))
ifeq ($(GERRIT_MODE), true)
	wget ftp://ftp:ftp@$(REMOTE_HOST)/$(BOARD)/packages/$(PROJ_NAME)/$(PKG_NAME)
else
	sftp $(SVR_DEF_USER)@$(BIN_RELEASE_URI)/home/$(BIN_MAINTAINER)/$(BIN_LICENSE)/$(BOARD)/$(PROJ_NAME)/$(PKG_NAME)
endif
	mkdir -p install/root
	tar jxf $(PKG_NAME) -C install/root
endif

crossInstall:
	install -d $(CROSS_INSTALL_ROOT)/usr/bin
	cp -dR install/root/usr/bin/ $(CROSS_INSTALL_ROOT)/usr/
	install -d $(CROSS_INSTALL_ROOT)/usr/lib
	cp -dR install/root/usr/lib/*.so* $(CROSS_INSTALL_ROOT)/usr/lib/
	
disFetchSrc:
	rm -rf src $(SRC_NAME)

disFetchPkg:
	rm -rf install $(PKG_NAME)

disFetchAll:disFetchSrc disFetchPkg

.PHONY:install clean distclean

