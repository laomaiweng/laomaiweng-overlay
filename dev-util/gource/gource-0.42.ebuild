# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

DESCRIPTION="A software version control visualization tool"
HOMEPAGE="http://code.google.com/p/gource/"
SRC_URI="https://github.com/acaudwell/Gource/releases/download/${P}/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64-linux ~x86-linux"
IUSE="sdl2 system-tinyxml"

DEPEND="!sdl2? ( media-libs/libsdl )
	!sdl2? ( media-libs/sdl-image[jpeg,png] )
	sdl2? ( media-libs/libsdl2 )
	sdl2? ( media-libs/sdl2-image[jpeg,png] )
	dev-libs/libpcre:3
	media-libs/freetype:2
	media-libs/glew
	>=media-libs/glm-0.9.3
	>=dev-libs/boost-1.46
	>=media-libs/libpng-1.2
	system-tinyxml? ( dev-libs/tinyxml )"
RDEPEND="${DEPEND}"

src_configure() {
	econf \
		$(use_with system-tinyxml tinyxml)
}
