.class public Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private final encapsulation:[B

.field private final keyAlgorithmName:Ljava/lang/String;

.field private final privateKey:Ljava/security/PrivateKey;


# direct methods
.method public constructor <init>(Ljava/security/PrivateKey;[BLjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;->privateKey:Ljava/security/PrivateKey;

    invoke-static {p2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;->encapsulation:[B

    iput-object p3, p0, Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;->keyAlgorithmName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEncapsulation()[B
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;->encapsulation:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getKeyAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;->keyAlgorithmName:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivateKey()Ljava/security/PrivateKey;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;->privateKey:Ljava/security/PrivateKey;

    return-object v0
.end method
