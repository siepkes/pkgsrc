# $NetBSD: Makefile,v 1.1 2016/07/17 21:59:31 wiz Exp $

DISTNAME=	context-games
PKGNAME=	tex-${DISTNAME}-2015
TEXLIVE_REV=	23167

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://ctan.org/pkg/context-games
COMMENT=	ConTeXt support for board games
LICENSE=	public-domain

DEPENDS+=	tex-skaknew-[0-9]*:../../print/tex-skaknew
DEPENDS+=	tex-context-[0-9]*:../../print/tex-context

.include "../../print/texlive/package.mk"
.include "../../mk/bsd.pkg.mk"
