.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher$KEM;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KEM"
.end annotation


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;II)V
    .locals 6

    .line 0
    new-instance v1, Lorg/bouncycastle/crypto/agreement/ECDHCBasicAgreement;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/agreement/ECDHCBasicAgreement;-><init>()V

    new-instance v2, Lorg/bouncycastle/crypto/generators/KDF2BytesGenerator;

    invoke-direct {v2, p1}, Lorg/bouncycastle/crypto/generators/KDF2BytesGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    new-instance v3, Lorg/bouncycastle/crypto/macs/HMac;

    invoke-direct {v3, p2}, Lorg/bouncycastle/crypto/macs/HMac;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    move-object v0, p0

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;-><init>(Lorg/bouncycastle/crypto/agreement/ECDHCBasicAgreement;Lorg/bouncycastle/crypto/generators/KDF2BytesGenerator;Lorg/bouncycastle/crypto/Mac;II)V

    return-void
.end method
