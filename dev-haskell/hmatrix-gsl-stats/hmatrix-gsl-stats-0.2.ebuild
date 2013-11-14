# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.4.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="GSL Statistics interface"
HOMEPAGE="http://code.haskell.org/hmatrix-gsl-stats"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="mkl"

RDEPEND="dev-haskell/binary:=[profile?]
	>=dev-haskell/hmatrix-0.11.0.4:=[profile?]
	dev-haskell/storable-complex:=[profile?]
	>=dev-lang/ghc-6.10.4:=
	mkl? ( sci-libs/gsl
		sci-libs/mkl )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10.1.0
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag mkl mkl)
}