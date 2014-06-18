# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

# $Header: /var/cvsroot/gentoo-x86/media-fonts/ahem/ahem-1.0.ebuild,v 1.1 2014/05/23 02:05:16 idella4 Exp $

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
