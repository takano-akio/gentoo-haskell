# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Wrapper around the pdfinfo command."
HOMEPAGE="http://hackage.haskell.org/package/pdfinfo"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/mtl-1.1:=[profile?]
		<=dev-haskell/mtl-2.3:=[profile?]
		>=dev-lang/ghc-6.10.4:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.2"

src_prepare() {
	cabal_chdeps 'mtl >= 1.1 && <= 2.1.1' 'mtl >= 1.1 && < 2.3' \
		'process >= 1.0 && <= 1.1.0.1' 'process >= 1.0 && < 1.3' \
		'old-locale >= 1.0.0.0 && <= 1.0.0.4' 'old-locale >= 1.0 && < 1.1' \
		'time >= 1.1 && <= 1.4.0.1' 'time >= 1.1 && <= 1.5'
}
