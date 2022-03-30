# Maintainer: Zurab Benashvili <zura.benashvili@gmail.com>

_pkgname=dmenu
pkgname=$_pkgname
pkgver=4.9
pkgrel=1
epoch=1
pkgdesc='Generic menu for X'
url='https://tools.suckless.org/dmenu/'
arch=('i686' 'x86_64')
license=('MIT')
makedepends=('git')
depends=('sh' 'libxinerama' 'libxft' 'freetype2')
provides=($_pkgname)
conflicts=($_pkgname)
source=("git+https://github.com/binier/${_pkgname}.git")
sha256sums=('SKIP')

prepare() {
  cd $_pkgname
  # to use a custom config.h, place it in the package directory
  if [[ -f ${SRCDEST}/config.h ]]; then
      cp "${SRCDEST}/config.h" .
  fi
}

build(){
  cd $_pkgname
  make \
	  X11INC=/usr/include/X11 \
	  X11LIB=/usr/lib/X11 \
	  FREETYPEINC=/usr/include/freetype2
}

package() {
  cd $_pkgname
  make PREFIX=/usr DESTDIR="$pkgdir" install
  install -Dm644 LICENSE "$pkgdir"/usr/share/licenses/$pkgname/LICENSE
}

