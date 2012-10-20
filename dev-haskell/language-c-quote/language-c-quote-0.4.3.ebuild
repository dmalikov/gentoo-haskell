# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="C/CUDA/OpenCL quasiquoting library."
HOMEPAGE="http://www.eecs.harvard.edu/~mainland/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="=dev-haskell/exception-mtl-0.3*:=[profile?]
		=dev-haskell/exception-transformers-0.3*:=[profile?]
		>=dev-haskell/haskell-src-meta-0.4:=[profile?]
		<dev-haskell/haskell-src-meta-0.7:=[profile?]
		=dev-haskell/mainland-pretty-0.2*:=[profile?]
		>=dev-haskell/mtl-2.0:=[profile?]
		<dev-haskell/mtl-3:=[profile?]
		>=dev-haskell/srcloc-0.2:=[profile?]
		<dev-haskell/srcloc-0.4:=[profile?]
		=dev-haskell/syb-0.3*:=[profile?]
		=dev-haskell/symbol-0.1*:=[profile?]
		>=dev-lang/ghc-7.0.1:="
DEPEND="${RDEPEND}
		test? ( =dev-haskell/hunit-1.2*
		)
		dev-haskell/alex
		>=dev-haskell/cabal-1.10
		dev-haskell/happy"
