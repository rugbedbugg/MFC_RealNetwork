.class Lorg/bouncycastle/pqc/crypto/cmce/GF12;
.super Lorg/bouncycastle/pqc/crypto/cmce/GF;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/cmce/GF;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected gf_frac(SS)S
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_inv(S)S

    move-result p1

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_mul(SS)S

    move-result p1

    return p1
.end method

.method protected gf_inv(S)S
    .locals 3

    .line 0
    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_sq(S)S

    move-result v0

    invoke-virtual {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_mul(SS)S

    move-result v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_sq(S)S

    move-result v1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_sq(S)S

    move-result v1

    invoke-virtual {p0, v1, v0}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_mul(SS)S

    move-result v1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_sq(S)S

    move-result v2

    invoke-virtual {p0, v2}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_sq(S)S

    move-result v2

    invoke-virtual {p0, v2}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_sq(S)S

    move-result v2

    invoke-virtual {p0, v2}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_sq(S)S

    move-result v2

    invoke-virtual {p0, v2, v1}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_mul(SS)S

    move-result v1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_sq(S)S

    move-result v1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_sq(S)S

    move-result v1

    invoke-virtual {p0, v1, v0}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_mul(SS)S

    move-result v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_sq(S)S

    move-result v0

    invoke-virtual {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_mul(SS)S

    move-result p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_sq(S)S

    move-result p1

    return p1
.end method

.method protected gf_mul(SS)S
    .locals 4

    .line 0
    and-int/lit8 v0, p2, 0x1

    mul-int/2addr v0, p1

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/GF;->GFBITS:I

    if-ge v2, v3, :cond_0

    shl-int v3, v1, v2

    and-int/2addr v3, p2

    mul-int/2addr v3, p1

    xor-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const p1, 0x7fc000

    and-int/2addr p1, v0

    shr-int/lit8 p2, p1, 0x9

    xor-int/2addr p2, v0

    shr-int/lit8 p1, p1, 0xc

    xor-int/2addr p1, p2

    and-int/lit16 p2, p1, 0x3000

    shr-int/lit8 v0, p2, 0x9

    xor-int/2addr p1, v0

    shr-int/lit8 p2, p2, 0xc

    xor-int/2addr p1, p2

    shl-int p2, v1, v3

    sub-int/2addr p2, v1

    and-int/2addr p1, p2

    int-to-short p1, p1

    return p1
.end method

.method protected gf_sq(S)S
    .locals 4

    .line 0
    const v0, 0xf0f0f0f

    const v1, 0xff00ff

    const v2, 0x55555555

    const v3, 0x33333333

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    shl-int/lit8 v1, p1, 0x8

    or-int/2addr p1, v1

    const/4 v1, 0x3

    aget v1, v0, v1

    and-int/2addr p1, v1

    shl-int/lit8 v1, p1, 0x4

    or-int/2addr p1, v1

    const/4 v1, 0x2

    aget v1, v0, v1

    and-int/2addr p1, v1

    shl-int/lit8 v1, p1, 0x2

    or-int/2addr p1, v1

    const/4 v1, 0x1

    aget v2, v0, v1

    and-int/2addr p1, v2

    shl-int/lit8 v2, p1, 0x1

    or-int/2addr p1, v2

    const/4 v2, 0x0

    aget v0, v0, v2

    and-int/2addr p1, v0

    const v0, 0x7fc000

    and-int/2addr v0, p1

    shr-int/lit8 v2, v0, 0x9

    xor-int/2addr p1, v2

    shr-int/lit8 v0, v0, 0xc

    xor-int/2addr p1, v0

    and-int/lit16 v0, p1, 0x3000

    shr-int/lit8 v2, v0, 0x9

    xor-int/2addr p1, v2

    shr-int/lit8 v0, v0, 0xc

    xor-int/2addr p1, v0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/GF;->GFBITS:I

    shl-int v0, v1, v0

    sub-int/2addr v0, v1

    and-int/2addr p1, v0

    int-to-short p1, p1

    return p1
.end method
