.class public Lorg/bouncycastle/crypto/params/ParametersWithSalt;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/CipherParameters;


# instance fields
.field private parameters:Lorg/bouncycastle/crypto/CipherParameters;

.field private salt:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V
    .locals 2

    .line 0
    array-length v0, p2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lorg/bouncycastle/crypto/params/ParametersWithSalt;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[BII)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/CipherParameters;[BII)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p4, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/params/ParametersWithSalt;->salt:[B

    iput-object p1, p0, Lorg/bouncycastle/crypto/params/ParametersWithSalt;->parameters:Lorg/bouncycastle/crypto/CipherParameters;

    const/4 p1, 0x0

    invoke-static {p2, p3, v0, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public getParameters()Lorg/bouncycastle/crypto/CipherParameters;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/ParametersWithSalt;->parameters:Lorg/bouncycastle/crypto/CipherParameters;

    return-object v0
.end method

.method public getSalt()[B
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/ParametersWithSalt;->salt:[B

    return-object v0
.end method
