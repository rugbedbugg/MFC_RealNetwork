.class public Lorg/bouncycastle/crypto/params/AEADParameters;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/CipherParameters;


# instance fields
.field private associatedText:[B

.field private key:Lorg/bouncycastle/crypto/params/KeyParameter;

.field private macSize:I

.field private nonce:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/params/KeyParameter;I[B)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/crypto/params/AEADParameters;-><init>(Lorg/bouncycastle/crypto/params/KeyParameter;I[B[B)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/params/KeyParameter;I[B[B)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/params/AEADParameters;->key:Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-static {p3}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/params/AEADParameters;->nonce:[B

    iput p2, p0, Lorg/bouncycastle/crypto/params/AEADParameters;->macSize:I

    invoke-static {p4}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/params/AEADParameters;->associatedText:[B

    return-void
.end method


# virtual methods
.method public getAssociatedText()[B
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/AEADParameters;->associatedText:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getKey()Lorg/bouncycastle/crypto/params/KeyParameter;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/AEADParameters;->key:Lorg/bouncycastle/crypto/params/KeyParameter;

    return-object v0
.end method

.method public getMacSize()I
    .locals 1

    .line 0
    iget v0, p0, Lorg/bouncycastle/crypto/params/AEADParameters;->macSize:I

    return v0
.end method

.method public getNonce()[B
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/AEADParameters;->nonce:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method
