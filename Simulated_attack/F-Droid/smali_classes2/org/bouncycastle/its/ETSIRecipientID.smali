.class public Lorg/bouncycastle/its/ETSIRecipientID;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/util/Selector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/bouncycastle/util/Selector<",
        "Lorg/bouncycastle/its/ETSIRecipientInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final id:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/its/ETSIRecipientID;->id:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;

    invoke-direct {v0, p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/its/ETSIRecipientID;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 0

    .line 0
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lorg/bouncycastle/its/ETSIRecipientID;

    iget-object v2, p0, Lorg/bouncycastle/its/ETSIRecipientID;->id:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;

    iget-object p1, p1, Lorg/bouncycastle/its/ETSIRecipientID;->id:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;

    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/its/ETSIRecipientID;->id:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic match(Ljava/lang/Object;)Z
    .locals 0

    .line 0
    check-cast p1, Lorg/bouncycastle/its/ETSIRecipientInfo;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/its/ETSIRecipientID;->match(Lorg/bouncycastle/its/ETSIRecipientInfo;)Z

    move-result p1

    return p1
.end method

.method public match(Lorg/bouncycastle/its/ETSIRecipientInfo;)Z
    .locals 2

    .line 0
    invoke-virtual {p1}, Lorg/bouncycastle/its/ETSIRecipientInfo;->getRecipientInfo()Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;->getChoice()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/its/ETSIRecipientInfo;->getRecipientInfo()Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;->getRecipientInfo()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/PKRecipientInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/PKRecipientInfo;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/PKRecipientInfo;->getRecipientId()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId;->getHashBytes()[B

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/its/ETSIRecipientID;->id:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;

    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId;->getHashBytes()[B

    move-result-object v0

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
