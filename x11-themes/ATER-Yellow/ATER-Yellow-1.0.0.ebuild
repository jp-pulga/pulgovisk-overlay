# Copyright 2017 Pulgovisk
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit eutils git-r3

DESCRIPTION="ATER Yellow cursor themes"
HOMEPAGE="https://github.com/Pulgovisk/ATER-Yellow"
LICENSE="GPL-3.0+"
SLOT="0"

KEYWORDS="alpha amd64 arm arm64 hppa ia64 mips ppc ppc64 s390 sh sparc x86"
EGIT_REPO_URI="https://github.com/Pulgovisk/ATER-Yellow.git"

DEPEND=""
RDEPEND="${DEPEND}"

src_install() {
	insinto /usr/share/icons/ATER-Yellow/cursors
	doins cursors/*
	insinto /usr/share/icons/ATER-Yellow/
	doins index.theme
}
