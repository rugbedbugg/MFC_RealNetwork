.class public Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;
.super Lorg/bouncycastle/asn1/ASN1Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey$Builder;
    }
.end annotation


# instance fields
.field private final publicKey:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/BasePublicEncryptionKey;

.field private final supportedSymmAlg:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SymmAlgorithm;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 2

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SymmAlgorithm;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SymmAlgorithm;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;->supportedSymmAlg:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SymmAlgorithm;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/BasePublicEncryptionKey;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/BasePublicEncryptionKey;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;->publicKey:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/BasePublicEncryptionKey;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "expected sequence size of 2"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SymmAlgorithm;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/BasePublicEncryptionKey;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;->supportedSymmAlg:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SymmAlgorithm;

    iput-object p2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;->publicKey:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/BasePublicEncryptionKey;

    return-void
.end method

.method public static builder()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey$Builder;
    .locals 1

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey$Builder;

    invoke-direct {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey$Builder;-><init>()V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;
    .locals 1

    .line 0
    instance-of v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getPublicKey()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/BasePublicEncryptionKey;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;->publicKey:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/BasePublicEncryptionKey;

    return-object v0
.end method

.method public getSupportedSymmAlg()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SymmAlgorithm;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;->supportedSymmAlg:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SymmAlgorithm;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    .line 0
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;->supportedSymmAlg:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SymmAlgorithm;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;->publicKey:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/BasePublicEncryptionKey;

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/bouncycastle/oer/its/ItsUtils;->toSequence([Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    return-object v0
.end method
