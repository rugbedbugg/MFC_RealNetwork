.class final Lorg/bouncycastle/asn1/ASN1Tag;
.super Ljava/lang/Object;


# instance fields
.field private final tagClass:I

.field private final tagNumber:I


# direct methods
.method private constructor <init>(II)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/asn1/ASN1Tag;->tagClass:I

    iput p2, p0, Lorg/bouncycastle/asn1/ASN1Tag;->tagNumber:I

    return-void
.end method

.method static create(II)Lorg/bouncycastle/asn1/ASN1Tag;
    .locals 1

    .line 0
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Tag;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/asn1/ASN1Tag;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method getTagClass()I
    .locals 1

    .line 0
    iget v0, p0, Lorg/bouncycastle/asn1/ASN1Tag;->tagClass:I

    return v0
.end method

.method getTagNumber()I
    .locals 1

    .line 0
    iget v0, p0, Lorg/bouncycastle/asn1/ASN1Tag;->tagNumber:I

    return v0
.end method
