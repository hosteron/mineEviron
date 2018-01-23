# COPYRIGHT_CHUNFENG #

include config.mk

SMB_BIN = $(PLATFORM_DIR)/../smbaker/install/build_root/usr/bin/smbaker
#GENECC_BIN = $(PLATFORM_DIR)/../flash-utils-davinci/install/build_root/usr/bin/genecc_DM36x.exe
#MKIMG_BIN = $(PLATFORM_DIR)/../u-boot-davinci/install/buildRoot/bin/mkimage
#SM_ROOT = /tmp/sdmmc1
#NFS_ROOT_LINK = /srv/nfs/Dm365CrossRoot

default:
	

disFetchPkg clean distclean configure build install crossInstall disFetchSrc fetchPkg:
	@for i in `echo $(DEP_PROJS)`; do \
		$(MAKE) $@ -C ../$$i || exit 1; \
	done

configure_build_install:
	@for i in `echo $(BOOTLOADER_DEP_PROJS)`; do \
		$(MAKE) configure -C ../$$i || exit 1; \
		$(MAKE) build -C ../$$i || exit 1; \
		$(MAKE) install -C ../$$i || exit 1; \
	done
	@for i in `echo $(DEP_PROJS)`; do \
		$(MAKE) configure -C ../$$i || exit 1; \
		$(MAKE) build -C ../$$i || exit 1; \
		$(MAKE) install -C ../$$i || exit 1; \
	done

	
.PHONY:all default disFetchPkg clean distclean crossInstall configure_build_install configure


