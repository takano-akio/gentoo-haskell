# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.14

EAPI="5"

if [[ ${PV} = 9999* ]]; then
	GIT_ECLASS="git-2"
fi

CABAL_FEATURES="bin"
inherit haskell-cabal eutils ${GIT_ECLASS}

DESCRIPTION="Dependently Typed Functional Programming Language"
HOMEPAGE="http://www.idris-lang.org/"
if [[ $PV != 9999* ]]; then
	SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"
fi
EGIT_REPO_URI="git://github.com/edwinb/Idris-dev.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS=""
IUSE="+llvm noeffects"

RDEPEND=""
DEPEND="${RDEPEND}
		dev-haskell/binary
		>=dev-haskell/cabal-1.6
		>=dev-haskell/haskeline-0.7
		>=dev-haskell/language-java-0.2.2
		dev-haskell/libffi
		dev-haskell/mtl
		>=dev-haskell/parsec-3
		dev-haskell/split
		dev-haskell/text
		dev-haskell/transformers
		dev-haskell/vector
		dev-haskell/vector-binary-instances
		>=dev-lang/ghc-6.10.4
		llvm? ( =dev-haskell/llvm-general-3.3.5*
		)"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag llvm llvm) \
		$(cabal_flag noeffects noeffects)
}
