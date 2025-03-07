.class public Lorg/bouncycastle/asn1/cmc/CMCStatusInfo;
.super Lorg/bouncycastle/asn1/ASN1Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/asn1/cmc/CMCStatusInfo$OtherInfo;
    }
.end annotation


# instance fields
.field private final bodyList:Lorg/bouncycastle/asn1/ASN1Sequence;

.field private final cMCStatus:Lorg/bouncycastle/asn1/cmc/CMCStatus;

.field private final otherInfo:Lorg/bouncycastle/asn1/cmc/CMCStatusInfo$OtherInfo;

.field private final statusString:Lorg/bouncycastle/asn1/ASN1UTF8String;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 3

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v2, 0x4

    if-gt v0, v2, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cmc/CMCStatus;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/CMCStatus;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo;->cMCStatus:Lorg/bouncycastle/asn1/cmc/CMCStatus;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo;->bodyList:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v2, 0x3

    if-le v0, v2, :cond_0

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1UTF8String;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1UTF8String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo;->statusString:Lorg/bouncycastle/asn1/ASN1UTF8String;

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo$OtherInfo;->access$000(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/CMCStatusInfo$OtherInfo;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo;->otherInfo:Lorg/bouncycastle/asn1/cmc/CMCStatusInfo$OtherInfo;

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v2, 0x0

    if-le v0, v1, :cond_2

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v0, v0, Lorg/bouncycastle/asn1/ASN1UTF8String;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1UTF8String;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1UTF8String;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo;->statusString:Lorg/bouncycastle/asn1/ASN1UTF8String;

    :goto_1
    iput-object v2, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo;->otherInfo:Lorg/bouncycastle/asn1/cmc/CMCStatusInfo$OtherInfo;

    goto :goto_2

    :cond_1
    iput-object v2, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo;->statusString:Lorg/bouncycastle/asn1/ASN1UTF8String;

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    goto :goto_0

    :cond_2
    iput-object v2, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo;->statusString:Lorg/bouncycastle/asn1/ASN1UTF8String;

    goto :goto_1

    :goto_2
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "incorrect sequence size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor <init>(Lorg/bouncycastle/asn1/cmc/CMCStatus;Lorg/bouncycastle/asn1/ASN1Sequence;Lorg/bouncycastle/asn1/ASN1UTF8String;Lorg/bouncycastle/asn1/cmc/CMCStatusInfo$OtherInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo;->cMCStatus:Lorg/bouncycastle/asn1/cmc/CMCStatus;

    iput-object p2, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo;->bodyList:Lorg/bouncycastle/asn1/ASN1Sequence;

    iput-object p3, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo;->statusString:Lorg/bouncycastle/asn1/ASN1UTF8String;

    iput-object p4, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo;->otherInfo:Lorg/bouncycastle/asn1/cmc/CMCStatusInfo$OtherInfo;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/CMCStatusInfo;
    .locals 1

    .line 0
    instance-of v0, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getBodyList()[Lorg/bouncycastle/asn1/cmc/BodyPartID;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo;->bodyList:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-static {v0}, Lorg/bouncycastle/asn1/cmc/Utils;->toBodyPartIDArray(Lorg/bouncycastle/asn1/ASN1Sequence;)[Lorg/bouncycastle/asn1/cmc/BodyPartID;

    move-result-object v0

    return-object v0
.end method

.method public getCMCStatus()Lorg/bouncycastle/asn1/cmc/CMCStatus;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo;->cMCStatus:Lorg/bouncycastle/asn1/cmc/CMCStatus;

    return-object v0
.end method

.method public getOtherInfo()Lorg/bouncycastle/asn1/cmc/CMCStatusInfo$OtherInfo;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo;->otherInfo:Lorg/bouncycastle/asn1/cmc/CMCStatusInfo$OtherInfo;

    return-object v0
.end method

.method public getStatusString()Lorg/bouncycastle/asn1/DERUTF8String;
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo;->statusString:Lorg/bouncycastle/asn1/ASN1UTF8String;

    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/bouncycastle/asn1/DERUTF8String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/DERUTF8String;

    iget-object v1, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo;->statusString:Lorg/bouncycastle/asn1/ASN1UTF8String;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1UTF8String;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERUTF8String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    check-cast v0, Lorg/bouncycastle/asn1/DERUTF8String;

    :goto_1
    return-object v0
.end method

.method public getStatusStringUTF8()Lorg/bouncycastle/asn1/ASN1UTF8String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo;->statusString:Lorg/bouncycastle/asn1/ASN1UTF8String;

    return-object v0
.end method

.method public hasOtherInfo()Z
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo;->otherInfo:Lorg/bouncycastle/asn1/cmc/CMCStatusInfo$OtherInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 0
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo;->cMCStatus:Lorg/bouncycastle/asn1/cmc/CMCStatus;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo;->bodyList:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo;->statusString:Lorg/bouncycastle/asn1/ASN1UTF8String;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo;->otherInfo:Lorg/bouncycastle/asn1/cmc/CMCStatusInfo$OtherInfo;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
