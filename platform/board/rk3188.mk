RK3188_BOOT_MODE ?= sdcard
ROOTFS_TYPE ?= ext4
#RK3188_BOOT_MODE ?= nand-emmc
HOST_ARCH = armv7

CROSS_TOOL_DIR ?= $(PLATFORM_DIR)/../gcc-linaro-arm-linux-gnueabihf/install/gcc-linaro-arm-linux-gnueabihf
CROSS_COMPILE ?= $(CROSS_TOOL_DIR)/bin/arm-linux-gnueabihf-
CROSS_SYS_DIR = $(CROSS_TOOL_DIR)/arm-linux-gnueabihf/libc

#CROSS_TOOL_DIR ?= $(PLATFORM_DIR)/../gcc-linaro-arm-linux-gnueabi/install/gcc-linaro-arm-linux-gnueabi
#CROSS_COMPILE ?= $(CROSS_TOOL_DIR)/bin/arm-linux-gnueabi-
#CROSS_SYS_DIR = $(CROSS_TOOL_DIR)/arm-linux-gnueabi/libc

TARGET_CFLAGS ?= -mcpu=cortex-a9 -mtune=cortex-a9 -march=armv7-a -mfpu=neon -O2 
TARGET_CXXFLAGS ?= -mcpu=cortex-a9 -mtune=cortex-a9 -march=armv7-a -mfpu=neon -O2 
FP_FLAG ?= hardfp

UNAME_R := 3.0.36+
KERNEL_PROJ = linux-rockchip

KERNEL_SOURCE_DIR = $(PLATFORM_DIR)/../$(KERNEL_PROJ)/install/root/usr/lib/modules/$(UNAME_R)/source
KERNEL_USER_INC_DIR = $(PLATFORM_DIR)/../$(KERNEL_PROJ)/install/root/usr/include
KMOD_INSTALL_DIR = $(PLATFORM_DIR)/../$(KERNEL_PROJ)/install/root/usr/lib/modules/$(UNAME_R)

ENABLE_ECO_ENCRYPT ?= no
ECO_GADGET_DIR = $(PLATFORM_DIR)/../eco_gadget/install/root/pc
ENCRYPT_LIB_HOST = $(ECO_GADGET_DIR)/usr/bin/encrypt_lib_host
ECO_STRIP = $(ECO_GADGET_DIR)/usr/bin/eco_strip
ECO_ENCRYPT_HOOK = $(PLATFORM_DIR)/../smboot/board/${BOARD}/encrypt_help.sh

ECO_PADDING_FILE ?= $(PLATFORM_DIR)/../wpa_supplicant/install/root/usr/sbin/wpa_supplicant
ECO_HARDWARE_AUDIO ?= nau8810
ECO_HARDWARE_USB ?= 0bdaf179


BOOTLOADER_DEP_PROJS = gcc-arm-eabi-toolchain gcc-linaro-arm-linux-gnueabihf u-boot-rk3188 rk_uboot_paramter rk-initrd rockchip-mkbootimg

RECOVERY_DEP_PROJS =  gcc-linaro-arm-linux-gnueabihf  embfs
RECOVERY_DEP_PROJS += util-linux kmod udev busybox coreutils
RECOVERY_DEP_PROJS += zlib libchunfeng 
RECOVERY_DEP_PROJS += tools

DEP_PROJS = smbaker ecoflasher
DEP_PROJS += gcc-arm-eabi-toolchain gcc-linaro-arm-linux-gnueabihf
DEP_PROJS += embfs
DEP_PROJS += rk_uboot_paramter rkflashtool
DEP_PROJS += linux-rockchip
DEP_PROJS += zlib
DEP_PROJS += util-linux
DEP_PROJS += udev
DEP_PROJS += kmod
DEP_PROJS += busybox coreutils

DEP_PROJS += e2fsprogs

##basic libs and tools
#DEP_PROJS += expat
DEP_PROJS += iksemel
DEP_PROJS += sqlite
DEP_PROJS += openssl

#audio
DEP_PROJS += alsa-lib alsa-utils
DEP_PROJS += libid3tag libmad
DEP_PROJS += madplay

#libs for rsyslog
DEP_PROJS += json-c
DEP_PROJS += libestr liblogging 
DEP_PROJS += rsyslog

##network 
DEP_PROJS += libnl 
DEP_PROJS += iw
DEP_PROJS += dhcpcd 
#DEP_PROJS += vsftpd
DEP_PROJS += wget
DEP_PROJS += libpcap
DEP_PROJS += wpa_supplicant
#DEP_PROJS += compat-wireless
DEP_PROJS += dnsmasq

DEP_PROJS += libchunfeng
DEP_PROJS += tools

DEP_PROJS += wifi_service
DEP_PROJS += wifi_daemon
DEP_PROJS += kiss

#debug tools
DEP_PROJS += tcpdump
DEP_PROJS += iperf
#DEP_PROJS += strace
#DEP_PROJS += gdb

#ogg player
DEP_PROJS += libogg libao
DEP_PROJS += libvorbis vorbis-tools

DEP_PROJS += libcf
DEP_PROJS += medusa medusa_core
DEP_PROJS += medusa_plugin_tiot

#rd5 plugins and libs
DEP_PROJS += libEcovacs liblzma libslam libUnderErg
DEP_PROJS += medusa_plugin_mmi_periph
#DEP_PROJS += medusa_plugin_task_demo
DEP_PROJS += medusa_plugin_task_ergodic
DEP_PROJS += medusa_plugin_wifiHandler
DEP_PROJS += medusa_plugin_935_trans
DEP_PROJS += medusa_plugin_task_return
DEP_PROJS += medusa_plugin_map
DEP_PROJS += medusa_plugin_task_relocation

# other projects
#DEP_PROJS += node
DEP_PROJS += rk3188_packages

DEP_PROJS += rtl8188
DEP_PROJS += gadget 
