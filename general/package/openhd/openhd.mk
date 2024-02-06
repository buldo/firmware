################################################################################
#
# OpenHD
#
################################################################################
OPENHD_SITE = https://github.com/OpenHD/OpenHD
OPENHD_SITE_METHOD = git
OPENHD_GIT_SUBMODULES = YES
OPENHD_VERSION = b828b348a9cafae7e487248557bedc9b01652ee0
OPENHD_SUBDIR = OpenHD

OPENHD_INSTALL_STAGING = NO
OPENHD_INSTALL_TARGET = YES

OPENHD_CONF_OPTS = -DENABLE_MANAGED_CAMERAS=OFF
OPENHD_DEPENDENCIES = libsodium gstreamer1 gst1-plugins-base libpcap host-pkgconf
$(eval $(cmake-package))

