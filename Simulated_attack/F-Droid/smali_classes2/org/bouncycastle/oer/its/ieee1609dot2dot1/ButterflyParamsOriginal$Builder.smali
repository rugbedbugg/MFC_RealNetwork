.class public Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyParamsOriginal$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyParamsOriginal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private encryptionExpansion:Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyExpansion;

.field private encryptionKey:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;

.field private signingExpansion:Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyExpansion;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createButterflyParamsOriginal()Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyParamsOriginal;
    .locals 4

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyParamsOriginal;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyParamsOriginal$Builder;->signingExpansion:Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyExpansion;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyParamsOriginal$Builder;->encryptionKey:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;

    iget-object v3, p0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyParamsOriginal$Builder;->encryptionExpansion:Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyExpansion;

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyParamsOriginal;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyExpansion;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyExpansion;)V

    return-object v0
.end method

.method public setEncryptionExpansion(Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyExpansion;)Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyParamsOriginal$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyParamsOriginal$Builder;->encryptionExpansion:Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyExpansion;

    return-object p0
.end method

.method public setEncryptionKey(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;)Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyParamsOriginal$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyParamsOriginal$Builder;->encryptionKey:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;

    return-object p0
.end method

.method public setSigningExpansion(Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyExpansion;)Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyParamsOriginal$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyParamsOriginal$Builder;->signingExpansion:Lorg/bouncycastle/oer/its/ieee1609dot2dot1/ButterflyExpansion;

    return-object p0
.end method
