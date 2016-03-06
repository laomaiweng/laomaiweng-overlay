# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit font

DESCRIPTION="Icon font from GitHub"
HOMEPAGE="https://octicons.github.com"
SRC_URI="https://github.com/github/${PN}/releases/download/v${PV}/${PN}.zip -> ${P}.zip"

LICENSE="OFL-1.1"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""

S="${WORKDIR}"
FONT_S="${S}"
FONT_SUFFIX="ttf woff eot"
