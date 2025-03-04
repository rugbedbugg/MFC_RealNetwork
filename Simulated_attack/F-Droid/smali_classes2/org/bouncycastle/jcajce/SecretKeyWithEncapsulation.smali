.class public final Lorg/bouncycastle/jcajce/SecretKeyWithEncapsulation;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/crypto/SecretKey;


# instance fields
.field private final encapsulation:[B

.field private final secretKey:Ljavax/crypto/SecretKey;


# direct methods
.method public constructor <init>(Ljavax/crypto/SecretKey;[B)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/SecretKeyWithEncapsulation;->secretKey:Ljavax/crypto/SecretKey;

    invoke-static {p2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/SecretKeyWithEncapsulation;->encapsulation:[B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/SecretKeyWithEncapsulation;->secretKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/SecretKeyWithEncapsulation;->secretKey:Ljavax/crypto/SecretKey;

    invoke-interface {v0}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncapsulation()[B
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/SecretKeyWithEncapsulation;->encapsulation:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/SecretKeyWithEncapsulation;->secretKey:Ljavax/crypto/SecretKey;

    invoke-interface {v0}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/SecretKeyWithEncapsulation;->secretKey:Ljavax/crypto/SecretKey;

    invoke-interface {v0}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/SecretKeyWithEncapsulation;->secretKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
