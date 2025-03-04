.class public Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/RegionAndSubregions$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/RegionAndSubregions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private region:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;

.field private subRegions:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfUint16;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createRegionAndSubregions()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/RegionAndSubregions;
    .locals 3

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/RegionAndSubregions;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/RegionAndSubregions$Builder;->region:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/RegionAndSubregions$Builder;->subRegions:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfUint16;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/RegionAndSubregions;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfUint16;)V

    return-object v0
.end method

.method public setRegion(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/RegionAndSubregions$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/RegionAndSubregions$Builder;->region:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;

    return-object p0
.end method

.method public setSubregions(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfUint16;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/RegionAndSubregions$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/RegionAndSubregions$Builder;->subRegions:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfUint16;

    return-object p0
.end method
