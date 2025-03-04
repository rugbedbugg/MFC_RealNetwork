.class public Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyParamsOriginal;
.super Lorg/bouncycastle/asn1/ASN1Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyParamsOriginal$Builder;
    }
.end annotation


# instance fields
.field private final encryptionExpansion:Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyExpansion;

.field private final encryptionKey:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;

.field private final signingExpansion:Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyExpansion;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 2

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyExpansion;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyExpansion;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyParamsOriginal;->signingExpansion:Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyExpansion;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyParamsOriginal;->encryptionKey:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyExpansion;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyExpansion;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyParamsOriginal;->encryptionExpansion:Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyExpansion;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "expected sequence size of 3"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyExpansion;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyExpansion;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyParamsOriginal;->signingExpansion:Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyExpansion;

    iput-object p2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyParamsOriginal;->encryptionKey:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;

    iput-object p3, p0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyParamsOriginal;->encryptionExpansion:Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyExpansion;

    return-void
.end method

.method public static builder()Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyParamsOriginal$Builder;
    .locals 1

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyParamsOriginal$Builder;

    invoke-direct {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyParamsOriginal$Builder;-><init>()V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyParamsOriginal;
    .locals 1

    .line 0
    instance-of v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyParamsOriginal;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyParamsOriginal;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyParamsOriginal;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyParamsOriginal;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getEncryptionExpansion()Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyExpansion;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyParamsOriginal;->encryptionExpansion:Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyExpansion;

    return-object v0
.end method

.method public getEncryptionKey()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyParamsOriginal;->encryptionKey:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;

    return-object v0
.end method

.method public getSigningExpansion()Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyExpansion;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyParamsOriginal;->signingExpansion:Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyExpansion;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    .line 0
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    const/4 v1, 0x3

    new-array v1, v1, [Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyParamsOriginal;->signingExpansion:Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyExpansion;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyParamsOriginal;->encryptionKey:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyParamsOriginal;->encryptionExpansion:Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyExpansion;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
