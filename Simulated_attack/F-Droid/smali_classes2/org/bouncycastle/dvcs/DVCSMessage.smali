.class public abstract Lorg/bouncycastle/dvcs/DVCSMessage;
.super Ljava/lang/Object;


# instance fields
.field private final contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;


# direct methods
.method protected constructor <init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/dvcs/DVCSMessage;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    return-void
.end method


# virtual methods
.method public abstract getContent()Lorg/bouncycastle/asn1/ASN1Encodable;
.end method

.method public getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/dvcs/DVCSMessage;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    return-object v0
.end method
