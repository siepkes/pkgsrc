# $NetBSD: Makefile,v 1.19 2017/04/22 21:03:23 adam Exp $

DISTNAME=	qtxmlpatterns-opensource-src-${QTVERSION}
PKGNAME=	qt5-qtxmlpatterns-${QTVERSION}
PKGREVISION=	7
COMMENT=	Qt5 module for XML Patterns

#NO_CONFIGURE=		yes
BUILD_TARGET=		sub-tools

INSTALL_ENV+=		INSTALL_ROOT=${DESTDIR}
INSTALLATION_DIRS+=	lib/pkgconfig

.include "../../x11/qt5-qtbase/Makefile.common"

post-install:
.for i in Qt5XmlPatterns.pc
	cd ${DESTDIR}${PREFIX}/lib/pkgconfig && \
	ln -f -s ${QTPREFIX}/lib/pkgconfig/${i} ${i}
.endfor

.include "../../x11/qt5-qtbase/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
