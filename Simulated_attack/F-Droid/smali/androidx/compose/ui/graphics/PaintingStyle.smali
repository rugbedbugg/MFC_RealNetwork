.class public abstract Landroidx/compose/ui/graphics/PaintingStyle;
.super Ljava/lang/Object;
.source "PaintingStyle.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/graphics/PaintingStyle$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/graphics/PaintingStyle$Companion;

.field private static final Fill:I

.field private static final Stroke:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/graphics/PaintingStyle$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/PaintingStyle$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/graphics/PaintingStyle;->Companion:Landroidx/compose/ui/graphics/PaintingStyle$Companion;

    const/4 v0, 0x0

    .line 37
    invoke-static {v0}, Landroidx/compose/ui/graphics/PaintingStyle;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/PaintingStyle;->Fill:I

    const/4 v0, 0x1

    .line 45
    invoke-static {v0}, Landroidx/compose/ui/graphics/PaintingStyle;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/PaintingStyle;->Stroke:I

    return-void
.end method

.method public static final synthetic access$getFill$cp()I
    .locals 1

    .line 0
    sget v0, Landroidx/compose/ui/graphics/PaintingStyle;->Fill:I

    return v0
.end method

.method public static final synthetic access$getStroke$cp()I
    .locals 1

    .line 0
    sget v0, Landroidx/compose/ui/graphics/PaintingStyle;->Stroke:I

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
