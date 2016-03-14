# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

PYTHON_COMPAT=( python2_7 )
inherit cmake-utils flag-o-matic python-any-r1

IUSE=""
if [[ ${PV} == *9999* ]]; then
	inherit git-2
	EGIT_REPO_URI=${EGIT_REPO_URI:-"git://github.com/mozilla/rr.git"}
	KEYWORDS=""
	SRC_URI=""
else
	KEYWORDS="~amd64 ~x86"
	SRC_URI="https://github.com/mozilla/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"
fi

DESCRIPTION="Lightweight tool for recording and replaying execution of applications"
HOMEPAGE="http://rr-project.org/"

LICENSE="MIT BSD"
SLOT="0"

src_configure() {
	# fails with -DNDEBUG set by Gentoo, unset it
	# another option would be to sed out -Werror in CMakeLists.txt, but since
	# rr already has -O0 -g3 in its default CFLAGS, and it's a debugging tool,
	# perhaps it's on purpose that so many debug-related flags are set
	append-flags -UNDEBUG

	cmake-utils_src_configure
}
