# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit eutils

DESCRIPTION="Type the regexp and visualize it on a sample of your choice"
HOMEPAGE="http://laurent.riesterer.free.fr/regexp/"
SRC_URI="
	http://dev.gentoo.org/~jlec/distfiles/visualregexp-icon.png.tar
	http://laurent.riesterer.free.fr/regexp/visual_regexp-${PV}.tcl"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86"
IUSE=""

DEPEND=""
RDEPEND=">=dev-lang/tk-8.5"

S=${WORKDIR}

src_unpack() {
	# Manually copy the source file since unpack gets confused by things it can't unpack
	cp "${DISTDIR}"/visual_regexp-3.1.tcl "${WORKDIR}"

	default
}

src_prepare() {
	# File comes with DOS newlines
	edos2unix visual_regexp-3.1.tcl

	epatch	"${FILESDIR}"/visual-regexp-3.1-wish-fix.patch \
			"${FILESDIR}"/visual-regexp-3.1-help-font-fix.patch
}

src_install() {
	newbin visual_regexp-3.1.tcl visualregexp

	dosym visualregexp /usr/bin/tkregexp

	doicon "${WORKDIR}"/visualregexp-icon.png

	domenu "${FILESDIR}"/visualregexp.desktop
}
