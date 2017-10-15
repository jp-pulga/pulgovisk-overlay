# Copyright 2017 Pulgovisk
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit eutils

DESCRIPTION="A modern flat theme that supports Gnome, Unity, XFCE and Openbox."
HOMEPAGE="https://numixproject.org"
LICENSE="GPL-3.0+"
SLOT="0"

KEYWORDS="alpha amd64 arm arm64 hppa ia64 mips ppc ppc64 s390 sh sparc x86"
SRC_URI="https://archlinux.surlyjake.com/archlinux/community/os/x86_64/${PF}-1-any.pkg.tar.xz"
S="${WORKDIR}/usr"

DEPEND="
	app-arch/gzip
	x11-themes/gtk-engines-murrine
	x11-libs/gtk+
"
RDEPEND="${DEPEND}"

src_install() {
	insinto /usr/share/themes/Numix
	doins -r share/themes/Numix/*
}
