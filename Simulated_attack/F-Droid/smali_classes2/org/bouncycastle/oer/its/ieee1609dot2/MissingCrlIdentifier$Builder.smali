.class public Lorg/bouncycastle/oer/its/ieee1609dot2/MissingCrlIdentifier$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/ieee1609dot2/MissingCrlIdentifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private cracaId:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;

.field private crlSeries:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CrlSeries;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createMissingCrlIdentifier()Lorg/bouncycastle/oer/its/ieee1609dot2/MissingCrlIdentifier;
    .locals 3

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/MissingCrlIdentifier;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/MissingCrlIdentifier$Builder;->cracaId:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/MissingCrlIdentifier$Builder;->crlSeries:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CrlSeries;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/its/ieee1609dot2/MissingCrlIdentifier;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CrlSeries;)V

    return-object v0
.end method

.method public setCracaId(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;)Lorg/bouncycastle/oer/its/ieee1609dot2/MissingCrlIdentifier$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/MissingCrlIdentifier$Builder;->cracaId:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;

    return-object p0
.end method

.method public setCrlSeries(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CrlSeries;)Lorg/bouncycastle/oer/its/ieee1609dot2/MissingCrlIdentifier$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/MissingCrlIdentifier$Builder;->crlSeries:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CrlSeries;

    return-object p0
.end method
