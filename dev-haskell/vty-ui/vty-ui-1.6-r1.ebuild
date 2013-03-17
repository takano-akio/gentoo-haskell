# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="An interactive terminal user interface library for Vty"
HOMEPAGE="http://jtdaugherty.github.com/vty-ui/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/mtl-2.0:=[profile?]
		<dev-haskell/mtl-2.2:=[profile?]
		>=dev-haskell/quickcheck-2.4:2=[profile?]
		<dev-haskell/quickcheck-2.7:2=[profile?]
		>=dev-haskell/random-1.0:=[profile?]
		=dev-haskell/regex-base-0.93*:=[profile?]
		>=dev-haskell/stm-2.1:=[profile?]
		<dev-haskell/stm-2.5:=[profile?]
		>=dev-haskell/text-0.11:=[profile?]
		>=dev-haskell/vector-0.9:=[profile?]
		>=dev-haskell/vty-4.7.0.18:=[profile?]
		>=dev-lang/ghc-6.12.1:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8"

src_prepare() {
	cabal_chdeps \
		'QuickCheck >= 2.4 && < 2.6' 'QuickCheck >= 2.4 && < 2.7'
}