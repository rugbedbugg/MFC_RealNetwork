.class public Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private publicKey:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/BasePublicEncryptionKey;

.field private supportedSymmAlg:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SymmAlgorithm;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createPublicEncryptionKey()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;
    .locals 3

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey$Builder;->supportedSymmAlg:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SymmAlgorithm;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey$Builder;->publicKey:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/BasePublicEncryptionKey;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SymmAlgorithm;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/BasePublicEncryptionKey;)V

    return-object v0
.end method

.method public setPublicKey(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/BasePublicEncryptionKey;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey$Builder;->publicKey:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/BasePublicEncryptionKey;

    return-object p0
.end method

.method public setSupportedSymmAlg(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SymmAlgorithm;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey$Builder;->supportedSymmAlg:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SymmAlgorithm;

    return-object p0
.end method
