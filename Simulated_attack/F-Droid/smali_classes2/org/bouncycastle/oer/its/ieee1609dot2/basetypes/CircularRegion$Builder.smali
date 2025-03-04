.class public Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CircularRegion$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CircularRegion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private center:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/TwoDLocation;

.field private radius:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT16;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createCircularRegion()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CircularRegion;
    .locals 3

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CircularRegion;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CircularRegion$Builder;->center:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/TwoDLocation;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CircularRegion$Builder;->radius:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT16;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CircularRegion;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/TwoDLocation;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT16;)V

    return-object v0
.end method

.method public setCenter(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/TwoDLocation;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CircularRegion$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CircularRegion$Builder;->center:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/TwoDLocation;

    return-object p0
.end method

.method public setRadius(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT16;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CircularRegion$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CircularRegion$Builder;->radius:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT16;

    return-object p0
.end method
