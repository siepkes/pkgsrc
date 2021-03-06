# $NetBSD: Makefile,v 1.52 2017/01/05 09:16:41 prlw1 Exp $

DISTNAME=	flac-1.3.2
CATEGORIES=	audio archivers
MASTER_SITES=	http://downloads.xiph.org/releases/flac/
EXTRACT_SUFX=	.tar.xz

# XXX remove at next update
DIST_SUBDIR=	flac

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://xiph.org/flac/
COMMENT=	Free lossless audio codec
LICENSE=	modified-bsd AND gnu-gpl-v2 AND gnu-lgpl-v2.1

WRKSRC=			${WRKDIR}/${PKGNAME_NOREV}
USE_LIBTOOL=		yes
USE_TOOLS+=		gmake
USE_LANGUAGES=		c c++
GNU_CONFIGURE=		yes

CONFIGURE_ENV+=		ac_cv_path_XMMS_CONFIG="no"
CONFIGURE_ENV+=		ac_cv_prog_DOXYGEN=""

PKGCONFIG_OVERRIDE+=	src/libFLAC++/flac++.pc.in src/libFLAC/flac.pc.in

.include "../../mk/bsd.prefs.mk"

.if !empty(MACHINE_PLATFORM:MNetBSD-*-i386)
BUILD_DEPENDS+=		nasm>=0.98:../../devel/nasm
.endif

.if !empty(MACHINE_PLATFORM:M*-*-powerpc)
.  if ${OPSYS} != "Darwin"
CONFIGURE_ARGS+=	--disable-asm-optimizations
CONFIGURE_ARGS+=	--disable-altivec
.  endif
.endif

.if !empty(MACHINE_PLATFORM:MDarwin-*-i386)
CONFIGURE_ARGS+=	--disable-asm-optimizations
.endif

.include "../../mk/compiler.mk"

# SunPro does not support __inline
.if !empty(PKGSRC_COMPILER:Msunpro)
CFLAGS+=	-D__inline=inline
.endif

# With -fgnu89-inline option duplicate symbols arise.
.if !empty(PKGSRC_COMPILER:Mclang)
BUILDLINK_TRANSFORM+=	rm:-fgnu89-inline
.endif

.include "../../multimedia/libogg/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
