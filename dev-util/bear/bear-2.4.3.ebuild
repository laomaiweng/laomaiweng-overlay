# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cmake-multilib

DESCRIPTION="a tool that generates a compilation database for clang tooling"
HOMEPAGE="https://github.com/rizsotto/bear"
SRC_URI="https://github.com/rizsotto/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="dev-util/cmake"
RDEPEND=">=dev-lang/python-2.7"

S="${WORKDIR}/${P^}"

multilib_src_configure() {
	local mycmakeargs=(
		-DCMAKE_INSTALL_DOCDIR="share/doc/${P}"
		-DCMAKE_SKIP_RPATH=1
	)
	cmake-utils_src_configure
}
