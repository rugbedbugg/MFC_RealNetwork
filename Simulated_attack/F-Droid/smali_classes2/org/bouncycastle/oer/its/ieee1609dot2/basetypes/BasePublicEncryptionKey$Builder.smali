.class public Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/BasePublicEncryptionKey$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/BasePublicEncryptionKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private choice:I

.field private value:Lorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createBasePublicEncryptionKey()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/BasePublicEncryptionKey;
    .locals 3

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/BasePublicEncryptionKey;

    iget v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/BasePublicEncryptionKey$Builder;->choice:I

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/BasePublicEncryptionKey$Builder;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/BasePublicEncryptionKey;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public setChoice(I)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/BasePublicEncryptionKey$Builder;
    .locals 0

    .line 0
    iput p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/BasePublicEncryptionKey$Builder;->choice:I

    return-object p0
.end method

.method public setValue(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EccCurvePoint;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/BasePublicEncryptionKey$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/BasePublicEncryptionKey$Builder;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object p0
.end method
