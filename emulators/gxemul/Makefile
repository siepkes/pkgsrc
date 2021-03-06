# $NetBSD: Makefile,v 1.58 2017/07/16 14:10:58 christos Exp $

DISTNAME=	gxemul-0.6.0.1
PKGREVISION=	5
CATEGORIES=	emulators
MASTER_SITES=	http://gxemul.sourceforge.net/src/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://gxemul.sourceforge.net/
COMMENT=	Framework for full-system computer architecture emulation
LICENSE=	modified-bsd

USE_TOOLS+=	pax

USE_LANGUAGES=	c c++
HAS_CONFIGURE=	yes
BUILD_TARGET=	build

LDFLAGS.SunOS+=	-lsocket -lnsl

INSTALLATION_DIRS=	bin ${PKGMANDIR}/man1 share/doc/${PKGBASE}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/gxemul ${DESTDIR}${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/man/gxemul.1 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man1
.for f in README HISTORY LICENSE
	${INSTALL_DATA} ${WRKSRC}/${f} ${DESTDIR}${PREFIX}/share/doc/${PKGBASE}
.endfor
	cd ${WRKSRC}/doc && pax -rwppm . ${DESTDIR}${PREFIX}/share/doc/${PKGBASE}

PKG_OPTIONS_VAR=	PKG_OPTIONS.gxemul
PKG_SUPPORTED_OPTIONS=	x11
PKG_SUGGESTED_OPTIONS=	x11

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mx11)
GLOBAL_LDFLAGS=		-L${X11BASE}/lib ${COMPILER_RPATH_FLAG}${X11BASE}/lib
SUBST_CLASSES+=		x11
SUBST_STAGE.x11=	post-patch
SUBST_FILES.x11=	configure
SUBST_SED.x11=		-e 's|-L/usr/X11R6/lib|${GLOBAL_LDFLAGS:Q}|g'
SUBST_SED.x11+=		-e 's|/usr/X11R6|${X11BASE}|g'
SUBST_MESSAGE.x11=	Fixing X linking flags.

.include "../../x11/libX11/buildlink3.mk"
.endif

.include "../../mk/bsd.pkg.mk"
