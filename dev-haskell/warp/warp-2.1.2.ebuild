# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.6.9999
#hackport: flags: -network-bytestring

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A fast, light-weight web server for WAI applications."
HOMEPAGE="http://github.com/yesodweb/wai"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+allow-sendfilefd"

RDEPEND=">=dev-haskell/blaze-builder-0.3.3:=[profile?] <dev-haskell/blaze-builder-0.4:=[profile?]
	>=dev-haskell/blaze-builder-conduit-0.5:=[profile?] <dev-haskell/blaze-builder-conduit-1.1:=[profile?]
	>=dev-haskell/case-insensitive-0.2:=[profile?]
	>=dev-haskell/conduit-0.5:=[profile?] <dev-haskell/conduit-1.1:=[profile?]
	dev-haskell/http-date:=[profile?]
	>=dev-haskell/http-types-0.7:=[profile?]
	>=dev-haskell/lifted-base-0.1:=[profile?]
	>=dev-haskell/network-2.3:=[profile?]
	>=dev-haskell/network-conduit-0.5:=[profile?] <dev-haskell/network-conduit-1.1:=[profile?]
	>=dev-haskell/simple-sendfile-0.2.7:=[profile?] <dev-haskell/simple-sendfile-0.3:=[profile?]
	>=dev-haskell/transformers-0.2.2:=[profile?] <dev-haskell/transformers-0.4:=[profile?]
	>=dev-haskell/unix-compat-0.2:=[profile?]
	dev-haskell/void:=[profile?]
	>=dev-haskell/wai-2.1:=[profile?] <dev-haskell/wai-2.2:=[profile?]
	>=dev-lang/ghc-6.10.4:=
	allow-sendfilefd? ( dev-haskell/hashable:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
	test? ( >=dev-haskell/doctest-0.9.3
		>=dev-haskell/hspec-1.3
		dev-haskell/http
		dev-haskell/hunit
		dev-haskell/quickcheck )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag allow-sendfilefd allow-sendfilefd) \
		--flag=-network-bytestring
}