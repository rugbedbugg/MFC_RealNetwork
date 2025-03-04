.class public Lorg/bouncycastle/oer/its/etsi103097/extension/Extension;
.super Lorg/bouncycastle/asn1/ASN1Object;


# static fields
.field public static final etsiTs102941CrlRequestId:Lorg/bouncycastle/oer/its/etsi103097/extension/ExtId;

.field public static final etsiTs102941DeltaCtlRequestId:Lorg/bouncycastle/oer/its/etsi103097/extension/ExtId;


# instance fields
.field private final content:Lorg/bouncycastle/asn1/ASN1Encodable;

.field private final id:Lorg/bouncycastle/oer/its/etsi103097/extension/ExtId;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/etsi103097/extension/ExtId;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/its/etsi103097/extension/ExtId;-><init>(J)V

    sput-object v0, Lorg/bouncycastle/oer/its/etsi103097/extension/Extension;->etsiTs102941CrlRequestId:Lorg/bouncycastle/oer/its/etsi103097/extension/ExtId;

    new-instance v0, Lorg/bouncycastle/oer/its/etsi103097/extension/ExtId;

    const-wide/16 v1, 0x2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/its/etsi103097/extension/ExtId;-><init>(J)V

    sput-object v0, Lorg/bouncycastle/oer/its/etsi103097/extension/Extension;->etsiTs102941DeltaCtlRequestId:Lorg/bouncycastle/oer/its/etsi103097/extension/ExtId;

    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 3

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/etsi103097/extension/ExtId;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi103097/extension/ExtId;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/etsi103097/extension/Extension;->id:Lorg/bouncycastle/oer/its/etsi103097/extension/ExtId;

    sget-object v1, Lorg/bouncycastle/oer/its/etsi103097/extension/Extension;->etsiTs102941CrlRequestId:Lorg/bouncycastle/oer/its/etsi103097/extension/ExtId;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941CrlRequest;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941CrlRequest;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi103097/extension/Extension;->content:Lorg/bouncycastle/asn1/ASN1Encodable;

    goto :goto_1

    :cond_0
    sget-object v1, Lorg/bouncycastle/oer/its/etsi103097/extension/Extension;->etsiTs102941DeltaCtlRequestId:Lorg/bouncycastle/oer/its/etsi103097/extension/ExtId;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941DeltaCtlRequest;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941DeltaCtlRequest;

    move-result-object p1

    goto :goto_0

    :goto_1
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "id not 1 (EtsiTs102941CrlRequest) or 2 (EtsiTs102941DeltaCtlRequest)"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "expected sequence size of 2"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/bouncycastle/oer/its/etsi103097/extension/ExtId;Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 2

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi103097/extension/Extension;->id:Lorg/bouncycastle/oer/its/etsi103097/extension/ExtId;

    invoke-virtual {p1}, Lorg/bouncycastle/oer/its/etsi103097/extension/ExtId;->getExtId()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/oer/its/etsi103097/extension/ExtId;->getExtId()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "id not 1 (EtsiTs102941CrlRequest) or 2 (EtsiTs102941DeltaCtlRequest)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p2, p0, Lorg/bouncycastle/oer/its/etsi103097/extension/Extension;->content:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public static etsiTs102941CrlRequest(Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941CrlRequest;)Lorg/bouncycastle/oer/its/etsi103097/extension/Extension;
    .locals 2

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/etsi103097/extension/Extension;

    sget-object v1, Lorg/bouncycastle/oer/its/etsi103097/extension/Extension;->etsiTs102941CrlRequestId:Lorg/bouncycastle/oer/its/etsi103097/extension/ExtId;

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/etsi103097/extension/Extension;-><init>(Lorg/bouncycastle/oer/its/etsi103097/extension/ExtId;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public static etsiTs102941DeltaCtlRequest(Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941DeltaCtlRequest;)Lorg/bouncycastle/oer/its/etsi103097/extension/Extension;
    .locals 2

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/etsi103097/extension/Extension;

    sget-object v1, Lorg/bouncycastle/oer/its/etsi103097/extension/Extension;->etsiTs102941DeltaCtlRequestId:Lorg/bouncycastle/oer/its/etsi103097/extension/ExtId;

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/etsi103097/extension/Extension;-><init>(Lorg/bouncycastle/oer/its/etsi103097/extension/ExtId;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi103097/extension/Extension;
    .locals 1

    .line 0
    instance-of v0, p0, Lorg/bouncycastle/oer/its/etsi103097/extension/Extension;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/oer/its/etsi103097/extension/Extension;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/oer/its/etsi103097/extension/Extension;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/oer/its/etsi103097/extension/Extension;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getContent()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/its/etsi103097/extension/Extension;->content:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public getId()Lorg/bouncycastle/oer/its/etsi103097/extension/ExtId;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/its/etsi103097/extension/Extension;->id:Lorg/bouncycastle/oer/its/etsi103097/extension/ExtId;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    .line 0
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/oer/its/etsi103097/extension/Extension;->id:Lorg/bouncycastle/oer/its/etsi103097/extension/ExtId;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/bouncycastle/oer/its/etsi103097/extension/Extension;->content:Lorg/bouncycastle/asn1/ASN1Encodable;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
