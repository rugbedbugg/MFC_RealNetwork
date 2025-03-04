.class public final Landroidx/compose/material/AnchoredDraggableDefaults;
.super Ljava/lang/Object;
.source "AnchoredDraggable.kt"


# static fields
.field private static final AnimationSpec:Landroidx/compose/animation/core/SpringSpec;

.field public static final INSTANCE:Landroidx/compose/material/AnchoredDraggableDefaults;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Landroidx/compose/material/AnchoredDraggableDefaults;

    invoke-direct {v0}, Landroidx/compose/material/AnchoredDraggableDefaults;-><init>()V

    sput-object v0, Landroidx/compose/material/AnchoredDraggableDefaults;->INSTANCE:Landroidx/compose/material/AnchoredDraggableDefaults;

    .line 645
    new-instance v0, Landroidx/compose/animation/core/SpringSpec;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroidx/compose/animation/core/SpringSpec;-><init>(FFLjava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/material/AnchoredDraggableDefaults;->AnimationSpec:Landroidx/compose/animation/core/SpringSpec;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAnimationSpec()Landroidx/compose/animation/core/SpringSpec;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/material/AnchoredDraggableDefaults;->AnimationSpec:Landroidx/compose/animation/core/SpringSpec;

    return-object v0
.end method
