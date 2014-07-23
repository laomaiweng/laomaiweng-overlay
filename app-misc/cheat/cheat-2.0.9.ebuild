# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python2_7 )

inherit distutils-r1

DESCRIPTION="cheat allows you to create and view interactive cheatsheets on the command-line"
HOMEPAGE="https://github.com/chrisallenlane/cheat"
SRC_URI="https://github.com/chrisallenlane/${PN}/archive/${PV}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="${PYTHON_DEPS}"
DEPEND="${RDEPEND}
	>=dev-lang/python-2.7
	>=dev-python/docopt-0.6.1
	>=dev-python/pygments-1.6
	"
