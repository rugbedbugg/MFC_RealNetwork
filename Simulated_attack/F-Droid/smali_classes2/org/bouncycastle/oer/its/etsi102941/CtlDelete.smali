.class public Lorg/bouncycastle/oer/its/etsi102941/CtlDelete;
.super Lorg/bouncycastle/asn1/ASN1Object;

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# static fields
.field public static final cert:I = 0x0

.field public static final dc:I = 0x1


# instance fields
.field private final choice:I

.field private final ctlDelete:Lorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 2

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlDelete;->choice:I

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-static {p2}, Lorg/bouncycastle/oer/its/etsi102941/DcDelete;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/DcDelete;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlDelete;->ctlDelete:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid choice value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    invoke-static {p2}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;

    move-result-object p1

    goto :goto_0
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V
    .locals 1

    .line 0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/oer/its/etsi102941/CtlDelete;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-void
.end method

.method public static cert(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;)Lorg/bouncycastle/oer/its/etsi102941/CtlDelete;
    .locals 2

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/CtlDelete;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/etsi102941/CtlDelete;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public static dc(Lorg/bouncycastle/oer/its/etsi102941/DcDelete;)Lorg/bouncycastle/oer/its/etsi102941/CtlDelete;
    .locals 2

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/CtlDelete;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/etsi102941/CtlDelete;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/CtlDelete;
    .locals 1

    .line 0
    instance-of v0, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlDelete;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/oer/its/etsi102941/CtlDelete;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/CtlDelete;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/oer/its/etsi102941/CtlDelete;-><init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getChoice()I
    .locals 1

    .line 0
    iget v0, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlDelete;->choice:I

    return v0
.end method

.method public getCtlDelete()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlDelete;->ctlDelete:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    .line 0
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget v1, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlDelete;->choice:I

    iget-object v2, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlDelete;->ctlDelete:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
