.class public Lorg/bouncycastle/oer/SwitchIndexer$FixedValueIndexer;
.super Lorg/bouncycastle/oer/SwitchIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/SwitchIndexer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FixedValueIndexer"
.end annotation


# instance fields
.field private final returnValue:Lorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/oer/SwitchIndexer;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/oer/SwitchIndexer$FixedValueIndexer;->returnValue:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method


# virtual methods
.method public get(I)Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 0

    .line 0
    iget-object p1, p0, Lorg/bouncycastle/oer/SwitchIndexer$FixedValueIndexer;->returnValue:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object p1
.end method
