.class public Lorg/bouncycastle/jcajce/provider/digest/SHA512$OldSHA512;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/digest/SHA512;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OldSHA512"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 0
    new-instance v0, Lorg/bouncycastle/crypto/macs/OldHMac;

    new-instance v1, Lorg/bouncycastle/crypto/digests/SHA512Digest;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/digests/SHA512Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/macs/OldHMac;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;-><init>(Lorg/bouncycastle/crypto/Mac;)V

    return-void
.end method
