# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="Documentation for make"
HOMEPAGE="https://www.gnu.org/software/make/make.html"
SRC_URI="https://www.gnu.org/software/make/manual/make.html_node.tar.gz -> ${P}.html_node.tar.gz"

LICENSE="FDL-1.3+"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND=""

DOCDIR="${WORKDIR}/${P}"

src_unpack() {
	mkdir "${P}" || die "failed to mkdir ${P}"
	cd "${P}" || die "failed to cd into ${P}"
	unpack ${A}
}

src_install() {
	docinto html && dodoc -r "${DOCDIR}"/*
}
