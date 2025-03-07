.class public Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;
.super Ljava/lang/Object;


# static fields
.field public static final lms_sha256_n32_h10:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

.field public static final lms_sha256_n32_h15:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

.field public static final lms_sha256_n32_h20:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

.field public static final lms_sha256_n32_h25:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

.field public static final lms_sha256_n32_h5:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

.field private static paramBuilders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final digestOid:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private final h:I

.field private final m:I

.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 0
    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v2, 0x5

    const/16 v3, 0x20

    invoke-direct {v0, v2, v3, v2, v1}, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;-><init>(IIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->lms_sha256_n32_h5:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    const/4 v2, 0x6

    const/16 v4, 0xa

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;-><init>(IIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->lms_sha256_n32_h10:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    const/4 v2, 0x7

    const/16 v4, 0xf

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;-><init>(IIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->lms_sha256_n32_h15:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    const/16 v2, 0x8

    const/16 v4, 0x14

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;-><init>(IIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->lms_sha256_n32_h20:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    const/16 v2, 0x9

    const/16 v4, 0x19

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;-><init>(IIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->lms_sha256_n32_h25:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters$1;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters$1;-><init>()V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->paramBuilders:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(IIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->type:I

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->m:I

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->h:I

    iput-object p4, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->digestOid:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method

.method static synthetic access$000(Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->type:I

    return p0
.end method

.method static getParametersForType(I)Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;
    .locals 1

    .line 0
    sget-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->paramBuilders:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    return-object p0
.end method


# virtual methods
.method public getDigestOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->digestOid:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public getH()I
    .locals 1

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->h:I

    return v0
.end method

.method public getM()I
    .locals 1

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->m:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->type:I

    return v0
.end method
