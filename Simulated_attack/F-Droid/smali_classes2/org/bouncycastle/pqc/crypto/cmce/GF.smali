.class abstract Lorg/bouncycastle/pqc/crypto/cmce/GF;
.super Ljava/lang/Object;


# instance fields
.field protected final GFBITS:I

.field protected final GFMASK:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/cmce/GF;->GFBITS:I

    const/4 v0, 0x1

    shl-int p1, v0, p1

    sub-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/cmce/GF;->GFMASK:I

    return-void
.end method


# virtual methods
.method gf_add(SS)S
    .locals 0

    .line 0
    xor-int/2addr p1, p2

    int-to-short p1, p1

    return p1
.end method

.method protected abstract gf_frac(SS)S
.end method

.method protected abstract gf_inv(S)S
.end method

.method gf_iszero(S)S
    .locals 0

    .line 0
    add-int/lit8 p1, p1, -0x1

    ushr-int/lit8 p1, p1, 0x13

    int-to-short p1, p1

    return p1
.end method

.method protected abstract gf_mul(SS)S
.end method
