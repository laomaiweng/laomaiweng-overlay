# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

EGO_PN="github.com/FiloSottile/${PN}"

inherit go-module

if [[ ${PV} == 9999 ]]; then
	inherit git-r3
	EGIT_REPO_URI="https://${EGO_PN}.git"
else
	EGO_VENDOR=(
	"golang.org/x/crypto 34f69633bfdcf9db92f698f8487115767eebef81 github.com/golang/crypto" # BSD
	#TODO
	)

	SRC_URI="https://github.com/FiloSottile/${PN}/archive/v${PV/_/-}.tar.gz -> ${P}.tar.gz
	$(go-module_vendor_uris)"
fi

DESCRIPTION="a simple, modern and secure file encryption tool"
HOMEPAGE="https://age-encryption.org/"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64"
IUSE="pie"

BDEPEND=">=dev-lang/go-1.13"

DOCS=( README.md )

#S="${WORKDIR}/${PN}-${PV/_/-}"

if [[ ${PV} == 9999 ]]; then
	src_unpack() {
		git-r3_src_unpack
		#go-module_src_unpack
		mkdir "${S}/vendor" # backwards check in go-module_live_vendor
		go-module_live_vendor
	}
fi

src_compile() {
	go build -buildmode="$(usex pie pie default)" -o . filippo.io/age/cmd/... || die
}

src_install() {
	dobin age
	dobin age-keygen

	einstalldocs
}
