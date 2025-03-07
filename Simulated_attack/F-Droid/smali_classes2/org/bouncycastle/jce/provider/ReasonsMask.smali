.class Lorg/bouncycastle/jce/provider/ReasonsMask;
.super Ljava/lang/Object;


# static fields
.field static final allReasons:Lorg/bouncycastle/jce/provider/ReasonsMask;


# instance fields
.field private _reasons:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lorg/bouncycastle/jce/provider/ReasonsMask;

    const v1, 0x80ff

    invoke-direct {v0, v1}, Lorg/bouncycastle/jce/provider/ReasonsMask;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/jce/provider/ReasonsMask;->allReasons:Lorg/bouncycastle/jce/provider/ReasonsMask;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/jce/provider/ReasonsMask;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/jce/provider/ReasonsMask;->_reasons:I

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/asn1/x509/ReasonFlags;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1BitString;->intValue()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/jce/provider/ReasonsMask;->_reasons:I

    return-void
.end method


# virtual methods
.method addReasons(Lorg/bouncycastle/jce/provider/ReasonsMask;)V
    .locals 1

    .line 0
    iget v0, p0, Lorg/bouncycastle/jce/provider/ReasonsMask;->_reasons:I

    invoke-virtual {p1}, Lorg/bouncycastle/jce/provider/ReasonsMask;->getReasons()I

    move-result p1

    or-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/jce/provider/ReasonsMask;->_reasons:I

    return-void
.end method

.method getReasons()I
    .locals 1

    .line 0
    iget v0, p0, Lorg/bouncycastle/jce/provider/ReasonsMask;->_reasons:I

    return v0
.end method

.method hasNewReasons(Lorg/bouncycastle/jce/provider/ReasonsMask;)Z
    .locals 2

    .line 0
    iget v0, p0, Lorg/bouncycastle/jce/provider/ReasonsMask;->_reasons:I

    invoke-virtual {p1}, Lorg/bouncycastle/jce/provider/ReasonsMask;->getReasons()I

    move-result p1

    iget v1, p0, Lorg/bouncycastle/jce/provider/ReasonsMask;->_reasons:I

    xor-int/2addr p1, v1

    or-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method intersect(Lorg/bouncycastle/jce/provider/ReasonsMask;)Lorg/bouncycastle/jce/provider/ReasonsMask;
    .locals 3

    .line 0
    new-instance v0, Lorg/bouncycastle/jce/provider/ReasonsMask;

    invoke-direct {v0}, Lorg/bouncycastle/jce/provider/ReasonsMask;-><init>()V

    new-instance v1, Lorg/bouncycastle/jce/provider/ReasonsMask;

    iget v2, p0, Lorg/bouncycastle/jce/provider/ReasonsMask;->_reasons:I

    invoke-virtual {p1}, Lorg/bouncycastle/jce/provider/ReasonsMask;->getReasons()I

    move-result p1

    and-int/2addr p1, v2

    invoke-direct {v1, p1}, Lorg/bouncycastle/jce/provider/ReasonsMask;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/jce/provider/ReasonsMask;->addReasons(Lorg/bouncycastle/jce/provider/ReasonsMask;)V

    return-object v0
.end method

.method isAllReasons()Z
    .locals 2

    .line 0
    iget v0, p0, Lorg/bouncycastle/jce/provider/ReasonsMask;->_reasons:I

    sget-object v1, Lorg/bouncycastle/jce/provider/ReasonsMask;->allReasons:Lorg/bouncycastle/jce/provider/ReasonsMask;

    iget v1, v1, Lorg/bouncycastle/jce/provider/ReasonsMask;->_reasons:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
