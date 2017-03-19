# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="6"

DESCRIPTION="A modular compositing manager aiming to be efficient, lightweight and responsive"
HOMEPAGE="http://unagi.mini-dweeb.org/"
SRC_URI="http://projects.mini-dweeb.org/attachments/download/114/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

COMMON_DEPEND="
	dev-libs/confuse
	dev-libs/libev
	>=dev-libs/libxdg-basedir-1.0.0
	sys-apps/dbus
	x11-libs/libdrm
	>=x11-libs/libxcb-1.8
	x11-libs/libxkbcommon
	>=x11-proto/xcb-proto-1.6
	x11-libs/xcb-util
	x11-libs/xcb-util-keysyms
	>=x11-libs/xcb-util-wm-0.4.0"

DEPEND="${COMMON_DEPEND}
	virtual/pkgconfig"

RDEPEND="${COMMON_DEPEND}"

DOCS=(AUTHORS BUGS NEWS README THANKS)
