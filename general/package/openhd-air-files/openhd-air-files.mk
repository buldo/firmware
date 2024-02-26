################################################################################
#
# OpenHD AIR
#
################################################################################
OPENHD_AIR_FILES_INSTALL_STAGING = NO
OPENHD_AIR_FILES_INSTALL_TARGET = YES

define OPENHD_AIR_FILES_INSTALL_TARGET_CMDS
	$(INSTALL) -m 755 -d $(TARGET_DIR)/boot/openhd
	$(INSTALL) -m 755 -t $(TARGET_DIR)/boot/openhd $(OPENHD_AIR_FILES_PKGDIR)/files/*
endef

$(eval $(generic-package))
