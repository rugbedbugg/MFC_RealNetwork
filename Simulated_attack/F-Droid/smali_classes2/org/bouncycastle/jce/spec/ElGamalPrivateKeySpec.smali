.class public Lorg/bouncycastle/jce/spec/ElGamalPrivateKeySpec;
.super Lorg/bouncycastle/jce/spec/ElGamalKeySpec;


# instance fields
.field private x:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Lorg/bouncycastle/jce/spec/ElGamalParameterSpec;)V
    .locals 0

    .line 0
    invoke-direct {p0, p2}, Lorg/bouncycastle/jce/spec/ElGamalKeySpec;-><init>(Lorg/bouncycastle/jce/spec/ElGamalParameterSpec;)V

    iput-object p1, p0, Lorg/bouncycastle/jce/spec/ElGamalPrivateKeySpec;->x:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public getX()Ljava/math/BigInteger;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/jce/spec/ElGamalPrivateKeySpec;->x:Ljava/math/BigInteger;

    return-object v0
.end method
