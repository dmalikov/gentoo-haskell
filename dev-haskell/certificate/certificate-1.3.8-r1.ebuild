# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.2.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Certificates and Key Reader/Writer"
HOMEPAGE="http://github.com/vincenthz/hs-certificate"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="executable test"
RESTRICT="test" # due missing tests

RDEPEND=">=dev-haskell/asn1-data-0.7.1:=[profile?]
		<dev-haskell/asn1-data-0.8.0:=[profile?]
		>=dev-haskell/crypto-pubkey-types-0.3:=[profile?]
		<dev-haskell/crypto-pubkey-types-0.5:=[profile?]
		dev-haskell/cryptohash:=[profile?]
		dev-haskell/mtl:=[profile?]
		>=dev-haskell/pem-0.1:=[profile?] <dev-haskell/pem-0.3:=[profile?]
		>=dev-lang/ghc-6.12.1:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6
		executable? ( dev-haskell/cmdargs:=[profile?]
			dev-haskell/crypto-pubkey:=[profile?]
			>=dev-haskell/text-0.11:=[profile?]
		)
		test? ( dev-haskell/hunit:=[profile?]
			>=dev-haskell/quickcheck-2:=[profile?]
		)"

src_prepare() {
	cabal_chdeps \
		'pem >= 0.1 && < 0.2' 'pem >= 0.1 && < 0.3'
}

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag executable executable) \
		$(cabal_flag test test)
}
