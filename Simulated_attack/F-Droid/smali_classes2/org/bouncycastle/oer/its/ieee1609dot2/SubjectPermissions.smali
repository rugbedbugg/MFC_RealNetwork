.class public Lorg/bouncycastle/oer/its/ieee1609dot2/SubjectPermissions;
.super Lorg/bouncycastle/asn1/ASN1Object;

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# static fields
.field public static final all:I = 0x1

.field public static final explicit:I


# instance fields
.field private final choice:I

.field private final subjectPermissions:Lorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method constructor <init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SubjectPermissions;->subjectPermissions:Lorg/bouncycastle/asn1/ASN1Encodable;

    iput p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SubjectPermissions;->choice:I

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V
    .locals 3

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SubjectPermissions;->choice:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Null;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Null;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SubjectPermissions;->subjectPermissions:Lorg/bouncycastle/asn1/ASN1Encodable;

    goto :goto_1

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

    invoke-static {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSspRange;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSspRange;

    move-result-object p1

    goto :goto_0

    :goto_1
    return-void
.end method

.method public static all()Lorg/bouncycastle/oer/its/ieee1609dot2/SubjectPermissions;
    .locals 3

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/SubjectPermissions;

    const/4 v1, 0x1

    sget-object v2, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/its/ieee1609dot2/SubjectPermissions;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public static explicit(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSspRange;)Lorg/bouncycastle/oer/its/ieee1609dot2/SubjectPermissions;
    .locals 2

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/SubjectPermissions;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/SubjectPermissions;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/SubjectPermissions;
    .locals 1

    .line 0
    instance-of v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SubjectPermissions;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SubjectPermissions;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/SubjectPermissions;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/SubjectPermissions;-><init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getChoice()I
    .locals 1

    .line 0
    iget v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SubjectPermissions;->choice:I

    return v0
.end method

.method public getSubjectPermissions()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SubjectPermissions;->subjectPermissions:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    .line 0
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SubjectPermissions;->choice:I

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SubjectPermissions;->subjectPermissions:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
