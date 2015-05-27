# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit eutils cmake-utils

DESCRIPTION="Taskserver is a task sync server for Taskwarrior"
HOMEPAGE="http://taskwarrior.org/"
SRC_URI="http://taskwarrior.org/download/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="|| ( >=sys-devel/gcc-4.7:* >=sys-devel/clang-3.3 )
	net-libs/gnutls
	sys-apps/util-linux"
RDEPEND="${DEPEND}"

src_prepare() {
	# silence the `which` error message (errors are handled later anyway)
	sed -e 's:which \(gnutls-\)\?certtool:& 2>/dev/null:g' \
		-i pki/generate.* || die
}

src_configure() {
	mycmakeargs=(
		-DTASKD_DOCDIR=share/doc/${PF}
	)
	cmake-utils_src_configure
}

src_install() {
	cmake-utils_src_install

	# install mon scripts
	exeinto /usr/share/${PN}/mon
	doexe mon/{create,graph,update}
	insinto /usr/share/${PN}/mon
	doins mon/README mon/stats.request

	# install pki scripts
	exeinto /usr/share/${PN}/pki
	doexe pki/generate*
	insinto /usr/share/${PN}/pki
	doins pki/README pki/vars

	# install scripts
	exeinto /usr/share/${PN}/scripts
	doexe scripts/{profile.py,setup_server.bash}
	insinto /usr/share/${PN}/scripts/systemd
	doins scripts/systemd/taskd.service
}
