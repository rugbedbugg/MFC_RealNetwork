.class final Lorg/bouncycastle/crypto/util/DigestFactory$12;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/util/DigestFactory$Cloner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/util/DigestFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createClone(Lorg/bouncycastle/crypto/Digest;)Lorg/bouncycastle/crypto/Digest;
    .locals 1

    .line 0
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    check-cast p1, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(Lorg/bouncycastle/crypto/digests/SHAKEDigest;)V

    return-object v0
.end method
