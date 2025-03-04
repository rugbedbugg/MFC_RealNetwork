.class public Lorg/bouncycastle/asn1/cmp/RevAnnContent;
.super Lorg/bouncycastle/asn1/ASN1Object;


# instance fields
.field private final badSinceDate:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

.field private final certId:Lorg/bouncycastle/asn1/crmf/CertId;

.field private crlDetails:Lorg/bouncycastle/asn1/x509/Extensions;

.field private final status:Lorg/bouncycastle/asn1/cmp/PKIStatus;

.field private final willBeRevokedAt:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 2

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cmp/PKIStatus;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/PKIStatus;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/RevAnnContent;->status:Lorg/bouncycastle/asn1/cmp/PKIStatus;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/crmf/CertId;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/CertId;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/RevAnnContent;->certId:Lorg/bouncycastle/asn1/crmf/CertId;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/RevAnnContent;->willBeRevokedAt:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/RevAnnContent;->badSinceDate:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/x509/Extensions;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/cmp/RevAnnContent;->crlDetails:Lorg/bouncycastle/asn1/x509/Extensions;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cmp/PKIStatus;Lorg/bouncycastle/asn1/crmf/CertId;Lorg/bouncycastle/asn1/ASN1GeneralizedTime;Lorg/bouncycastle/asn1/ASN1GeneralizedTime;)V
    .locals 6

    .line 0
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/asn1/cmp/RevAnnContent;-><init>(Lorg/bouncycastle/asn1/cmp/PKIStatus;Lorg/bouncycastle/asn1/crmf/CertId;Lorg/bouncycastle/asn1/ASN1GeneralizedTime;Lorg/bouncycastle/asn1/ASN1GeneralizedTime;Lorg/bouncycastle/asn1/x509/Extensions;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cmp/PKIStatus;Lorg/bouncycastle/asn1/crmf/CertId;Lorg/bouncycastle/asn1/ASN1GeneralizedTime;Lorg/bouncycastle/asn1/ASN1GeneralizedTime;Lorg/bouncycastle/asn1/x509/Extensions;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/cmp/RevAnnContent;->status:Lorg/bouncycastle/asn1/cmp/PKIStatus;

    iput-object p2, p0, Lorg/bouncycastle/asn1/cmp/RevAnnContent;->certId:Lorg/bouncycastle/asn1/crmf/CertId;

    iput-object p3, p0, Lorg/bouncycastle/asn1/cmp/RevAnnContent;->willBeRevokedAt:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    iput-object p4, p0, Lorg/bouncycastle/asn1/cmp/RevAnnContent;->badSinceDate:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    iput-object p5, p0, Lorg/bouncycastle/asn1/cmp/RevAnnContent;->crlDetails:Lorg/bouncycastle/asn1/x509/Extensions;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/RevAnnContent;
    .locals 1

    .line 0
    instance-of v0, p0, Lorg/bouncycastle/asn1/cmp/RevAnnContent;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/cmp/RevAnnContent;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/cmp/RevAnnContent;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/cmp/RevAnnContent;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getBadSinceDate()Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/RevAnnContent;->badSinceDate:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    return-object v0
.end method

.method public getCertId()Lorg/bouncycastle/asn1/crmf/CertId;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/RevAnnContent;->certId:Lorg/bouncycastle/asn1/crmf/CertId;

    return-object v0
.end method

.method public getCrlDetails()Lorg/bouncycastle/asn1/x509/Extensions;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/RevAnnContent;->crlDetails:Lorg/bouncycastle/asn1/x509/Extensions;

    return-object v0
.end method

.method public getStatus()Lorg/bouncycastle/asn1/cmp/PKIStatus;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/RevAnnContent;->status:Lorg/bouncycastle/asn1/cmp/PKIStatus;

    return-object v0
.end method

.method public getWillBeRevokedAt()Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/RevAnnContent;->willBeRevokedAt:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 0
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/RevAnnContent;->status:Lorg/bouncycastle/asn1/cmp/PKIStatus;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/RevAnnContent;->certId:Lorg/bouncycastle/asn1/crmf/CertId;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/RevAnnContent;->willBeRevokedAt:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/RevAnnContent;->badSinceDate:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/RevAnnContent;->crlDetails:Lorg/bouncycastle/asn1/x509/Extensions;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
