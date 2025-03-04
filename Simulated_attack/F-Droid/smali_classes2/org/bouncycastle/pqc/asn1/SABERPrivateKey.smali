.class public Lorg/bouncycastle/pqc/asn1/SABERPrivateKey;
.super Lorg/bouncycastle/asn1/ASN1Object;


# instance fields
.field private PublicKey:Lorg/bouncycastle/pqc/asn1/SABERPublicKey;

.field private hpk:[B

.field private s:[B

.field private version:I

.field private z:[B


# direct methods
.method public constructor <init>(I[B[B[B)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pqc/asn1/SABERPrivateKey;->version:I

    if-nez p1, :cond_0

    iput-object p2, p0, Lorg/bouncycastle/pqc/asn1/SABERPrivateKey;->z:[B

    iput-object p3, p0, Lorg/bouncycastle/pqc/asn1/SABERPrivateKey;->s:[B

    iput-object p4, p0, Lorg/bouncycastle/pqc/asn1/SABERPrivateKey;->hpk:[B

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unrecognized version"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(I[B[B[BLorg/bouncycastle/pqc/asn1/SABERPublicKey;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pqc/asn1/SABERPrivateKey;->version:I

    if-nez p1, :cond_0

    iput-object p2, p0, Lorg/bouncycastle/pqc/asn1/SABERPrivateKey;->z:[B

    iput-object p3, p0, Lorg/bouncycastle/pqc/asn1/SABERPrivateKey;->s:[B

    iput-object p4, p0, Lorg/bouncycastle/pqc/asn1/SABERPrivateKey;->hpk:[B

    iput-object p5, p0, Lorg/bouncycastle/pqc/asn1/SABERPrivateKey;->PublicKey:Lorg/bouncycastle/pqc/asn1/SABERPublicKey;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unrecognized version"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/BigIntegers;->intValueExact(Ljava/math/BigInteger;)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/asn1/SABERPrivateKey;->version:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/asn1/SABERPrivateKey;->z:[B

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/asn1/SABERPrivateKey;->s:[B

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/asn1/SABERPublicKey;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/pqc/asn1/SABERPublicKey;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/asn1/SABERPrivateKey;->PublicKey:Lorg/bouncycastle/pqc/asn1/SABERPublicKey;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/asn1/SABERPrivateKey;->hpk:[B

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unrecognized version"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/pqc/asn1/SABERPrivateKey;
    .locals 1

    .line 0
    instance-of v0, p0, Lorg/bouncycastle/pqc/asn1/SABERPrivateKey;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/pqc/asn1/SABERPrivateKey;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/pqc/asn1/SABERPrivateKey;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/asn1/SABERPrivateKey;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getHpk()[B
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/asn1/SABERPrivateKey;->hpk:[B

    return-object v0
.end method

.method public getPublicKey()Lorg/bouncycastle/pqc/asn1/SABERPublicKey;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/asn1/SABERPrivateKey;->PublicKey:Lorg/bouncycastle/pqc/asn1/SABERPublicKey;

    return-object v0
.end method

.method public getS()[B
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/asn1/SABERPrivateKey;->s:[B

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/asn1/SABERPrivateKey;->version:I

    return v0
.end method

.method public getZ()[B
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/asn1/SABERPrivateKey;->z:[B

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    .line 0
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    iget v2, p0, Lorg/bouncycastle/pqc/asn1/SABERPrivateKey;->version:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v2, p0, Lorg/bouncycastle/pqc/asn1/SABERPrivateKey;->z:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v2, p0, Lorg/bouncycastle/pqc/asn1/SABERPrivateKey;->s:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v2, p0, Lorg/bouncycastle/pqc/asn1/SABERPrivateKey;->hpk:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
