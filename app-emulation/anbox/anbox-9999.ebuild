# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="Android containerization framework for traditional Linux hosts"
HOMEPAGE="http://anbox.io/"

SRC_URI=""
EGIT_REPO_URI="https://github.com/anbox/anbox.git"

inherit git-r3 cmake-utils

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""
IUSE="modules"

DEPEND="
	dev-libs/dbus-c++
	app-emulation/lxc
	media-libs/libsdl2
	dev-libs/protobuf
	media-libs/glm
	dev-libs/boost[threads]
	sys-libs/libcap
	=dev-libs/glib-2*
	dev-libs/protobuf-c
	media-libs/mesa[egl,gles2]
"
RDEPEND="
	${DEPEND}
	modules? ( ~app-emulation/anbox-modules-${PV} )
"
#	|| (
#		app-emulation/anbox-image-bin
#		app-emulation/anbox-image
#	)

DEPEND+="
	dev-cpp/gmock
"

src_configure() {
	default
}
