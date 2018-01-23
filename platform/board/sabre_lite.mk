HOST_ARCH = armv7

CROSS_TOOL_DIR ?= $(PLATFORM_DIR)/../gcc-linaro-arm-linux-gnueabi/install/gcc-linaro-arm-linux-gnueabi
CROSS_COMPILE ?= $(CROSS_TOOL_DIR)/bin/arm-linux-gnueabi-
CROSS_SYS_DIR = $(CROSS_TOOL_DIR)/arm-linux-gnueabi/libc

TARGET_CFLAGS ?= -mcpu=cortex-a9 -mtune=cortex-a9 -march=armv7-a -mfpu=neon -O2
TARGET_CXXFLAGS ?= -mcpu=cortex-a9 -mtune=cortex-a9 -march=armv7-a -mfpu=neon -O2

UNAME_R := 3.0.35+
KERNEL_PROJ = linux-sabre_lite
KERNEL_SOURCE_DIR = $(PLATFORM_DIR)/../$(KERNEL_PROJ)/install/root/usr/src/$(UNAME_R)
KERNEL_USER_INC_DIR = $(PLATFORM_DIR)/../$(KERNEL_PROJ)/install/root/usr/include
KMOD_INSTALL_DIR = $(PLATFORM_DIR)/../$(KERNEL_PROJ)/install/root/usr/lib/modules/$(UNAME_R)

BOOTLOADER_DEP_PROJS = u-boot-sabre_lite

RECOVERY_DEP_PROJS = gcc-linaro-arm-linux-gnueabi embfs sabre_lite_boot_scripts linux-sabre_lite udev busybox kmod
RECOVERY_DEP_PROJS += zlib gmp nettle gnutls iksemel libchunfeng fw
RECOVERY_DEP_PROJS += util-linux e2fsprogs kws libarchive xz pacman

DEP_PROJS = smbaker ecoflasher
DEP_PROJS += gcc-linaro-arm-linux-gnueabi
DEP_PROJS += embfs
DEP_PROJS += sabre_lite_boot_scripts
DEP_PROJS += linux-sabre_lite
DEP_PROJS += zlib
DEP_PROJS += util-linux
DEP_PROJS += e2fsprogs
DEP_PROJS += busybox
DEP_PROJS += alsa-lib
DEP_PROJS += libjpeg-turbo
DEP_PROJS += v4l-utils
DEP_PROJS += libnl
DEP_PROJS += iw
DEP_PROJS += openssl
DEP_PROJS += expat
DEP_PROJS += dbus
DEP_PROJS += wpa_supplicant
DEP_PROJS += gmp
DEP_PROJS += nettle
DEP_PROJS += gnutls
DEP_PROJS += iksemel
DEP_PROJS += alsa-utils
DEP_PROJS += i2cctl
DEP_PROJS += libffi glib dbus-glib kmod
DEP_PROJS += udev
DEP_PROJS += libusb libusb-compat usb-modeswitch usb-modeswitch-data
DEP_PROJS += iptables ofono connman
DEP_PROJS += libxml2 libsoup gssdp gupnp nginx fcgi
DEP_PROJS += gupnpd
DEP_PROJS += libpng pixman freetype fontconfig cairo
DEP_PROJS += kws
DEP_PROJS += libchunfeng
DEP_PROJS += www
DEP_PROJS += medusa
DEP_PROJS += fw

DEP_PROJS += opencv

DEP_PROJS += icu
DEP_PROJS += fsl_gpu
DEP_PROJS += qt


#DEP_PROJS += libid3tag libogg liboil gstreamer gst-plugins-base gst-plugins-good gst-rtsp
#DEP_PROJS += gst-fsl-plugins
DEP_PROJS += firmware-imx imx-lib libfslcodec libfslparser libfslvpuwrap libfslaacpcodec fsl-alsa-plugins 
