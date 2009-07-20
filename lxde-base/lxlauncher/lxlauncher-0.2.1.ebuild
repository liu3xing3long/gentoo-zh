# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /home/cvsroot/ebuildteam/x11-misc/lxsession/lxsession-0.1.1.ebuild,v 1.2 2007/03/20 09:37:22 paar Exp $

DESCRIPTION="LXDE Launcher is a replacement of launcher application from Xandros on ASUS EeePC"
HOMEPAGE="http://lxde.sf.net/"
SRC_URI="mirror://sourceforge/lxde/${P}.tar.gz"

LICENSE="GPL-2"

KEYWORDS="~amd64 ~x86"
SLOT="0"

DEPEND=">=x11-libs/gtk+-2"
RDEPEND="${DEPEND}
	gnome-base/gnome-menus
	x11-libs/startup-notification
	dev-util/pkgconfig
	sys-devel/gettext"

src_install () {
	emake install \
		prefix=${D}/usr \
		libdir=${D}/usr/lib64 \
		datadir=${D}/usr/share \
		mandir=${D}/usr/share/man \
		xsessiondir=${D}/usr/share/xsessions \
		defaultsdir=${D}/etc || die
	dodoc AUTHORS COPYING ChangeLog README
}
