.class public Lorg/bouncycastle/crypto/signers/Ed448Signer;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/Signer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/signers/Ed448Signer$Buffer;
    }
.end annotation


# instance fields
.field private final buffer:Lorg/bouncycastle/crypto/signers/Ed448Signer$Buffer;

.field private final context:[B

.field private forSigning:Z

.field private privateKey:Lorg/bouncycastle/crypto/params/Ed448PrivateKeyParameters;

.field private publicKey:Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;


# direct methods
.method public constructor <init>([B)V
    .locals 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/signers/Ed448Signer$Buffer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/signers/Ed448Signer$Buffer;-><init>(Lorg/bouncycastle/crypto/signers/Ed448Signer$1;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed448Signer;->buffer:Lorg/bouncycastle/crypto/signers/Ed448Signer$Buffer;

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/signers/Ed448Signer;->context:[B

    return-void
.end method


# virtual methods
.method public generateSignature()[B
    .locals 3

    .line 0
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/signers/Ed448Signer;->forSigning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed448Signer;->privateKey:Lorg/bouncycastle/crypto/params/Ed448PrivateKeyParameters;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/Ed448Signer;->buffer:Lorg/bouncycastle/crypto/signers/Ed448Signer$Buffer;

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/Ed448Signer;->context:[B

    invoke-virtual {v1, v0, v2}, Lorg/bouncycastle/crypto/signers/Ed448Signer$Buffer;->generateSignature(Lorg/bouncycastle/crypto/params/Ed448PrivateKeyParameters;[B)[B

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Ed448Signer not initialised for signature generation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 1

    .line 0
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/signers/Ed448Signer;->forSigning:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    check-cast p2, Lorg/bouncycastle/crypto/params/Ed448PrivateKeyParameters;

    iput-object p2, p0, Lorg/bouncycastle/crypto/signers/Ed448Signer;->privateKey:Lorg/bouncycastle/crypto/params/Ed448PrivateKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed448Signer;->publicKey:Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed448Signer;->privateKey:Lorg/bouncycastle/crypto/params/Ed448PrivateKeyParameters;

    check-cast p2, Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;

    iput-object p2, p0, Lorg/bouncycastle/crypto/signers/Ed448Signer;->publicKey:Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;

    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/signers/Ed448Signer;->reset()V

    return-void
.end method

.method public reset()V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed448Signer;->buffer:Lorg/bouncycastle/crypto/signers/Ed448Signer$Buffer;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/signers/Ed448Signer$Buffer;->reset()V

    return-void
.end method

.method public update(B)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed448Signer;->buffer:Lorg/bouncycastle/crypto/signers/Ed448Signer$Buffer;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public update([BII)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed448Signer;->buffer:Lorg/bouncycastle/crypto/signers/Ed448Signer$Buffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method public verifySignature([B)Z
    .locals 3

    .line 0
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/signers/Ed448Signer;->forSigning:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed448Signer;->publicKey:Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/Ed448Signer;->buffer:Lorg/bouncycastle/crypto/signers/Ed448Signer$Buffer;

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/Ed448Signer;->context:[B

    invoke-virtual {v1, v0, v2, p1}, Lorg/bouncycastle/crypto/signers/Ed448Signer$Buffer;->verifySignature(Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;[B[B)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Ed448Signer not initialised for verification"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
