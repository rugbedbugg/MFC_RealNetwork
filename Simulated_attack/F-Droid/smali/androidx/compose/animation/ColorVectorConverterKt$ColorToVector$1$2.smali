.class final Landroidx/compose/animation/ColorVectorConverterKt$ColorToVector$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ColorVectorConverter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/animation/ColorVectorConverterKt$ColorToVector$1;->invoke(Landroidx/compose/ui/graphics/colorspace/ColorSpace;)Landroidx/compose/animation/core/TwoWayConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $colorSpace:Landroidx/compose/ui/graphics/colorspace/ColorSpace;


# direct methods
.method constructor <init>(Landroidx/compose/ui/graphics/colorspace/ColorSpace;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/animation/ColorVectorConverterKt$ColorToVector$1$2;->$colorSpace:Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 32
    check-cast p1, Landroidx/compose/animation/core/AnimationVector4D;

    invoke-virtual {p0, p1}, Landroidx/compose/animation/ColorVectorConverterKt$ColorToVector$1$2;->invoke-vNxB06k(Landroidx/compose/animation/core/AnimationVector4D;)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object p1

    return-object p1
.end method

.method public final invoke-vNxB06k(Landroidx/compose/animation/core/AnimationVector4D;)J
    .locals 7

    const-string v0, "vector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationVector4D;->getV2()F

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v0

    .line 40
    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationVector4D;->getV3()F

    move-result v3

    const/high16 v4, -0x41000000    # -0.5f

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-static {v3, v4, v5}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v3

    .line 41
    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationVector4D;->getV4()F

    move-result v6

    invoke-static {v6, v4, v5}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v4

    .line 42
    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationVector4D;->getV1()F

    move-result p1

    invoke-static {p1, v1, v2}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p1

    .line 43
    sget-object v1, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getOklab()Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    move-result-object v1

    .line 38
    invoke-static {v0, v3, v4, p1, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(FFFFLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J

    move-result-wide v0

    iget-object p1, p0, Landroidx/compose/animation/ColorVectorConverterKt$ColorToVector$1$2;->$colorSpace:Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    .line 44
    invoke-static {v0, v1, p1}, Landroidx/compose/ui/graphics/Color;->convert-vNxB06k(JLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J

    move-result-wide v0

    return-wide v0
.end method
