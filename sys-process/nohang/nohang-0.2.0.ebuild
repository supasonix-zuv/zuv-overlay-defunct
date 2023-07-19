# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3

DESCRIPTION="A sophisticated low memory handler for Linux"
HOMEPAGE="https://github.com/hakavlad/nohang"
LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
#IUSE="systemd"

#MY_PN="nohang"
#MY_PV=$(ver_rs [range])
#MY_P="${MY_PN}-${MY_PV}
EGIT_REPO_URI="https://github.com/hakavlad/nohang"
EGIT_COMMIT="v${PV}"

DEPEND="dev-lang/python"
RDEPEND="${DEPEND}"
BDEPEND=""

S="${WORKDIR}"/"${P}"

src_install() {
		PREFIX="/usr" SYSCONFDIR="/etc" emake DESTDIR="${D}" -B install-openrc
}
