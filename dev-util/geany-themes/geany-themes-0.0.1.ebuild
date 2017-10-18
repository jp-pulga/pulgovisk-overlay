# Copyright 2017 Pulgovisk
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit eutils git-r3

DESCRIPTION="Geany alternative themes"
HOMEPAGE="https://github.com/codebrainz/geany-themes"
LICENSE="GPL-2.0+"
KEYWORDS="alpha amd64 arm arm64 hppa ia64 mips ppc ppc64 s390 sh sparc x86"
SLOT="0"

RDEPEND=">=dev-util/geany-0.21"
EGIT_REPO_URI="https://github.com/codebrainz/geany-themes.git"

src_prepare() {
	default
	
	# Remove the MakeFile, we not need to compile this files
	echo "Removing makefile"
    rm Makefile
}

src_install() {
	insinto /usr/share/geany/colorschemes/
	doins colorschemes/*
}

