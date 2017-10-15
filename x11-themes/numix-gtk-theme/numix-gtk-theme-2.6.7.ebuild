# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6

inherit eutils

DESCRIPTION="A modern flat theme that supports Gnome, Unity, XFCE and Openbox."
HOMEPAGE="https://numixproject.org"
LICENSE="GPL-3.0+"
SLOT="0"

KEYWORDS="~amd64 ~x86 ~arm"
SRC_URI="https://github.com/numixproject/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"

DEPEND="
	x11-themes/gtk-engines-murrine
	dev-ruby/sass
	dev-libs/glib:2
	x11-libs/gdk-pixbuf:2
"
RDEPEND="${DEPEND}"

src_compile(){
	emake DESTDIR="${D}" || die
}

src_install() {
	emake DESTDIR="${D}" install || die
}
