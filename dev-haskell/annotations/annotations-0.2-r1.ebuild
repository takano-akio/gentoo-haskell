# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

# ebuild generated by hackport 0.2.15

EAPI=4

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

MY_PN="Annotations"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Constructing, analyzing and destructing annotated trees"
HOMEPAGE="http://hackage.haskell.org/package/Annotations"
SRC_URI="mirror://hackage/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/mtl-1.1[profile?]
		<dev-haskell/mtl-2.2[profile?]
		>=dev-haskell/multirec-0.4[profile?]
		<dev-haskell/multirec-0.8[profile?]
		>=dev-haskell/parsec-3.0[profile?]
		<dev-haskell/parsec-3.2[profile?]
		>=dev-lang/ghc-6.10.4"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.2"

S="${WORKDIR}/${MY_P}"

src_prepare() {
	sed -e 's@mtl >= 1.1 && < 2.1@mtl >= 1.1 \&\& < 2.2@' \
		-e 's@base >= 4.1 && < 4.6@base >= 4.1 \&\& < 5.0@' \
		-i "${S}/${MY_PN}.cabal" || die "Could not loosen dependencies"
}
