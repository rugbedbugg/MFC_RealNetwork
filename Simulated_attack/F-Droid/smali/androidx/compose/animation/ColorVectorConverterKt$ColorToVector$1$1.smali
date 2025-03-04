.class final Landroidx/compose/animation/ColorVectorConverterKt$ColorToVector$1$1;
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


# static fields
.field public static final INSTANCE:Landroidx/compose/animation/ColorVectorConverterKt$ColorToVector$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/animation/ColorVectorConverterKt$ColorToVector$1$1;

    invoke-direct {v0}, Landroidx/compose/animation/ColorVectorConverterKt$ColorToVector$1$1;-><init>()V

    sput-object v0, Landroidx/compose/animation/ColorVectorConverterKt$ColorToVector$1$1;->INSTANCE:Landroidx/compose/animation/ColorVectorConverterKt$ColorToVector$1$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 32
    check-cast p1, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/animation/ColorVectorConverterKt$ColorToVector$1$1;->invoke-8_81llA(J)Landroidx/compose/animation/core/AnimationVector4D;

    move-result-object p1

    return-object p1
.end method

.method public final invoke-8_81llA(J)Landroidx/compose/animation/core/AnimationVector4D;
    .locals 3

    .line 34
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getOklab()Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroidx/compose/ui/graphics/Color;->convert-vNxB06k(JLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J

    move-result-wide p1

    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/Color;->component1-impl(J)F

    move-result v0

    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/Color;->component2-impl(J)F

    move-result v1

    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/Color;->component3-impl(J)F

    move-result v2

    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/Color;->component4-impl(J)F

    move-result p1

    .line 35
    new-instance p2, Landroidx/compose/animation/core/AnimationVector4D;

    invoke-direct {p2, p1, v0, v1, v2}, Landroidx/compose/animation/core/AnimationVector4D;-><init>(FFFF)V

    return-object p2
.end method
