.class public Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner$dsaRMD160;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dsaRMD160"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 0
    new-instance v0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;-><init>()V

    new-instance v1, Lorg/bouncycastle/crypto/signers/DSASigner;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/signers/DSASigner;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;-><init>(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/DSAExt;)V

    return-void
.end method
