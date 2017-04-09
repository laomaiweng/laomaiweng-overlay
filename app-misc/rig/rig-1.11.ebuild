# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="rig - the random identity generator"
HOMEPAGE="http://rig.sourceforge.net"
SRC_URI="mirror://sourceforge/${PN}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

src_prepare() {
	default

	eapply "${FILESDIR}/${P}-include-cstring.patch" \
	       "${FILESDIR}/${P}-make-install.patch"
}
