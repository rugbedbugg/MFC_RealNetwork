.class public abstract Landroidx/compose/ui/graphics/Float16;
.super Ljava/lang/Object;
.source "Float16.kt"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/graphics/Float16$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/graphics/Float16$Companion;

.field private static final Epsilon:S

.field private static final FP32_DENORMAL_FLOAT:F

.field private static final LowestValue:S

.field private static final MaxValue:S

.field private static final MinNormal:S

.field private static final MinValue:S

.field private static final NaN:S

.field private static final NegativeInfinity:S

.field private static final NegativeOne:S

.field private static final NegativeZero:S

.field private static final One:S

.field private static final PositiveInfinity:S

.field private static final PositiveZero:S


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/graphics/Float16$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/Float16$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/graphics/Float16;->Companion:Landroidx/compose/ui/graphics/Float16$Companion;

    const/16 v0, 0x1400

    .line 581
    invoke-static {v0}, Landroidx/compose/ui/graphics/Float16;->constructor-impl(S)S

    move-result v0

    sput-short v0, Landroidx/compose/ui/graphics/Float16;->Epsilon:S

    const/16 v0, -0x401

    .line 595
    invoke-static {v0}, Landroidx/compose/ui/graphics/Float16;->constructor-impl(S)S

    move-result v0

    sput-short v0, Landroidx/compose/ui/graphics/Float16;->LowestValue:S

    const/16 v0, 0x7bff

    .line 599
    invoke-static {v0}, Landroidx/compose/ui/graphics/Float16;->constructor-impl(S)S

    move-result v0

    sput-short v0, Landroidx/compose/ui/graphics/Float16;->MaxValue:S

    const/16 v0, 0x400

    .line 603
    invoke-static {v0}, Landroidx/compose/ui/graphics/Float16;->constructor-impl(S)S

    move-result v0

    sput-short v0, Landroidx/compose/ui/graphics/Float16;->MinNormal:S

    const/4 v0, 0x1

    .line 607
    invoke-static {v0}, Landroidx/compose/ui/graphics/Float16;->constructor-impl(S)S

    move-result v0

    sput-short v0, Landroidx/compose/ui/graphics/Float16;->MinValue:S

    const/16 v0, 0x7e00

    .line 611
    invoke-static {v0}, Landroidx/compose/ui/graphics/Float16;->constructor-impl(S)S

    move-result v0

    sput-short v0, Landroidx/compose/ui/graphics/Float16;->NaN:S

    const/16 v0, -0x400

    .line 615
    invoke-static {v0}, Landroidx/compose/ui/graphics/Float16;->constructor-impl(S)S

    move-result v0

    sput-short v0, Landroidx/compose/ui/graphics/Float16;->NegativeInfinity:S

    const/16 v0, -0x8000

    .line 619
    invoke-static {v0}, Landroidx/compose/ui/graphics/Float16;->constructor-impl(S)S

    move-result v0

    sput-short v0, Landroidx/compose/ui/graphics/Float16;->NegativeZero:S

    const/16 v0, 0x7c00

    .line 623
    invoke-static {v0}, Landroidx/compose/ui/graphics/Float16;->constructor-impl(S)S

    move-result v0

    sput-short v0, Landroidx/compose/ui/graphics/Float16;->PositiveInfinity:S

    const/4 v0, 0x0

    .line 627
    invoke-static {v0}, Landroidx/compose/ui/graphics/Float16;->constructor-impl(S)S

    move-result v0

    sput-short v0, Landroidx/compose/ui/graphics/Float16;->PositiveZero:S

    const/high16 v0, 0x3f800000    # 1.0f

    .line 629
    invoke-static {v0}, Landroidx/compose/ui/graphics/Float16;->constructor-impl(F)S

    move-result v0

    sput-short v0, Landroidx/compose/ui/graphics/Float16;->One:S

    const/high16 v0, -0x40800000    # -1.0f

    .line 630
    invoke-static {v0}, Landroidx/compose/ui/graphics/Float16;->constructor-impl(F)S

    move-result v0

    sput-short v0, Landroidx/compose/ui/graphics/Float16;->NegativeOne:S

    .line 649
    sget-object v0, Lkotlin/jvm/internal/FloatCompanionObject;->INSTANCE:Lkotlin/jvm/internal/FloatCompanionObject;

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/Float16;->FP32_DENORMAL_FLOAT:F

    return-void
.end method

.method public static constructor-impl(F)S
    .locals 1

    sget-object v0, Landroidx/compose/ui/graphics/Float16;->Companion:Landroidx/compose/ui/graphics/Float16$Companion;

    .line 96
    invoke-static {v0, p0}, Landroidx/compose/ui/graphics/Float16$Companion;->access$floatToHalf(Landroidx/compose/ui/graphics/Float16$Companion;F)S

    move-result p0

    .line 95
    invoke-static {p0}, Landroidx/compose/ui/graphics/Float16;->constructor-impl(S)S

    move-result p0

    return p0
.end method

.method public static constructor-impl(S)S
    .locals 0

    .line 0
    return p0
.end method

.method public static final toFloat-impl(S)F
    .locals 4

    const v0, 0xffff

    and-int/2addr v0, p0

    const v1, 0x8000

    and-int/2addr v1, p0

    ushr-int/lit8 v0, v0, 0xa

    const/16 v2, 0x1f

    and-int/2addr v0, v2

    and-int/lit16 p0, p0, 0x3ff

    if-nez v0, :cond_2

    if-eqz p0, :cond_1

    .line 172
    sget-object v0, Lkotlin/jvm/internal/FloatCompanionObject;->INSTANCE:Lkotlin/jvm/internal/FloatCompanionObject;

    const/high16 v0, 0x3f000000    # 0.5f

    add-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    sget v0, Landroidx/compose/ui/graphics/Float16;->FP32_DENORMAL_FLOAT:F

    sub-float/2addr p0, v0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    neg-float p0, p0

    :goto_0
    return p0

    :cond_1
    const/4 p0, 0x0

    move v0, p0

    goto :goto_2

    :cond_2
    shl-int/lit8 p0, p0, 0xd

    if-ne v0, v2, :cond_4

    const/16 v0, 0xff

    if-eqz p0, :cond_3

    const/high16 v2, 0x400000

    or-int/2addr p0, v2

    :cond_3
    :goto_1
    move v3, v0

    move v0, p0

    move p0, v3

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v0, 0x70

    goto :goto_1

    :goto_2
    shl-int/lit8 v1, v1, 0x10

    shl-int/lit8 p0, p0, 0x17

    or-int/2addr p0, v1

    or-int/2addr p0, v0

    .line 189
    sget-object v0, Lkotlin/jvm/internal/FloatCompanionObject;->INSTANCE:Lkotlin/jvm/internal/FloatCompanionObject;

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method
