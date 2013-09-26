# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit eutils multilib

MY_P="${PN}${PV/./}"
DESCRIPTION="a static syntax checker for Tcl"
HOMEPAGE="http://nagelfar.berlios.de/"
SRC_URI="mirror://sourceforge/${PN}.berlios/${MY_P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE="" # doc should not be optional: it is used by nagelfar

DEPEND=""
RDEPEND=">=dev-lang/tcl-8.4"

S="${WORKDIR}/${MY_P}"

DOCS="$(echo doc/*)"

src_prepare() {
	epatch "${FILESDIR}/${P}-xterm-exec.patch"
}

src_test() {
	"${S}"/${PN}.tcl "${S}"/misctests/test.tcl || die
}

src_install() {
	# prevent the docs from being compressed, the GUI needs to read them
	docompress -x /usr/share/doc
	# call default implementation (install the docs)
	default

	# install libs
	for f in $(find lib/ -mindepth 1 -maxdepth 1 -type d)
	do
		insinto /usr/$(get_libdir)/${P}
		doins -r "$f"
	done

	# install syntax files and packagedb
	insinto /usr/share/${P}
	doins nagelfar.syntax
	doins syntax*.tcl
	doins -r packagedb

	# patch paths to point to directories where files will be installed
	# also patch call to xterm so that it uses the -e option instead of -exec
	#   current portage versions of xterm don't have -exec
	sed \
		-e "/^set dbDir/s:\\\$thisDir.*\$:/usr/share/${P}:" \
		-e "/^set docDir/s:\\\$thisDir.*\$:/usr/share/doc/${PF}:" \
		-e "/^set libDir/s:\\\$thisDir.*\$:/usr/$(get_libdir)/${P}:" \
		-i "${S}"/${PN}.tcl || die

	# install script, removing trailing .tcl
	newbin ${PN}.tcl ${PN}
}

# TODO: better support for Nagelfar plugins (search directories)
