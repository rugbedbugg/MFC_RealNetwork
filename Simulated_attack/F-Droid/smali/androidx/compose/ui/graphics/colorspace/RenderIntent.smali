.class public abstract Landroidx/compose/ui/graphics/colorspace/RenderIntent;
.super Ljava/lang/Object;
.source "RenderIntent.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/graphics/colorspace/RenderIntent$Companion;
    }
.end annotation


# static fields
.field private static final Absolute:I

.field public static final Companion:Landroidx/compose/ui/graphics/colorspace/RenderIntent$Companion;

.field private static final Perceptual:I

.field private static final Relative:I

.field private static final Saturation:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/graphics/colorspace/RenderIntent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/colorspace/RenderIntent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/graphics/colorspace/RenderIntent;->Companion:Landroidx/compose/ui/graphics/colorspace/RenderIntent$Companion;

    const/4 v0, 0x0

    .line 42
    invoke-static {v0}, Landroidx/compose/ui/graphics/colorspace/RenderIntent;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/colorspace/RenderIntent;->Perceptual:I

    const/4 v0, 0x1

    .line 49
    invoke-static {v0}, Landroidx/compose/ui/graphics/colorspace/RenderIntent;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/colorspace/RenderIntent;->Relative:I

    const/4 v0, 0x2

    .line 59
    invoke-static {v0}, Landroidx/compose/ui/graphics/colorspace/RenderIntent;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/colorspace/RenderIntent;->Saturation:I

    const/4 v0, 0x3

    .line 67
    invoke-static {v0}, Landroidx/compose/ui/graphics/colorspace/RenderIntent;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/colorspace/RenderIntent;->Absolute:I

    return-void
.end method

.method public static final synthetic access$getAbsolute$cp()I
    .locals 1

    .line 0
    sget v0, Landroidx/compose/ui/graphics/colorspace/RenderIntent;->Absolute:I

    return v0
.end method

.method public static final synthetic access$getPerceptual$cp()I
    .locals 1

    .line 0
    sget v0, Landroidx/compose/ui/graphics/colorspace/RenderIntent;->Perceptual:I

    return v0
.end method

.method public static final synthetic access$getRelative$cp()I
    .locals 1

    .line 0
    sget v0, Landroidx/compose/ui/graphics/colorspace/RenderIntent;->Relative:I

    return v0
.end method

.method public static constructor-impl(I)I
    .locals 0

    .line 0
    return p0
.end method

.method public static final equals-impl0(II)Z
    .locals 0

    .line 0
    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
