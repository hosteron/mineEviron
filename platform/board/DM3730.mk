HOST_ARCH = armv7hf

CROSS_TOOL_DIR ?= $(PLATFORM_DIR)/../gcc-linaro-arm-linux-gnueabihf/install/gcc-linaro-arm-linux-gnueabihf
CROSS_COMPILE ?= $(CROSS_TOOL_DIR)/bin/arm-linux-gnueabihf-
CROSS_SYS_DIR = $(CROSS_TOOL_DIR)/arm-linux-gnueabihf/libc

TARGET_CFLAGS ?= -mcpu=cortex-a8 -mtune=cortex-a8 -march=armv7-a -mfpu=neon -O2
TARGET_CXXFLAGS ?= -mcpu=cortex-a8 -mtune=cortex-a8 -march=armv7-a -mfpu=neon -O2

UNAME_R := 3.4.36+
KERNEL_SOURCE_DIR = $(PLATFORM_DIR)/../linux-dm3730/install/root/usr/src/$(UNAME_R)
KERNEL_USER_INC_DIR = $(PLATFORM_DIR)/../linux-dm3730/install/root/usr/include
KMOD_INSTALL_DIR = $(PLATFORM_DIR)/../linux-dm3730/install/root/usr/lib/modules/$(UNAME_R)

BOOTLOADER_DEP_PROJS = u-boot-dm3730

RECOVERY_DEP_PROJS = gcc-linaro-arm-linux-gnueabihf embfs dm3730_boot_scripts linux-dm3730 udev busybox kmod
RECOVERY_DEP_PROJS += zlib gmp nettle gnutls iksemel libchunfeng fw
RECOVERY_DEP_PROJS += util-linux e2fsprogs kws libarchive xz pacman

DEP_PROJS = gcc-linaro-arm-linux-gnueabihf
DEP_PROJS += embfs
DEP_PROJS += dm3730_boot_scripts
DEP_PROJS += linux-dm3730
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
DEP_PROJS += linux-fusion DirectFB DirectFB-examples libpng pixman freetype fontconfig cairo
DEP_PROJS += kws
DEP_PROJS += libchunfeng
DEP_PROJS += www
DEP_PROJS += medusa
DEP_PROJS += fw
