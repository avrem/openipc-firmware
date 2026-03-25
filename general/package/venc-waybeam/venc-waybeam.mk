################################################################################
#
# venc-openipc
#
################################################################################

VENC_WAYBEAM_LICENSE = MIT

define VENC_WAYBEAM_INSTALL_TARGET_CMDS
	$(INSTALL) -m 755 -d $(TARGET_DIR)/etc/init.d
	$(INSTALL) -m 755 -t $(TARGET_DIR)/etc/init.d $(VENC_WAYBEAM_PKGDIR)/files/S98venc

	$(INSTALL) -m 755 -d $(TARGET_DIR)/etc
	$(INSTALL) -m 644 -t $(TARGET_DIR)/etc $(VENC_WAYBEAM_PKGDIR)/files/venc.json

	$(INSTALL) -m 755 -d $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 755 -t $(TARGET_DIR)/usr/bin $(VENC_WAYBEAM_PKGDIR)/files/venc

	$(INSTALL) -m 755 -d $(TARGET_DIR)/usr/lib
	$(INSTALL) -m 644 -t $(TARGET_DIR)/usr/lib $(VENC_WAYBEAM_PKGDIR)/files/lib/libcam_os_wrapper.so
	$(INSTALL) -m 644 -t $(TARGET_DIR)/usr/lib $(VENC_WAYBEAM_PKGDIR)/files/lib/libcus3a.so
	$(INSTALL) -m 644 -t $(TARGET_DIR)/usr/lib $(VENC_WAYBEAM_PKGDIR)/files/lib/libispalgo.so
	$(INSTALL) -m 644 -t $(TARGET_DIR)/usr/lib $(VENC_WAYBEAM_PKGDIR)/files/lib/libmi_ai.so
	$(INSTALL) -m 644 -t $(TARGET_DIR)/usr/lib $(VENC_WAYBEAM_PKGDIR)/files/lib/libmi_iqserver.so
	$(INSTALL) -m 644 -t $(TARGET_DIR)/usr/lib $(VENC_WAYBEAM_PKGDIR)/files/lib/libmi_isp.so
	$(INSTALL) -m 644 -t $(TARGET_DIR)/usr/lib $(VENC_WAYBEAM_PKGDIR)/files/lib/libmi_sensor.so
	$(INSTALL) -m 644 -t $(TARGET_DIR)/usr/lib $(VENC_WAYBEAM_PKGDIR)/files/lib/libmi_sys.so
	$(INSTALL) -m 644 -t $(TARGET_DIR)/usr/lib $(VENC_WAYBEAM_PKGDIR)/files/lib/libmi_venc.so
	$(INSTALL) -m 644 -t $(TARGET_DIR)/usr/lib $(VENC_WAYBEAM_PKGDIR)/files/lib/libmi_vif.so
	$(INSTALL) -m 644 -t $(TARGET_DIR)/usr/lib $(VENC_WAYBEAM_PKGDIR)/files/lib/libmi_vpe.so
endef

$(eval $(generic-package))
