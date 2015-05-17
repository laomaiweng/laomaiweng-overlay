# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
inherit autotools gnome2-utils

DESCRIPTION="A system tray for pulseaudio controls"
HOMEPAGE="http://github.com/christophgysin/pasystray"
SRC_URI="https://github.com/christophgysin/${PN}/archive/${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="avahi gtk3 libnotify"

RDEPEND="
	avahi? ( || ( >=media-sound/pulseaudio-1.0[glib,avahi] >=media-sound/pulseaudio-5.0-r3[glib,zeroconf] )
		>=net-dns/avahi-0.6
	)
	!avahi? ( media-sound/pulseaudio[glib] )
	gtk3? ( x11-libs/gtk+:3 )
	!gtk3? ( x11-libs/gtk+:2 )
	x11-libs/libX11
	libnotify? ( >=x11-libs/libnotify-0.7 )
"
DEPEND="${RDEPEND}
	virtual/pkgconfig"

DOCS="AUTHORS README.md TODO"

S="${WORKDIR}/${PN}-${P}"

src_prepare() {
	eautoreconf
}

src_configure() {
	declare -a myeconf
	if use gtk3 ; then
		myeconf=("--with-gtk=3")
	else
		myeconf=("--with-gtk=2")
	fi
	myeconf+=("$(use_enable avahi)")
	myeconf+=("$(use_enable libnotify notify)")

	econf "${myeconf[@]}"
}

pkg_preinst() { gnome2_icon_savelist; }
pkg_postinst() { gnome2_icon_cache_update; }
pkg_postrm() { gnome2_icon_cache_update; }
