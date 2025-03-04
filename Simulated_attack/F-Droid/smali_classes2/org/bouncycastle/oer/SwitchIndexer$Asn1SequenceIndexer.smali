.class public Lorg/bouncycastle/oer/SwitchIndexer$Asn1SequenceIndexer;
.super Lorg/bouncycastle/oer/SwitchIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/SwitchIndexer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Asn1SequenceIndexer"
.end annotation


# instance fields
.field private final sequence:Lorg/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/oer/SwitchIndexer;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/oer/SwitchIndexer$Asn1SequenceIndexer;->sequence:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-void
.end method


# virtual methods
.method public get(I)Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/SwitchIndexer$Asn1SequenceIndexer;->sequence:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    return-object p1
.end method
