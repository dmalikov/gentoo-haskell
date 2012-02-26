# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.15

EAPI=4

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Test.Framework wrapper for DocTest"
HOMEPAGE="http://hackage.haskell.org/package/test-framework-doctest"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
RESTRICT="test"

RDEPEND=">=dev-haskell/doctest-0.4.0
		dev-haskell/haddock
		>=dev-haskell/test-framework-0.4
		<dev-haskell/test-framework-0.6
		>=dev-haskell/test-framework-hunit-0.2
		>=dev-lang/ghc-6.10.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.10"

src_configure() {
	cabal_src_configure $(use_enable test tests)
}
