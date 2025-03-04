.class public Lorg/bouncycastle/asn1/ASN1Absent;
.super Lorg/bouncycastle/asn1/ASN1Primitive;


# static fields
.field public static final INSTANCE:Lorg/bouncycastle/asn1/ASN1Absent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Absent;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1Absent;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/ASN1Absent;->INSTANCE:Lorg/bouncycastle/asn1/ASN1Absent;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;-><init>()V

    return-void
.end method


# virtual methods
.method asn1Equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z
    .locals 0

    .line 0
    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method encode(Lorg/bouncycastle/asn1/ASN1OutputStream;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method encodeConstructed()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method encodedLength(Z)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method
