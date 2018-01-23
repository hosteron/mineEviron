HOST_ARCH = armv7

CROSS_TOOL_DIR ?= $(PLATFORM_DIR)/../gcc-linaro-arm-linux-gnueabi/install/gcc-linaro-arm-linux-gnueabi
CROSS_COMPILE ?= $(CROSS_TOOL_DIR)/bin/arm-linux-gnueabi-
CROSS_SYS_DIR = $(CROSS_TOOL_DIR)/arm-linux-gnueabi/libc

TARGET_CFLAGS ?= -mcpu=cortex-a9 -mtune=cortex-a9 -march=armv7-a -mfpu=neon -O2
TARGET_CXXFLAGS ?= -mcpu=cortex-a9 -mtune=cortex-a9 -march=armv7-a -mfpu=neon -O2

UNAME_R := 3.0.35+
KERNEL_PROJ = linux-daogou
KERNEL_SOURCE_DIR = $(PLATFORM_DIR)/../$(KERNEL_PROJ)/install/root/usr/src/$(UNAME_R)
KERNEL_USER_INC_DIR = $(PLATFORM_DIR)/../$(KERNEL_PROJ)/install/root/usr/include
KMOD_INSTALL_DIR = $(PLATFORM_DIR)/../$(KERNEL_PROJ)/install/root/usr/lib/modules/$(UNAME_R)

BOOTLOADER_DEP_PROJS = u-boot-daogou

RECOVERY_DEP_PROJS = gcc-linaro-arm-linux-gnueabi embfs daogou_boot_scripts linux-daogou udev busybox kmod
RECOVERY_DEP_PROJS += zlib gmp nettle gnutls iksemel libchunfeng fw
RECOVERY_DEP_PROJS += util-linux e2fsprogs kws libarchive xz pacman
RECOVERY_DEP_PROJS += libffi glib

DEP_PROJS = smbaker ecoflasher
DEP_PROJS += gcc-linaro-arm-linux-gnueabi
DEP_PROJS += embfs
DEP_PROJS += daogou_boot_scripts
DEP_PROJS += linux-daogou
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
DEP_PROJS += backports
#DEP_PROJS += compat-wireless
DEP_PROJS += wpa_supplicant
DEP_PROJS += gmp
DEP_PROJS += nettle
DEP_PROJS += gnutls
DEP_PROJS += iksemel
DEP_PROJS += sqlite
DEP_PROJS += alsa-utils
DEP_PROJS += i2cctl
DEP_PROJS += libffi glib dbus-glib kmod
DEP_PROJS += udev
DEP_PROJS += iptables 
#DEP_PROJS += libusb libusb-compat usb-modeswitch usb-modeswitch-data ofono
DEP_PROJS += readline ncurses
#DEP_PROJS += connman
DEP_PROJS += dhcpcd 
DEP_PROJS += libxml2 libsoup gssdp gupnp nginx fcgi
DEP_PROJS += gupnpd
DEP_PROJS += libpng pixman freetype fontconfig cairo
DEP_PROJS += kws
DEP_PROJS += libchunfeng
DEP_PROJS += www
DEP_PROJS += medusa
DEP_PROJS += fw
#DEP_PROJS += netmon
DEP_PROJS += itbrg
DEP_PROJS += wifi_service

DEP_PROJS += opencv
DEP_PROJS += DirectFB
DEP_PROJS += icu
DEP_PROJS += fsl_gpu
DEP_PROJS += qt

DEP_PROJS += libogg speex
DEP_PROJS += x264
DEP_PROJS += libav
DEP_PROJS += live555
DEP_PROJS += libpostproc vlc
DEP_PROJS += vsftpd

DEP_PROJS += libid3tag libmad
DEP_PROJS += madplay
DEP_PROJS += wifi_mode
DEP_PROJS += tinyxml
DEP_PROJS += iperf
DEP_PROJS += fm1188
DEP_PROJS += BenebotTest
DEP_PROJS += Benebot 

DEP_PROJS += json-c
DEP_PROJS += libestr liblogging rsyslog
DEP_PROJS += libpcap tcpdump
DEP_PROJS += ar9374
DEP_PROJS += tools gadget
#DEP_PROJS += liboil gstreamer gst-plugins-base gst-plugins-good gst-rtsp
#DEP_PROJS += gst-fsl-plugins
DEP_PROJS += firmware-imx imx-lib libfslcodec libfslparser libfslvpuwrap libfslaacpcodec fsl-alsa-plugins 
