# Copyright 2017 Pulgovisk
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit eutils flag-o-matic

DESCRIPTION="Textadept text editor"
HOMEPAGE="https://foicica.com/textadept/"
LICENSE="MIT"
SLOT="0"

KEYWORDS="amd64 x86"
DEPEND="${RDEPEND} net-misc/wget"
RDEPEND=">=x11-libs/gtk+-3.18"

SRC_URI="https://foicica.com/hg/textadept/archive/49292c42ef3f.zip"
S="${WORKDIR}/${PN}-49292c42ef3f"

src_compile() {
	cd src
	make deps
	make GTK3=1
	make curses
}

src_install() {
	into /usr/bin/
	for exe in textadept textadept-curses; do
		doexe $exe
	done
}
