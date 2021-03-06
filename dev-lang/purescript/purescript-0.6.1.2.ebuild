# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.4.4.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="PureScript Programming Language Compiler"
HOMEPAGE="http://www.purescript.org/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT=test # tests need node.js

RDEPEND=">=dev-haskell/cmdtheline-0.2:=[profile?] <dev-haskell/cmdtheline-0.3:=[profile?]
	>=dev-haskell/file-embed-0.0.7:=[profile?] <dev-haskell/file-embed-0.0.8:=[profile?]
	>=dev-haskell/haskeline-0.7.0.0:=[profile?]
	>=dev-haskell/monad-unify-0.2.2:=[profile?] <dev-haskell/monad-unify-0.3:=[profile?]
	>=dev-haskell/mtl-2.1.0:=[profile?] <dev-haskell/mtl-2.3.0:=[profile?]
	dev-haskell/parsec:=[profile?]
	>=dev-haskell/pattern-arrows-0.0.2:=[profile?] <dev-haskell/pattern-arrows-0.1:=[profile?]
	>=dev-haskell/transformers-0.3:=[profile?] <dev-haskell/transformers-0.5:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	dev-haskell/utf8-string:=[profile?]
	>=dev-lang/ghc-7.6.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.16.0
"
