# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.2

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="WAI support for server-sent events"
HOMEPAGE="http://www.yesodweb.com/book/wai"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="=dev-haskell/blaze-builder-0.3*:=[profile?]
		=dev-haskell/conduit-0.5*:=[profile?]
		>=dev-haskell/http-types-0.7:=[profile?]
		dev-haskell/transformers:=[profile?]
		=dev-haskell/wai-1.3*:=[profile?]
		=dev-haskell/warp-1.3*:=[profile?]
		>=dev-lang/ghc-7.0.1:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8"
