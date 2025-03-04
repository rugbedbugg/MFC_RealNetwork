.class public Lorg/bouncycastle/oer/its/ieee1609dot2/SymmRecipientInfo$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/ieee1609dot2/SymmRecipientInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private encKey:Lorg/bouncycastle/oer/its/ieee1609dot2/SymmetricCiphertext;

.field private recipientId:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createSymmRecipientInfo()Lorg/bouncycastle/oer/its/ieee1609dot2/SymmRecipientInfo;
    .locals 3

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/SymmRecipientInfo;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SymmRecipientInfo$Builder;->recipientId:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SymmRecipientInfo$Builder;->encKey:Lorg/bouncycastle/oer/its/ieee1609dot2/SymmetricCiphertext;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/its/ieee1609dot2/SymmRecipientInfo;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;Lorg/bouncycastle/oer/its/ieee1609dot2/SymmetricCiphertext;)V

    return-object v0
.end method

.method public setEncKey(Lorg/bouncycastle/oer/its/ieee1609dot2/SymmetricCiphertext;)Lorg/bouncycastle/oer/its/ieee1609dot2/SymmRecipientInfo$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SymmRecipientInfo$Builder;->encKey:Lorg/bouncycastle/oer/its/ieee1609dot2/SymmetricCiphertext;

    return-object p0
.end method

.method public setRecipientId(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;)Lorg/bouncycastle/oer/its/ieee1609dot2/SymmRecipientInfo$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SymmRecipientInfo$Builder;->recipientId:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;

    return-object p0
.end method
