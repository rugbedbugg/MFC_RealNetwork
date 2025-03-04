.class public Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/RectangularRegion$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/RectangularRegion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private northWest:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/TwoDLocation;

.field private southEast:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/TwoDLocation;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createRectangularRegion()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/RectangularRegion;
    .locals 3

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/RectangularRegion;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/RectangularRegion$Builder;->northWest:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/TwoDLocation;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/RectangularRegion$Builder;->southEast:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/TwoDLocation;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/RectangularRegion;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/TwoDLocation;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/TwoDLocation;)V

    return-object v0
.end method

.method public setNorthWest(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/TwoDLocation;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/RectangularRegion$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/RectangularRegion$Builder;->northWest:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/TwoDLocation;

    return-object p0
.end method

.method public setSouthEast(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/TwoDLocation;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/RectangularRegion$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/RectangularRegion$Builder;->southEast:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/TwoDLocation;

    return-object p0
.end method
