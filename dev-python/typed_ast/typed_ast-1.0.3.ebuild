# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python3_4 python3_5 python3_6 )
inherit distutils-r1

DESCRIPTION="A fork of Python 2 and 3 ast modules with type comment support"
HOMEPAGE="https://github.com/python/typed_ast"
SRC_URI="https://github.com/python/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="PSF-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
