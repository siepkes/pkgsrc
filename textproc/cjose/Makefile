# $NetBSD$

DISTNAME=       cjose-0.6.1
GITHUB_PROJECT=	cjose
PKGNAME=	${GITHUB_PROJECT}-${DISTNAME}
CATEGORIES=	textproc
MASTER_SITES=	${MASTER_SITE_GITHUB:=cisco/}
DIST_SUBDIR=	${GITHUB_PROJECT}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/cisco/cjose/
COMMENT=	C implementation of the Javascript Object Signing and Encryption (JOSE)
LICENSE=	mit

WRKSRC=		${WRKDIR}/cjose-0.6.1
GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	pkg-config

PKGCONFIG_OVERRIDE+=	cjose.pc.in

.include "../../textproc/jansson/buildlink3.mk"
.include "../../security/openssl/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
