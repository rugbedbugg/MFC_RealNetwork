.class abstract Landroidx/compose/runtime/GroupKind;
.super Ljava/lang/Object;
.source "Composer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/GroupKind$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/runtime/GroupKind$Companion;

.field private static final Group:I

.field private static final Node:I

.field private static final ReusableNode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/runtime/GroupKind$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/runtime/GroupKind$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/runtime/GroupKind;->Companion:Landroidx/compose/runtime/GroupKind$Companion;

    const/4 v0, 0x0

    .line 4482
    invoke-static {v0}, Landroidx/compose/runtime/GroupKind;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/runtime/GroupKind;->Group:I

    const/4 v0, 0x1

    .line 4483
    invoke-static {v0}, Landroidx/compose/runtime/GroupKind;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/runtime/GroupKind;->Node:I

    const/4 v0, 0x2

    .line 4484
    invoke-static {v0}, Landroidx/compose/runtime/GroupKind;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/runtime/GroupKind;->ReusableNode:I

    return-void
.end method

.method public static final synthetic access$getGroup$cp()I
    .locals 1

    .line 0
    sget v0, Landroidx/compose/runtime/GroupKind;->Group:I

    return v0
.end method

.method public static final synthetic access$getNode$cp()I
    .locals 1

    .line 0
    sget v0, Landroidx/compose/runtime/GroupKind;->Node:I

    return v0
.end method

.method public static final synthetic access$getReusableNode$cp()I
    .locals 1

    .line 0
    sget v0, Landroidx/compose/runtime/GroupKind;->ReusableNode:I

    return v0
.end method

.method private static constructor-impl(I)I
    .locals 0

    .line 0
    return p0
.end method
