# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit git-r3 savedconfig toolchain-funcs

DESCRIPTION="the vim like browser"
HOMEPAGE="https://fanglingsu.github.io/vimb/"
SRC_URI=''
EGIT_REPO_URI="https://github.com/fanglingsu/${PN}.git"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"

COMMON_DEPEND="
	net-libs/webkit-gtk:4
	x11-libs/gtk+:3
"
DEPEND="
	${COMMON_DEPEND}
	virtual/pkgconfig
"
RDEPEND="
	${COMMON_DEPEND}
"

src_prepare() {
	default

	sed -i "s,/lib/,/$(get_libdir)/," config.mk || die 'unable to fix lib install prefix'
	tc-export CC PKG_CONFIG

	restore_config src/config.def.h
}

src_compile() {
	emake PREFIX="${ROOT}/usr"
}

src_install() {
	emake PREFIX="${ROOT}/usr" DESTDIR="${D}" install

	save_config src/config.def.h
}
