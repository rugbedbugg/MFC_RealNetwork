.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ec/GMCipherSpi$SM2withBlake2s;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/ec/GMCipherSpi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/ec/GMCipherSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SM2withBlake2s"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 0
    new-instance v0, Lorg/bouncycastle/crypto/engines/SM2Engine;

    new-instance v1, Lorg/bouncycastle/crypto/digests/Blake2sDigest;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/digests/Blake2sDigest;-><init>(I)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/engines/SM2Engine;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/GMCipherSpi;-><init>(Lorg/bouncycastle/crypto/engines/SM2Engine;)V

    return-void
.end method
