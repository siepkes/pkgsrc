# $NetBSD: Makefile,v 1.10 2017/07/11 10:20:03 jaapb Exp $

DISTNAME=	cppo-1.5.0
PKGNAME=	ocaml-${DISTNAME}
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GITHUB:=mjambon/}
GITHUB_TAG=	v${PKGVERSION_NOREV}
GITHUB_PROJECT=	cppo

MAINTAINER=	jaapb@NetBSD.org
HOMEPAGE=	http://mjambon.com/cppo.html
COMMENT=	C-style preprocessor for OCaml
LICENSE=	modified-bsd

USE_LANGUAGES=	# none
USE_TOOLS+=	gmake

OCAML_USE_FINDLIB=	yes

.include "../../mk/ocaml.mk"

BUILD_TARGET=	ocamlbuild all
.if ${OCAML_USE_OPT_COMPILER} == "yes"
BUILD_TARGET+=	opt
MAKE_ENV+=	BEST=.native NATDYNLINK=YES
.else
MAKE_ENV+=	BEST=.byte
.endif

MAKE_ENV+=	BINDIR=${DESTDIR}/${PREFIX}/bin DESTDIR=${DESTDIR} OCAML_SITELIBDIR=${OCAML_SITELIBDIR}
INSTALLATION_DIRS+=	bin ${OCAML_SITELIBDIR}/cppo_ocamlbuild
OCAML_FINDLIB_DIRS=	cppo_ocamlbuild

.include "../../devel/ocamlbuild/buildlink3.mk"
.include "../../lang/camlp4/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
