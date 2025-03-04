.class public Lorg/bouncycastle/jcajce/provider/digest/SHA3$KMac128;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/digest/SHA3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KMac128"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 0
    new-instance v0, Lorg/bouncycastle/crypto/macs/KMAC;

    const/4 v1, 0x0

    new-array v1, v1, [B

    const/16 v2, 0x80

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/crypto/macs/KMAC;-><init>(I[B)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;-><init>(Lorg/bouncycastle/crypto/Mac;)V

    return-void
.end method
