# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit base eutils

MY_P="${PN}_${PV/./_}"

DESCRIPTION="Tcl Standard Library"
HOMEPAGE="http://www.tcl.tk/software/tcllib/"
SRC_URI="https://github.com/tcltk/${PN}/archive/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0"
IUSE="examples"
KEYWORDS="~alpha ~amd64 ~hppa ~ia64 ~mips ~ppc ~s390 ~sparc ~x86 ~x86-fbsd ~x86-freebsd ~amd64-linux ~x86-linux ~x86-macos"

RDEPEND="dev-lang/tcl"
DEPEND="${RDEPEND}"

PATCHES=(
	"${FILESDIR}/${P}-manpage-remove.patch"
	"${FILESDIR}/${P}-manpage-remove-embedded.patch"
)

DOCS=( DESCRIPTION.txt STATUS )

S="${WORKDIR}/${PN}-${MY_P}"

src_test() {
#	emake test_interactive
	emake test_batch
}

src_install() {
	default

	dodoc devdoc/*.txt

	dohtml devdoc/*.html
	if use examples ; then
		for f in $(find examples -type f); do
			docinto $(dirname $f)
			dodoc $f
		done
	fi
}
