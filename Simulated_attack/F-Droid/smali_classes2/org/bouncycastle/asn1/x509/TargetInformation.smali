.class public Lorg/bouncycastle/asn1/x509/TargetInformation;
.super Lorg/bouncycastle/asn1/ASN1Object;


# instance fields
.field private targets:Lorg/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/TargetInformation;->targets:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/Targets;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/TargetInformation;->targets:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/x509/Target;)V
    .locals 1

    .line 0
    new-instance v0, Lorg/bouncycastle/asn1/x509/Targets;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/x509/Targets;-><init>([Lorg/bouncycastle/asn1/x509/Target;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/x509/TargetInformation;-><init>(Lorg/bouncycastle/asn1/x509/Targets;)V

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/TargetInformation;
    .locals 1

    .line 0
    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/TargetInformation;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/x509/TargetInformation;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/x509/TargetInformation;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/TargetInformation;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getTargetsObjects()[Lorg/bouncycastle/asn1/x509/Targets;
    .locals 5

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/TargetInformation;->targets:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [Lorg/bouncycastle/asn1/x509/Targets;

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/TargetInformation;->targets:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v3, v2, 0x1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/x509/Targets;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Targets;

    move-result-object v4

    aput-object v4, v0, v2

    move v2, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/TargetInformation;->targets:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method
