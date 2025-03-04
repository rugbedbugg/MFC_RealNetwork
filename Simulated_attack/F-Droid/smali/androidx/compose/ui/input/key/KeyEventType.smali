.class public abstract Landroidx/compose/ui/input/key/KeyEventType;
.super Ljava/lang/Object;
.source "KeyEvent.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/input/key/KeyEventType$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/input/key/KeyEventType$Companion;

.field private static final KeyDown:I

.field private static final KeyUp:I

.field private static final Unknown:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/input/key/KeyEventType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/input/key/KeyEventType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/input/key/KeyEventType;->Companion:Landroidx/compose/ui/input/key/KeyEventType$Companion;

    const/4 v0, 0x0

    .line 119
    invoke-static {v0}, Landroidx/compose/ui/input/key/KeyEventType;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/input/key/KeyEventType;->Unknown:I

    const/4 v0, 0x1

    .line 126
    invoke-static {v0}, Landroidx/compose/ui/input/key/KeyEventType;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/input/key/KeyEventType;->KeyUp:I

    const/4 v0, 0x2

    .line 133
    invoke-static {v0}, Landroidx/compose/ui/input/key/KeyEventType;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/input/key/KeyEventType;->KeyDown:I

    return-void
.end method

.method public static final synthetic access$getKeyDown$cp()I
    .locals 1

    .line 0
    sget v0, Landroidx/compose/ui/input/key/KeyEventType;->KeyDown:I

    return v0
.end method

.method public static final synthetic access$getKeyUp$cp()I
    .locals 1

    .line 0
    sget v0, Landroidx/compose/ui/input/key/KeyEventType;->KeyUp:I

    return v0
.end method

.method public static final synthetic access$getUnknown$cp()I
    .locals 1

    .line 0
    sget v0, Landroidx/compose/ui/input/key/KeyEventType;->Unknown:I

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
