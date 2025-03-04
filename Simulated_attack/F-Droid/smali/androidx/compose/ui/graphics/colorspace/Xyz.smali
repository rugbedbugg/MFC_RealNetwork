.class public final Landroidx/compose/ui/graphics/colorspace/Xyz;
.super Landroidx/compose/ui/graphics/colorspace/ColorSpace;
.source "Xyz.kt"


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 7

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorModel;->Companion:Landroidx/compose/ui/graphics/colorspace/ColorModel$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorModel$Companion;->getXyz-xdoWZVw()J

    move-result-wide v3

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v5, p2

    .line 28
    invoke-direct/range {v1 .. v6}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;-><init>(Ljava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method private final clamp(F)F
    .locals 2

    const/high16 v0, -0x40000000    # -2.0f

    const/high16 v1, 0x40000000    # 2.0f

    .line 77
    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p1

    return p1
.end method


# virtual methods
.method public getMaxValue(I)F
    .locals 0

    .line 0
    const/high16 p1, 0x40000000    # 2.0f

    return p1
.end method

.method public getMinValue(I)F
    .locals 0

    .line 0
    const/high16 p1, -0x40000000    # -2.0f

    return p1
.end method

.method public toXy$ui_graphics_release(FFF)J
    .locals 4

    .line 52
    invoke-direct {p0, p1}, Landroidx/compose/ui/graphics/colorspace/Xyz;->clamp(F)F

    move-result p1

    invoke-direct {p0, p2}, Landroidx/compose/ui/graphics/colorspace/Xyz;->clamp(F)F

    move-result p2

    .line 25
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    int-to-long v0, p1

    .line 26
    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    int-to-long p1, p1

    const/16 p3, 0x20

    shl-long/2addr v0, p3

    const-wide v2, 0xffffffffL

    and-long/2addr p1, v2

    or-long/2addr p1, v0

    return-wide p1
.end method

.method public toZ$ui_graphics_release(FFF)F
    .locals 0

    .line 56
    invoke-direct {p0, p3}, Landroidx/compose/ui/graphics/colorspace/Xyz;->clamp(F)F

    move-result p1

    return p1
.end method

.method public xyzaToColor-JlNiLsg$ui_graphics_release(FFFFLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J
    .locals 1

    const-string v0, "colorSpace"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-direct {p0, p1}, Landroidx/compose/ui/graphics/colorspace/Xyz;->clamp(F)F

    move-result p1

    invoke-direct {p0, p2}, Landroidx/compose/ui/graphics/colorspace/Xyz;->clamp(F)F

    move-result p2

    invoke-direct {p0, p3}, Landroidx/compose/ui/graphics/colorspace/Xyz;->clamp(F)F

    move-result p3

    invoke-static {p1, p2, p3, p4, p5}, Landroidx/compose/ui/graphics/ColorKt;->Color(FFFFLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J

    move-result-wide p1

    return-wide p1
.end method
