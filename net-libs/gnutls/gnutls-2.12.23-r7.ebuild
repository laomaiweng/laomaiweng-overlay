# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit autotools libtool eutils multilib-minimal versionator

DESCRIPTION="A TLS 1.2 and SSL 3.0 implementation for the GNU project"
HOMEPAGE="http://www.gnutls.org/"
SRC_URI="ftp://ftp.gnutls.org/gcrypt/gnutls/v$(get_version_component_range 1-2)/${P}.tar.bz2"

# LGPL-2.1 for libgnutls library and GPL-3 for libgnutls-extra library.
LICENSE="GPL-3 LGPL-2.1"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~arm64 ~hppa ~ia64 ~m68k ~mips ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86 ~amd64-fbsd ~x86-fbsd ~x86-interix ~amd64-linux ~x86-linux ~ppc-macos ~x64-macos ~x86-macos ~sparc-solaris ~x86-solaris"
IUSE="bindist +cxx doc examples guile lzo +nettle nls pkcs11 static-libs test zlib"

RDEPEND=">=dev-libs/libtasn1-3.4[${MULTILIB_USEDEP}]
	guile? ( >=dev-scheme/guile-1.8[networking] )
	nettle? ( >=dev-libs/nettle-2.7[gmp,${MULTILIB_USEDEP}] )
	!nettle? ( >=dev-libs/libgcrypt-1.5.4:0[${MULTILIB_USEDEP}] )
	nls? ( >=virtual/libintl-0-r1[${MULTILIB_USEDEP}] )
	pkcs11? ( >=app-crypt/p11-kit-0.20.7[${MULTILIB_USEDEP}] )
	zlib? ( >=sys-libs/zlib-1.2.3.1[${MULTILIB_USEDEP}] )
	!bindist? ( lzo? ( >=dev-libs/lzo-2[${MULTILIB_USEDEP}] ) )"
DEPEND="${RDEPEND}
	>=virtual/pkgconfig-0-r1[${MULTILIB_USEDEP}]
	sys-devel/libtool[${MULTILIB_USEDEP}]
	doc? ( dev-util/gtk-doc )
	nls? ( sys-devel/gettext )
	test? ( app-misc/datefudge )"

DOCS=( AUTHORS ChangeLog NEWS README THANKS doc/TODO )

pkg_setup() {
	if use lzo && use bindist; then
		ewarn "lzo support is disabled for binary distribution of GnuTLS due to licensing issues."
	fi
}

src_prepare() {
	# tests/suite directory is not distributed
	sed -i -e 's|AC_CONFIG_FILES(\[tests/suite/Makefile\])|:|' \
		configure.ac || die

	sed -i -e 's/imagesdir = $(infodir)/imagesdir = $(htmldir)/' \
		doc/Makefile.am || die

	for dir in . lib libextra; do
		sed -i -e '/^AM_INIT_AUTOMAKE/s/-Werror//' "${dir}/configure.ac" || die
	done

	epatch "${FILESDIR}"/${PN}-2.12.20-AF_UNIX.patch
	epatch "${FILESDIR}"/${PN}-2.12.20-libadd.patch
	epatch "${FILESDIR}"/${PN}-2.12.20-guile-parallelmake.patch
	epatch "${FILESDIR}"/${P}-hppa.patch
	epatch "${FILESDIR}"/${P}-gl-tests-getaddrinfo-skip-if-no-network.patch
	epatch "${FILESDIR}"/${P}-gdoc-perl-5.18.patch
	epatch "${FILESDIR}"/${P}-CVE-2013-2116.patch
	epatch "${FILESDIR}"/${P}-CVE-2014-0092.patch
	epatch "${FILESDIR}"/${P}-CVE-2014-1959.patch
	epatch "${FILESDIR}"/${P}-CVE-2014-3466.patch
	epatch "${FILESDIR}"/${P}-CVE-2014-3467.patch
	epatch "${FILESDIR}"/${P}-CVE-2014-3468.patch
	epatch "${FILESDIR}"/${P}-CVE-2014-3469.patch

	# support user patches
	epatch_user

	eautoreconf

	# Use sane .so versioning on FreeBSD.
	elibtoolize
}

multilib_src_configure() {
	local myconf
	use bindist && myconf="--without-lzo" || myconf="$(use_with lzo)"
	[[ "${VALGRIND_TESTS}" != "1" ]] && myconf+=" --disable-valgrind-tests"

	ECONF_SOURCE=${S} \
	econf \
		--htmldir="${EPREFIX}/usr/share/doc/${PF}/html" \
		$(use_enable cxx) \
		$(multilib_native_use_enable doc gtk-doc) \
		$(multilib_native_use_enable doc gtk-doc-pdf) \
		$(multilib_native_use_enable guile) \
		$(use_with !nettle libgcrypt) \
		$(use_enable nls) \
		$(use_with pkcs11 p11-kit) \
		$(use_enable static-libs static) \
		$(use_with zlib) \
		${myconf}
}

multilib_src_test() {
	if has_version dev-util/valgrind && [[ ${VALGRIND_TESTS} != 1 ]]; then
		elog
		elog "You can set VALGRIND_TESTS=\"1\" to enable Valgrind tests."
		elog
	fi

	if multilib_is_native_abi; then
		# parallel testing often fails
		emake -j1 check
	else
		# use native ABI tools
		ln -s "${T}"/native-tools/{certtool,gnutls-{serv,cli}} \
			"${BUILD_DIR}"/src/ || die

		emake -C gl -j1 check
		emake -C tests -j1 check
	fi
}

multilib_src_install() {
	if multilib_is_native_abi; then
		emake DESTDIR="${D}" install
	else
		emake -C lib DESTDIR="${D}" install
		emake -C libextra DESTDIR="${D}" install
	fi
}

multilib_src_install_all() {
	einstalldocs
	prune_libtool_files --all

	dodoc doc/certtool.cfg

	if use doc; then
		dodoc doc/gnutls.{pdf,ps}
		dohtml doc/gnutls.html
	else
		rm -fr "${ED}/usr/share/doc/${PF}/html"
	fi

	if use examples; then
		docinto examples
		dodoc doc/examples/*.c
	fi
}
