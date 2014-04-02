# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit qt4-r2

DESCRIPTION="A Qt C++ widget for plotting"
HOMEPAGE="http://www.qcustomplot.com"
SRC_URI="http://www.qcustomplot.com/release/${PV}/QCustomPlot.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="doc debug"
DOCS=(
	"changelog.txt"
	"documentation/qcustomplot.qch"
)
HTML_DOCS=(
	"documentation/html/"
)

DEPEND=">=dev-qt/qtcore-4.6
	>=dev-qt/qtgui-4.6"
RDEPEND="${DEPEND}"

S="${WORKDIR}/qcustomplot"

src_prepare() {
	cp "${FILESDIR}/qcustomplot.pro" "${S}"
	qt4-r2_src_prepare
}

src_configure() {
	eqmake4 "qcustomplot.pro" VERSION=${PV}
}

src_install() {
	docompress -x "/usr/share/doc/${PF}/qcustomplot.qch"
	qt4-r2_src_install

	doheader "${S}/qcustomplot.h"
	dolib "${S}/libqcustomplot.so.1.2.0"
	insinto /usr/$(get_libdir)
	doins "${S}/libqcustomplot.so.1.2" "${S}/libqcustomplot.so.1" "${S}/libqcustomplot.so"
}
