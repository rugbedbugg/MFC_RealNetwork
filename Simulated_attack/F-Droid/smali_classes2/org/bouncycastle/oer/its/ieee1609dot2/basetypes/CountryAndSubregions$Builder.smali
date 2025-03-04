.class public Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CountryAndSubregions$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CountryAndSubregions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private country:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CountryOnly;

.field private regionAndSubregions:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfRegionAndSubregions;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createCountryAndSubregions()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CountryAndSubregions;
    .locals 3

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CountryAndSubregions;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CountryAndSubregions$Builder;->country:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CountryOnly;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CountryAndSubregions$Builder;->regionAndSubregions:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfRegionAndSubregions;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CountryAndSubregions;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CountryOnly;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfRegionAndSubregions;)V

    return-object v0
.end method

.method public setCountry(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CountryOnly;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CountryAndSubregions$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CountryAndSubregions$Builder;->country:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CountryOnly;

    return-object p0
.end method

.method public setRegionAndSubregions(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfRegionAndSubregions;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CountryAndSubregions$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CountryAndSubregions$Builder;->regionAndSubregions:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfRegionAndSubregions;

    return-object p0
.end method
