.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher$KEMwithSHA256;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher$KEM;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KEMwithSHA256"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 0
    invoke-static {}, Lorg/bouncycastle/crypto/util/DigestFactory;->createSHA256()Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    invoke-static {}, Lorg/bouncycastle/crypto/util/DigestFactory;->createSHA256()Lorg/bouncycastle/crypto/Digest;

    move-result-object v1

    const/16 v2, 0x20

    const/16 v3, 0x10

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher$KEM;-><init>(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;II)V

    return-void
.end method
