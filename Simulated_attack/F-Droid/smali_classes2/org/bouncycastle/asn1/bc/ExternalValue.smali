.class public Lorg/bouncycastle/asn1/bc/ExternalValue;
.super Lorg/bouncycastle/asn1/ASN1Object;


# instance fields
.field private final hashAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private final hashVal:Lorg/bouncycastle/asn1/ASN1BitString;

.field private final location:Lorg/bouncycastle/asn1/x509/GeneralName;


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

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/bc/ExternalValue;->location:Lorg/bouncycastle/asn1/x509/GeneralName;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/bc/ExternalValue;->hashAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/bc/ExternalValue;->hashVal:Lorg/bouncycastle/asn1/ASN1BitString;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown sequence"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/GeneralName;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/bc/ExternalValue;->location:Lorg/bouncycastle/asn1/x509/GeneralName;

    iput-object p2, p0, Lorg/bouncycastle/asn1/bc/ExternalValue;->hashAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    new-instance p1, Lorg/bouncycastle/asn1/DERBitString;

    invoke-direct {p1, p3}, Lorg/bouncycastle/asn1/DERBitString;-><init>([B)V

    iput-object p1, p0, Lorg/bouncycastle/asn1/bc/ExternalValue;->hashVal:Lorg/bouncycastle/asn1/ASN1BitString;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bc/ExternalValue;
    .locals 1

    .line 0
    instance-of v0, p0, Lorg/bouncycastle/asn1/bc/ExternalValue;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/bc/ExternalValue;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/bc/ExternalValue;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/bc/ExternalValue;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getHashAlg()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/asn1/bc/ExternalValue;->hashAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getHashVal()Lorg/bouncycastle/asn1/ASN1BitString;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/asn1/bc/ExternalValue;->hashVal:Lorg/bouncycastle/asn1/ASN1BitString;

    return-object v0
.end method

.method public getLocation()Lorg/bouncycastle/asn1/x509/GeneralName;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/asn1/bc/ExternalValue;->location:Lorg/bouncycastle/asn1/x509/GeneralName;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 0
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/bc/ExternalValue;->location:Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/bc/ExternalValue;->hashAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/bc/ExternalValue;->hashVal:Lorg/bouncycastle/asn1/ASN1BitString;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
