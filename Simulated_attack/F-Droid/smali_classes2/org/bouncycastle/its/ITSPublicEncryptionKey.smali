.class public Lorg/bouncycastle/its/ITSPublicEncryptionKey;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/its/ITSPublicEncryptionKey$symmAlgorithm;
    }
.end annotation


# instance fields
.field protected final encryptionKey:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/its/ITSPublicEncryptionKey;->encryptionKey:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;

    return-void
.end method


# virtual methods
.method public toASN1Structure()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/its/ITSPublicEncryptionKey;->encryptionKey:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;

    return-object v0
.end method
