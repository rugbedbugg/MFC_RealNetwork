.class public Lorg/bouncycastle/math/ec/ECCurve$Fp;
.super Lorg/bouncycastle/math/ec/ECCurve$AbstractFp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/math/ec/ECCurve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Fp"
.end annotation


# static fields
.field private static final FP_DEFAULT_COORDS:I = 0x4

.field private static final knownQs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation
.end field

.field private static final validatedQs:Lorg/bouncycastle/util/BigIntegers$Cache;


# instance fields
.field infinity:Lorg/bouncycastle/math/ec/ECPoint$Fp;

.field q:Ljava/math/BigInteger;

.field r:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/math/ec/ECCurve$Fp;->knownQs:Ljava/util/Set;

    new-instance v0, Lorg/bouncycastle/util/BigIntegers$Cache;

    invoke-direct {v0}, Lorg/bouncycastle/util/BigIntegers$Cache;-><init>()V

    sput-object v0, Lorg/bouncycastle/math/ec/ECCurve$Fp;->validatedQs:Lorg/bouncycastle/util/BigIntegers$Cache;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 6

    .line 0
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 7

    .line 0
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Z)V
    .locals 3

    .line 0
    invoke-direct {p0, p1}, Lorg/bouncycastle/math/ec/ECCurve$AbstractFp;-><init>(Ljava/math/BigInteger;)V

    if-eqz p6, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/math/ec/ECCurve$Fp;->q:Ljava/math/BigInteger;

    sget-object p6, Lorg/bouncycastle/math/ec/ECCurve$Fp;->knownQs:Ljava/util/Set;

    invoke-interface {p6, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    sget-object p6, Lorg/bouncycastle/math/ec/ECCurve$Fp;->knownQs:Ljava/util/Set;

    invoke-interface {p6, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p6

    if-nez p6, :cond_2

    sget-object p6, Lorg/bouncycastle/math/ec/ECCurve$Fp;->validatedQs:Lorg/bouncycastle/util/BigIntegers$Cache;

    invoke-virtual {p6, p1}, Lorg/bouncycastle/util/BigIntegers$Cache;->contains(Ljava/math/BigInteger;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "org.bouncycastle.ec.fp_max_size"

    const/16 v1, 0x412

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Properties;->asInteger(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "org.bouncycastle.ec.fp_certainty"

    const/16 v2, 0x64

    invoke-static {v1, v2}, Lorg/bouncycastle/util/Properties;->asInteger(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    if-lt v0, v2, :cond_4

    invoke-static {p1}, Lorg/bouncycastle/math/Primes;->hasAnySmallFactors(Ljava/math/BigInteger;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-static {v2, v1}, Lorg/bouncycastle/math/ec/ECCurve;->access$000(II)I

    move-result v1

    invoke-static {p1, v0, v1}, Lorg/bouncycastle/math/Primes;->isMRProbablePrime(Ljava/math/BigInteger;Ljava/security/SecureRandom;I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p6, p1}, Lorg/bouncycastle/util/BigIntegers$Cache;->add(Ljava/math/BigInteger;)V

    :cond_2
    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/math/ec/ECCurve$Fp;->q:Ljava/math/BigInteger;

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Fp q value not prime"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Fp q value out of range"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_1
    invoke-static {p1}, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->calculateResidue(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/math/ec/ECCurve$Fp;->r:Ljava/math/BigInteger;

    new-instance p1, Lorg/bouncycastle/math/ec/ECPoint$Fp;

    const/4 p6, 0x0

    invoke-direct {p1, p0, p6, p6}, Lorg/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    iput-object p1, p0, Lorg/bouncycastle/math/ec/ECCurve$Fp;->infinity:Lorg/bouncycastle/math/ec/ECPoint$Fp;

    invoke-virtual {p0, p2}, Lorg/bouncycastle/math/ec/ECCurve$Fp;->fromBigInteger(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/math/ec/ECCurve;->a:Lorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {p0, p3}, Lorg/bouncycastle/math/ec/ECCurve$Fp;->fromBigInteger(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/math/ec/ECCurve;->b:Lorg/bouncycastle/math/ec/ECFieldElement;

    iput-object p4, p0, Lorg/bouncycastle/math/ec/ECCurve;->order:Ljava/math/BigInteger;

    iput-object p5, p0, Lorg/bouncycastle/math/ec/ECCurve;->cofactor:Ljava/math/BigInteger;

    const/4 p1, 0x4

    iput p1, p0, Lorg/bouncycastle/math/ec/ECCurve;->coord:I

    return-void
.end method

.method protected constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/bouncycastle/math/ec/ECCurve$AbstractFp;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, Lorg/bouncycastle/math/ec/ECCurve$Fp;->q:Ljava/math/BigInteger;

    iput-object p2, p0, Lorg/bouncycastle/math/ec/ECCurve$Fp;->r:Ljava/math/BigInteger;

    new-instance p1, Lorg/bouncycastle/math/ec/ECPoint$Fp;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2, p2}, Lorg/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    iput-object p1, p0, Lorg/bouncycastle/math/ec/ECCurve$Fp;->infinity:Lorg/bouncycastle/math/ec/ECPoint$Fp;

    iput-object p3, p0, Lorg/bouncycastle/math/ec/ECCurve;->a:Lorg/bouncycastle/math/ec/ECFieldElement;

    iput-object p4, p0, Lorg/bouncycastle/math/ec/ECCurve;->b:Lorg/bouncycastle/math/ec/ECFieldElement;

    iput-object p5, p0, Lorg/bouncycastle/math/ec/ECCurve;->order:Ljava/math/BigInteger;

    iput-object p6, p0, Lorg/bouncycastle/math/ec/ECCurve;->cofactor:Ljava/math/BigInteger;

    const/4 p1, 0x4

    iput p1, p0, Lorg/bouncycastle/math/ec/ECCurve;->coord:I

    return-void
.end method


# virtual methods
.method protected cloneCurve()Lorg/bouncycastle/math/ec/ECCurve;
    .locals 8

    .line 0
    new-instance v7, Lorg/bouncycastle/math/ec/ECCurve$Fp;

    iget-object v1, p0, Lorg/bouncycastle/math/ec/ECCurve$Fp;->q:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/bouncycastle/math/ec/ECCurve$Fp;->r:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/bouncycastle/math/ec/ECCurve;->a:Lorg/bouncycastle/math/ec/ECFieldElement;

    iget-object v4, p0, Lorg/bouncycastle/math/ec/ECCurve;->b:Lorg/bouncycastle/math/ec/ECFieldElement;

    iget-object v5, p0, Lorg/bouncycastle/math/ec/ECCurve;->order:Ljava/math/BigInteger;

    iget-object v6, p0, Lorg/bouncycastle/math/ec/ECCurve;->cofactor:Ljava/math/BigInteger;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v7
.end method

.method protected createRawPoint(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 1

    .line 0
    new-instance v0, Lorg/bouncycastle/math/ec/ECPoint$Fp;

    invoke-direct {v0, p0, p1, p2}, Lorg/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method protected createRawPoint(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 1

    .line 0
    new-instance v0, Lorg/bouncycastle/math/ec/ECPoint$Fp;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method public fromBigInteger(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 3

    .line 0
    new-instance v0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;

    iget-object v1, p0, Lorg/bouncycastle/math/ec/ECCurve$Fp;->q:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/bouncycastle/math/ec/ECCurve$Fp;->r:Ljava/math/BigInteger;

    invoke-direct {v0, v1, v2, p1}, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public getFieldSize()I
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECCurve$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0
.end method

.method public getInfinity()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECCurve$Fp;->infinity:Lorg/bouncycastle/math/ec/ECPoint$Fp;

    return-object v0
.end method

.method public getQ()Ljava/math/BigInteger;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECCurve$Fp;->q:Ljava/math/BigInteger;

    return-object v0
.end method

.method public importPoint(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 5

    .line 0
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    if-eq p0, v0, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v0

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/math/ec/ECPoint$Fp;

    iget-object v1, p1, Lorg/bouncycastle/math/ec/ECPoint;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/math/ec/ECCurve$Fp;->fromBigInteger(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    iget-object v2, p1, Lorg/bouncycastle/math/ec/ECPoint;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/bouncycastle/math/ec/ECCurve$Fp;->fromBigInteger(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Lorg/bouncycastle/math/ec/ECFieldElement;

    iget-object p1, p1, Lorg/bouncycastle/math/ec/ECPoint;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    const/4 v4, 0x0

    aget-object p1, p1, v4

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/math/ec/ECCurve$Fp;->fromBigInteger(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lorg/bouncycastle/math/ec/ECCurve;->importPoint(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1
.end method

.method public supportsCoordinateSystem(I)Z
    .locals 2

    .line 0
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return v0
.end method
