.class public Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Duration;
.super Lorg/bouncycastle/asn1/ASN1Object;

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# static fields
.field public static final hours:I = 0x4

.field public static final microseconds:I = 0x0

.field public static final milliseconds:I = 0x1

.field public static final minutes:I = 0x3

.field public static final seconds:I = 0x2

.field public static final sixtyHours:I = 0x5

.field public static final years:I = 0x6


# instance fields
.field private final choice:I

.field private final duration:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT16;


# direct methods
.method public constructor <init>(ILorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT16;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Duration;->choice:I

    iput-object p2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Duration;->duration:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT16;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V
    .locals 3

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Duration;->choice:I

    packed-switch v0, :pswitch_data_0

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

    :pswitch_0
    :try_start_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT16;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT16;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Duration;->duration:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT16;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Duration;
    .locals 1

    .line 0
    instance-of v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Duration;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Duration;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Duration;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Duration;-><init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static hours(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT16;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Duration;
    .locals 2

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Duration;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Duration;-><init>(ILorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT16;)V

    return-object v0
.end method

.method public static microseconds(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT16;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Duration;
    .locals 2

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Duration;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Duration;-><init>(ILorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT16;)V

    return-object v0
.end method

.method public static milliseconds(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT16;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Duration;
    .locals 2

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Duration;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Duration;-><init>(ILorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT16;)V

    return-object v0
.end method

.method public static minutes(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT16;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Duration;
    .locals 2

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Duration;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Duration;-><init>(ILorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT16;)V

    return-object v0
.end method

.method public static seconds(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT16;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Duration;
    .locals 2

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Duration;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Duration;-><init>(ILorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT16;)V

    return-object v0
.end method

.method public static sixtyHours(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT16;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Duration;
    .locals 2

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Duration;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Duration;-><init>(ILorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT16;)V

    return-object v0
.end method

.method public static years(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT16;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Duration;
    .locals 2

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Duration;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Duration;-><init>(ILorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT16;)V

    return-object v0
.end method


# virtual methods
.method public getChoice()I
    .locals 1

    .line 0
    iget v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Duration;->choice:I

    return v0
.end method

.method public getDuration()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT16;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Duration;->duration:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT16;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    .line 0
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Duration;->choice:I

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Duration;->duration:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT16;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 0
    iget v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Duration;->choice:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Duration;->duration:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT16;

    iget-object v1, v1, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UintBase;->value:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " unknown choice"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Duration;->duration:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT16;

    iget-object v1, v1, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UintBase;->value:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " years"

    goto :goto_0

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Duration;->duration:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT16;

    iget-object v1, v1, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UintBase;->value:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " sixty hours"

    goto :goto_0

    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Duration;->duration:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT16;

    iget-object v1, v1, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UintBase;->value:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " hours"

    goto :goto_0

    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Duration;->duration:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT16;

    iget-object v1, v1, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UintBase;->value:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " minute"

    goto :goto_0

    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Duration;->duration:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT16;

    iget-object v1, v1, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UintBase;->value:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " seconds"

    goto :goto_0

    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Duration;->duration:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT16;

    iget-object v1, v1, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UintBase;->value:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "mS"

    goto :goto_0

    :pswitch_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Duration;->duration:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT16;

    iget-object v1, v1, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UintBase;->value:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "uS"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
