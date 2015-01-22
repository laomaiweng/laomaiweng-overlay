# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit base autotools

DESCRIPTION="Visual binary diff utility"

HOMEPAGE="http://www.cjmweb.net/vbindiff/"
SRC_URI="http://www.cjmweb.net/vbindiff/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86 ~x86-fbsd"
IUSE="debug"

RDEPEND="sys-libs/ncurses"
DEPEND="${RDEPEND}
	dev-perl/Template-Toolkit
	dev-perl/DateTime"

PATCHES=( "${FILESDIR}"/${PN}-3.0_beta1-link-tinfo.patch )
DOCS=( AUTHORS NEWS README README.PuTTY )

src_prepare() {
	base_src_prepare
	eautoreconf
}

src_configure() {
	econf $(use_enable debug)
}
