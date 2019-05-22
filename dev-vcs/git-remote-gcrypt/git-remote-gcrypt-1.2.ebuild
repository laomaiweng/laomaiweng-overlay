# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="PGP-encrypted git remotes"
HOMEPAGE="https://spwhitton.name/tech/code/git-remote-gcrypt"
SRC_URI="https://git.spwhitton.name/${PN}/snapshot/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="curl rclone"

DEPEND=""
RDEPEND="${DEPEND}
	app-crypt/gnupg
	dev-vcs/git
	curl? ( net-misc/curl )
	rclone? ( net-misc/rclone )"
BDEPEND="dev-python/docutils"

src_prepare() {
	default

	# dev-python/docutils installs rst2man.py
	sed -e 's/rst2man/rst2man.py/g' -i install.sh || die
	# let Portage compress the man page
	sed -e 's/| gzip -9 //' -e 's/git-remote-gcrypt\.1\.gz/git-remote-gcrypt.1/g' -i install.sh || die
}

src_install() {
	DESTDIR="${D}" prefix="${EPREFIX}/usr" ./install.sh
}
