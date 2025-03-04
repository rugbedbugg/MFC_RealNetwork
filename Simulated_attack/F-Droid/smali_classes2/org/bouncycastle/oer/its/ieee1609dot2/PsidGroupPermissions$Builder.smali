.class public Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private chainLengthRange:Lorg/bouncycastle/asn1/ASN1Integer;

.field private eeType:Lorg/bouncycastle/oer/its/ieee1609dot2/EndEntityType;

.field private minChainLength:Lorg/bouncycastle/asn1/ASN1Integer;

.field private subjectPermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/SubjectPermissions;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createPsidGroupPermissions()Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions;
    .locals 5

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions$Builder;->subjectPermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/SubjectPermissions;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions$Builder;->minChainLength:Lorg/bouncycastle/asn1/ASN1Integer;

    iget-object v3, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions$Builder;->chainLengthRange:Lorg/bouncycastle/asn1/ASN1Integer;

    iget-object v4, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions$Builder;->eeType:Lorg/bouncycastle/oer/its/ieee1609dot2/EndEntityType;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/SubjectPermissions;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/oer/its/ieee1609dot2/EndEntityType;)V

    return-object v0
.end method

.method public setChainLengthRange(J)Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions$Builder;
    .locals 1

    .line 0
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions$Builder;->chainLengthRange:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object p0
.end method

.method public setChainLengthRange(Ljava/math/BigInteger;)Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions$Builder;
    .locals 1

    .line 0
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions$Builder;->chainLengthRange:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object p0
.end method

.method public setChainLengthRange(Lorg/bouncycastle/asn1/ASN1Integer;)Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions$Builder;->chainLengthRange:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object p0
.end method

.method public setEeType(Lorg/bouncycastle/oer/its/ieee1609dot2/EndEntityType;)Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions$Builder;->eeType:Lorg/bouncycastle/oer/its/ieee1609dot2/EndEntityType;

    return-object p0
.end method

.method public setMinChainLength(J)Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions$Builder;
    .locals 1

    .line 0
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions$Builder;->minChainLength:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object p0
.end method

.method public setMinChainLength(Ljava/math/BigInteger;)Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions$Builder;
    .locals 1

    .line 0
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions$Builder;->minChainLength:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object p0
.end method

.method public setMinChainLength(Lorg/bouncycastle/asn1/ASN1Integer;)Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions$Builder;->minChainLength:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object p0
.end method

.method public setSubjectPermissions(Lorg/bouncycastle/oer/its/ieee1609dot2/SubjectPermissions;)Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions$Builder;->subjectPermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/SubjectPermissions;

    return-object p0
.end method
