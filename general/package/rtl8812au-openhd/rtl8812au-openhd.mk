################################################################################
#
# rtl8812au-openhd
#
################################################################################

RTL8812AU_OPENHD_VERSION = v5.2.20
RTL8812AU_OPENHD_SITE = $(call github,OpenHD,rtl8812au,$(RTL8812AU_OPENHD_VERSION))

RTL8812AU_OPENHD_LICENSE = GPL-2.0
RTL8812AU_OPENHD_LICENSE_FILES = COPYING

RTL8812AU_OPENHD_EXTRA_CFLAGS = \
	-DCONFIG_$(call qstrip,$(BR2_ENDIAN))_ENDIAN \
	-DCONFIG_IOCTL_CFG80211 \
	-DRTW_USE_CFG80211_STA_EVENT \
	-Wno-error=address \
	-Wno-error=array-bounds \
	-Wno-error=cast-function-type

RTL8812AU_OPENHD_MODULE_MAKE_OPTS = \
	CONFIG_RTL8812AU=m \
	CONFIG_PLATFORM_I386_PC=n \
	CONFIG_88XXAU=m \
	KVER=$(LINUX_VERSION_PROBED) \
	KSRC=$(LINUX_DIR) \
	USER_EXTRA_CFLAGS="$(RTL8812AU_OPENHD_EXTRA_CFLAGS)"

define RTL8812AU_OPENHD_LINUX_CONFIG_FIXUPS
	$(call KCONFIG_ENABLE_OPT,CONFIG_NET)
	$(call KCONFIG_ENABLE_OPT,CONFIG_WIRELESS)
	$(call KCONFIG_ENABLE_OPT,CONFIG_CFG80211)
	$(call KCONFIG_ENABLE_OPT,CONFIG_USB_SUPPORT)
	$(call KCONFIG_ENABLE_OPT,CONFIG_USB)
endef

$(eval $(kernel-module))
$(eval $(generic-package))
