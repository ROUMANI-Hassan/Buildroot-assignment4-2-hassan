
##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################

AESD_ASSIGNMENTS_VERSION = 32e9c1be52bc180856b5c7cb076c1ae24d509923
AESD_ASSIGNMENTS_SITE = git@github.com:ROUMANI-Hassan/assignments-aesd.git
AESD_ASSIGNMENTS_SITE_METHOD = git
AESD_ASSIGNMENTS_GIT_SUBMODULES = YES

define AESD_ASSIGNMENTS_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/finder-app all
endef

define AESD_ASSIGNMENTS_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/finder-app/writer \
		$(TARGET_DIR)/usr/bin/writer
	$(INSTALL) -D -m 0755 $(@D)/finder-app/finder.sh \
		$(TARGET_DIR)/usr/bin/finder.sh
	$(INSTALL) -D -m 0755 $(@D)/finder-app/finder-test.sh \
		$(TARGET_DIR)/usr/bin/finder-test.sh
	$(INSTALL) -D -m 0644 $(@D)/conf/username.txt \
		$(TARGET_DIR)/etc/finder-app/conf/username.txt
	$(INSTALL) -D -m 0644 $(@D)/conf/assignment.txt \
		$(TARGET_DIR)/etc/finder-app/conf/assignment.txt
	$(INSTALL) -m 0755 $(@D)/assignment-autotest/test/assignment4/* \
		$(TARGET_DIR)/bin
endef

$(eval $(generic-package))
