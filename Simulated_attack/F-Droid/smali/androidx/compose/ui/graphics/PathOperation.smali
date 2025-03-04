.class public abstract Landroidx/compose/ui/graphics/PathOperation;
.super Ljava/lang/Object;
.source "PathOperation.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/graphics/PathOperation$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/graphics/PathOperation$Companion;

.field private static final Difference:I

.field private static final Intersect:I

.field private static final ReverseDifference:I

.field private static final Union:I

.field private static final Xor:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/graphics/PathOperation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/PathOperation$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/graphics/PathOperation;->Companion:Landroidx/compose/ui/graphics/PathOperation$Companion;

    const/4 v0, 0x0

    .line 45
    invoke-static {v0}, Landroidx/compose/ui/graphics/PathOperation;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/PathOperation;->Difference:I

    const/4 v0, 0x1

    .line 57
    invoke-static {v0}, Landroidx/compose/ui/graphics/PathOperation;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/PathOperation;->Intersect:I

    const/4 v0, 0x2

    .line 66
    invoke-static {v0}, Landroidx/compose/ui/graphics/PathOperation;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/PathOperation;->Union:I

    const/4 v0, 0x3

    .line 78
    invoke-static {v0}, Landroidx/compose/ui/graphics/PathOperation;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/PathOperation;->Xor:I

    const/4 v0, 0x4

    .line 92
    invoke-static {v0}, Landroidx/compose/ui/graphics/PathOperation;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/PathOperation;->ReverseDifference:I

    return-void
.end method

.method public static final synthetic access$getDifference$cp()I
    .locals 1

    .line 0
    sget v0, Landroidx/compose/ui/graphics/PathOperation;->Difference:I

    return v0
.end method

.method public static final synthetic access$getIntersect$cp()I
    .locals 1

    .line 0
    sget v0, Landroidx/compose/ui/graphics/PathOperation;->Intersect:I

    return v0
.end method

.method public static final synthetic access$getReverseDifference$cp()I
    .locals 1

    .line 0
    sget v0, Landroidx/compose/ui/graphics/PathOperation;->ReverseDifference:I

    return v0
.end method

.method public static final synthetic access$getUnion$cp()I
    .locals 1

    .line 0
    sget v0, Landroidx/compose/ui/graphics/PathOperation;->Union:I

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
