################################################################################
#
# OpenHD
#
################################################################################
OPENHD_SITE = https://github.com/OpenHD/OpenHD
OPENHD_SITE_METHOD = git
OPENHD_GIT_SUBMODULES = YES
OPENHD_VERSION = b37e9fd92722116a98d317446447153e3a041d6b
OPENHD_SUBDIR = OpenHD

OPENHD_INSTALL_STAGING = NO
OPENHD_INSTALL_TARGET = YES

OPENHD_CONF_OPTS = -DENABLE_USB_CAMERAS=OFF
OPENHD_DEPENDENCIES = libsodium gstreamer1 gst1-plugins-base libpcap host-pkgconf
$(eval $(cmake-package))

