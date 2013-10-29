# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-util/visual-regexp/visual-regexp-3.0.ebuild,v 1.9 2012/09/05 09:45:09 jlec Exp $

EAPI=5

inherit eutils

DESCRIPTION="Type the regexp and visualize it on a sample of your choice"
HOMEPAGE="http://laurent.riesterer.free.fr/regexp/"
SRC_URI="
	http://dev.gentoo.org/~jlec/distfiles/visualregexp-icon.png.tar
	http://laurent.riesterer.free.fr/regexp/visual_regexp-${PV}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86"
IUSE=""

DEPEND=""
RDEPEND=">=dev-lang/tk-8.3"

S=${WORKDIR}/visual_regexp-${PV}

src_prepare() {
	epatch \
		"${FILESDIR}"/visual-regexp-3.0-wish-fix.patch \
		"${FILESDIR}"/visual-regexp-3.0-help-font-fix.patch
}

src_install() {
	dodoc README

	newbin visual_regexp.tcl visualregexp

	dosym visualregexp /usr/bin/tkregexp

	doicon "${WORKDIR}"/visualregexp-icon.png

	domenu "${FILESDIR}"/visualregexp.desktop
}
