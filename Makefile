include $(TOPDIR)/rules.mk

PKG_NAME:=getconf
PKG_VERSION:=v0.6
PKG_REV:=33f388802f942094c5e30a70ef8abb5d771df146
PKG_RELEASE:=v0.6

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.bz2
PKG_SOURCE_URL:=https://github.com/termux/getconf
PKG_SOURCE_PROTO:=git
PKG_SOURCE_SUBDIR:=$(PKG_NAME)-$(PKG_VERSION)
PKG_SOURCE_VERSION:=$(PKG_REV)

#CMAKE_INSTALL:=1

include $(INCLUDE_DIR)/package.mk
#include $(INCLUDE_DIR)/cmake.mk
define Package/getconf
	CATEGORY:=Base system
	SECTION:=Utils
	TITLE:=getconf cmd
	DEPENDS:=
	MAINTAINER:=
	VERSION:=$(PKG_VERSION)
endef

define Package/getconf/install
	$(INSTALL_BIN)  -D $(PKG_BUILD_DIR)/getconf $(1)/usr/sbin/getconf
endef

$(eval $(call BuildPackage,getconf))
