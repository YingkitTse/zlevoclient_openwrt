include $(TOPDIR)/rules.mk
include $(TOPDIR)/package.mk
PKG_NAME:=zlevoclient
PKG_RELEASE:=0.2
PKG_FIXUP:=autoreconf
PKG_INSTALL:=1

define Package/$(PKG_NAME)
	SECTION:=Utilities
	CATEGORY:=Utilities
	SUBMENU:=AOS
	DEPENDS:=+libpcap +libstdcpp
	TITLE:=Lenovo 802.1x supplicant client
endef

define Package/$(PKG_NAME)/description
	Lenovo 802.1x supplicant client
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
	$(CP) ./src/* $(PKG_BUILD_DIR)/
endef

define Build/Compile
	#$(Build/Compile/$(PKG_NAME))
	$(MAKE) -C $(PKG_BUILD_DIR)/ \
		$(TARGET_CONFIGURE_OPTS) \
		CFLAGS="$(TARGET_CFLAGS)" \
		CPPFLAGS="$(TARGET_CPPFLAGS)" \
		LIBS="$(STAGING_DIR)/usr/lib/libpcap.a"
endef

define Package/$(PKG_NAME)/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/zlevoclient $(1)/usr/bin
endef

$(eval $(call BuildPackage,$(PKG_NAME)))

