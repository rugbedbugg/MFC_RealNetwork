.class public abstract Landroidx/compose/animation/core/StartOffsetType;
.super Ljava/lang/Object;
.source "AnimationSpec.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/animation/core/StartOffsetType$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/animation/core/StartOffsetType$Companion;

.field private static final Delay:I

.field private static final FastForward:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/animation/core/StartOffsetType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/animation/core/StartOffsetType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/animation/core/StartOffsetType;->Companion:Landroidx/compose/animation/core/StartOffsetType$Companion;

    const/4 v0, -0x1

    .line 181
    invoke-static {v0}, Landroidx/compose/animation/core/StartOffsetType;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/animation/core/StartOffsetType;->Delay:I

    const/4 v0, 0x1

    .line 186
    invoke-static {v0}, Landroidx/compose/animation/core/StartOffsetType;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/animation/core/StartOffsetType;->FastForward:I

    return-void
.end method

.method public static final synthetic access$getDelay$cp()I
    .locals 1

    .line 0
    sget v0, Landroidx/compose/animation/core/StartOffsetType;->Delay:I

    return v0
.end method

.method private static constructor-impl(I)I
    .locals 0

    .line 0
    return p0
.end method
