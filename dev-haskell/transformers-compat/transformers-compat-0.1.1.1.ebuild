# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="A small compatibility shim exposing the new types from transformers 0.3 to older Haskell platforms."
HOMEPAGE="http://github.com/ekmett/transformers-compat/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="transformers2"

RDEPEND=">=dev-lang/ghc-7.0.1:=
		transformers2? ( =dev-haskell/transformers-0.2*:=[profile?]
		)
		!transformers2? ( =dev-haskell/transformers-0.3*:=[profile?]
		)"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag transformers2 transformers2)
}
