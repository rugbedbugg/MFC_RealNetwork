.class public abstract Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;
.super Ljava/lang/Object;
.source "NestedScrollModifier.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/input/nestedscroll/NestedScrollSource$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/input/nestedscroll/NestedScrollSource$Companion;

.field private static final Drag:I

.field private static final Fling:I

.field private static final Relocate:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->Companion:Landroidx/compose/ui/input/nestedscroll/NestedScrollSource$Companion;

    const/4 v0, 0x1

    .line 248
    invoke-static {v0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->Drag:I

    const/4 v0, 0x2

    .line 253
    invoke-static {v0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->Fling:I

    const/4 v0, 0x3

    .line 262
    invoke-static {v0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->Relocate:I

    return-void
.end method

.method public static final synthetic access$getDrag$cp()I
    .locals 1

    .line 0
    sget v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->Drag:I

    return v0
.end method

.method public static final synthetic access$getFling$cp()I
    .locals 1

    .line 0
    sget v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->Fling:I

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
