# $NetBSD$

BUILDLINK_TREE+=	cjose-cjose

.if !defined(CJOSE_CJOSE_BUILDLINK3_MK)
CJOSE_CJOSE_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.cjose-cjose+=	cjose-cjose>=0.6.1
BUILDLINK_PKGSRCDIR.cjose-cjose?=	../../textproc/cjose

.include "../../textproc/jansson/buildlink3.mk"
.include "../../security/openssl/buildlink3.mk"
.endif	# CJOSE_CJOSE_BUILDLINK3_MK

BUILDLINK_TREE+=	-cjose-cjose
