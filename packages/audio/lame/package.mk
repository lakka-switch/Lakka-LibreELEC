# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)

PKG_NAME="lame"
PKG_VERSION="3.99.5"
PKG_SHA256="24346b4158e4af3bd9f2e194bb23eb473c75fb7377011523353196b19b9a23ff"
PKG_LICENSE="LGPL"
PKG_SITE="http://lame.sourceforge.net/"
PKG_URL="$SOURCEFORGE_SRC/lame/lame/3.99/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_SHORTDESC="lame: LAME Ain't an Mp3 Encoder"
PKG_LONGDESC="LAME originally stood for LAME Ain't an Mp3 Encoder. The goal of the LAME project is to use the open source model to improve the psycho acoustics, noise shaping and speed of MP3. Another goal of the LAME project is to use these improvements for the basis of a patent free audio compression codec for the GNU project."
PKG_BUILD_FLAGS="-parallel +pic"

# package specific configure options
PKG_CONFIGURE_OPTS_TARGET="--enable-static \
                           --disable-shared \
                           --disable-nasm \
                           --disable-rpath \
                           --disable-cpml \
                           --disable-gtktest \
                           --disable-efence \
                           --disable-analyzer-hooks \
                           --enable-decoder \
                           --disable-frontend \
                           --disable-mp3x \
                           --disable-mp3rtp \
                           --disable-dynamic-frontends \
                           --enable-expopt=no \
                           --enable-debug=no \
                           --with-gnu-ld \
                           --with-fileio=lame \
                           GTK_CONFIG=no"
