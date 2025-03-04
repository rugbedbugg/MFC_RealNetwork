.class public Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;
.super Lorg/bouncycastle/asn1/ASN1Object;

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# static fields
.field public static final aa:I = 0x2

.field public static final dc:I = 0x3

.field public static final ea:I = 0x1

.field public static final rca:I = 0x0

.field public static final tlm:I = 0x4


# instance fields
.field private final choice:I

.field private final ctlEntry:Lorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;->choice:I

    iput-object p2, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;->ctlEntry:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V
    .locals 3

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;->choice:I

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/oer/its/etsi102941/TlmEntry;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/TlmEntry;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;->ctlEntry:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid choice value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/oer/its/etsi102941/DcEntry;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/DcEntry;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/oer/its/etsi102941/AaEntry;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/AaEntry;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/oer/its/etsi102941/EaEntry;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/EaEntry;

    move-result-object p1

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/oer/its/etsi102941/RootCaEntry;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/RootCaEntry;

    move-result-object p1

    goto :goto_0
.end method

.method public static aa(Lorg/bouncycastle/oer/its/etsi102941/AaEntry;)Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;
    .locals 2

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public static dc(Lorg/bouncycastle/oer/its/etsi102941/DcEntry;)Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;
    .locals 2

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public static ea(Lorg/bouncycastle/oer/its/etsi102941/EaEntry;)Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;
    .locals 2

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;
    .locals 1

    .line 0
    instance-of v0, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;-><init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static rca(Lorg/bouncycastle/oer/its/etsi102941/RootCaEntry;)Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;
    .locals 2

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public static tlm(Lorg/bouncycastle/oer/its/etsi102941/TlmEntry;)Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;
    .locals 2

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method


# virtual methods
.method public getChoice()I
    .locals 1

    .line 0
    iget v0, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;->choice:I

    return v0
.end method

.method public getCtlEntry()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;->ctlEntry:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    .line 0
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget v1, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;->choice:I

    iget-object v2, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;->ctlEntry:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
