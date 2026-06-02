# Maintainer: MS-DOS Manfred <hoefer9(AT)gmail.com>
pkgname=mdsx-git # '-bzr', '-git', '-hg' or '-svn'
pkgver=r8.286c656
pkgrel=1
pkgdesc="MDS v2 / MDX decryption library"
arch=('x86_64')
url="https://github.com/86Box/mdsx"
license=('MIT')
groups=()
depends=('glibc')
makedepends=('git') # 'bzr', 'git', 'mercurial' or 'subversion'
provides=("mdsx")
conflicts=()
replaces=()
backup=()
options=()
source=("${pkgname}::git+https://github.com/86Box/mdsx.git")
sha256sums=('SKIP')

pkgver() {
	cd $pkgname
	printf "r%s.%s" "$(git rev-list --count HEAD)" "$(git rev-parse --short HEAD)"
}

build() {
	cd $srcdir/$pkgname/src
	make
}

package() {
	cd $srcdir/$pkgname/src
	install -Dm644 "mdsx.so" "$pkgdir/usr/lib/mdsx.so"
	install -Dm644 "../LICENSE" -t "${pkgdir}/usr/share/licenses/${pkgname}/"
}
