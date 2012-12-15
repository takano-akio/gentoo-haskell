# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Lens of Aeson"
HOMEPAGE="http://hackage.haskell.org/package/aeson-lens"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/aeson-0.6:=[profile?]
		>=dev-haskell/lens-3.7:=[profile?]
		>=dev-haskell/text-0.11:=[profile?]
		>=dev-haskell/unordered-containers-0.2.2:=[profile?]
		>=dev-haskell/vector-0.9:=[profile?]
		>=dev-lang/ghc-7.4.1:="
DEPEND="${RDEPEND}
		test? ( >=dev-haskell/doctest-0.9
		)
		>=dev-haskell/cabal-1.8"