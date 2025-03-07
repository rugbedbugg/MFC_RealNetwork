.class public Lorg/bouncycastle/crypto/signers/RandomDSAKCalculator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/signers/DSAKCalculator;


# static fields
.field private static final ZERO:Ljava/math/BigInteger;


# instance fields
.field private q:Ljava/math/BigInteger;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/signers/RandomDSAKCalculator;->ZERO:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .locals 0

    .line 0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Operation not supported"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public init(Ljava/math/BigInteger;Ljava/security/SecureRandom;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/crypto/signers/RandomDSAKCalculator;->q:Ljava/math/BigInteger;

    iput-object p2, p0, Lorg/bouncycastle/crypto/signers/RandomDSAKCalculator;->random:Ljava/security/SecureRandom;

    return-void
.end method

.method public isDeterministic()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public nextK()Ljava/math/BigInteger;
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/RandomDSAKCalculator;->q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/RandomDSAKCalculator;->random:Ljava/security/SecureRandom;

    invoke-static {v0, v1}, Lorg/bouncycastle/util/BigIntegers;->createRandomBigInteger(ILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/crypto/signers/RandomDSAKCalculator;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/RandomDSAKCalculator;->q:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gez v2, :cond_0

    return-object v1
.end method
