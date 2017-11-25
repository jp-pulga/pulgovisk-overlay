# Copyright 2017 Pulgovisk
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit eutils

DESCRIPTION="A fast, minimalist, and remarkably extensible cross-platform text editor"
HOMEPAGE="https://foicica.com/textadept/"
LICENSE="MIT"
SLOT="0"

KEYWORDS="amd64 x86"
SRC_URI="https://foicica.com/hg/textadept/archive/49292c42ef3f.zip"
S="${WORKDIR}/${PN}-49292c42ef3f"
IUSE="gtk gtk3 luajit ncurses"
REQUIRED_USE="|| ( ncurses gtk )
	gtk3? ( gtk )"

DEPEND="${RDEPEND}"
RDEPEND="
	gtk3?	( x11-libs/gtk+:3 )
	gtk?	( x11-libs/gtk+:2 )
	ncurses?	( sys-libs/ncurses )
"

src_compile() {
	cd src
	emake deps
	use luajit  && luajit_suffix="jit"
	use gtk3 && export GTK3=1
	use gtk     && emake ${PN}${luajit_suffix}
	use ncurses && emake ${PN}${luajit_suffix}-curses
}

src_install() {
	home=/usr/share/${PN}
	insinto ${home}
	doins -r core lexers modules themes *.lua
	exeinto ${home}
	for binfile in ${PN}*; do
		doexe ${binfile}
		dosym ../share/${PN}/${binfile} /usr/bin/${binfile/jit/}
	done
}
