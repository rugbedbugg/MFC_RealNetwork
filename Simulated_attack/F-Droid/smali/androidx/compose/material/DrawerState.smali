.class public final Landroidx/compose/material/DrawerState;
.super Ljava/lang/Object;
.source "Drawer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material/DrawerState$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/material/DrawerState$Companion;


# instance fields
.field private final anchoredDraggableState:Landroidx/compose/material/AnchoredDraggableState;

.field private density:Landroidx/compose/ui/unit/Density;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Landroidx/compose/material/DrawerState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/material/DrawerState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/material/DrawerState;->Companion:Landroidx/compose/material/DrawerState$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/compose/material/DrawerValue;Lkotlin/jvm/functions/Function1;)V
    .locals 7

    const-string v0, "initialValue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "confirmStateChange"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    invoke-static {}, Landroidx/compose/material/DrawerKt;->access$getAnimationSpec$p()Landroidx/compose/animation/core/TweenSpec;

    move-result-object v5

    .line 124
    new-instance v0, Landroidx/compose/material/AnchoredDraggableState;

    .line 128
    new-instance v3, Landroidx/compose/material/DrawerState$anchoredDraggableState$1;

    invoke-direct {v3, p0}, Landroidx/compose/material/DrawerState$anchoredDraggableState$1;-><init>(Landroidx/compose/material/DrawerState;)V

    .line 129
    new-instance v4, Landroidx/compose/material/DrawerState$anchoredDraggableState$2;

    invoke-direct {v4, p0}, Landroidx/compose/material/DrawerState$anchoredDraggableState$2;-><init>(Landroidx/compose/material/DrawerState;)V

    move-object v1, v0

    move-object v2, p1

    move-object v6, p2

    .line 124
    invoke-direct/range {v1 .. v6}, Landroidx/compose/material/AnchoredDraggableState;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;)V

    iput-object v0, p0, Landroidx/compose/material/DrawerState;->anchoredDraggableState:Landroidx/compose/material/AnchoredDraggableState;

    return-void
.end method

.method public static final synthetic access$requireDensity(Landroidx/compose/material/DrawerState;)Landroidx/compose/ui/unit/Density;
    .locals 0

    .line 116
    invoke-direct {p0}, Landroidx/compose/material/DrawerState;->requireDensity()Landroidx/compose/ui/unit/Density;

    move-result-object p0

    return-object p0
.end method

.method private final requireDensity()Landroidx/compose/ui/unit/Density;
    .locals 2

    iget-object v0, p0, Landroidx/compose/material/DrawerState;->density:Landroidx/compose/ui/unit/Density;

    if-eqz v0, :cond_0

    return-object v0

    .line 238
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The density on DrawerState ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") was not set. Did you use DrawerState with the Drawer composable?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 237
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final close(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Landroidx/compose/material/DrawerState;->anchoredDraggableState:Landroidx/compose/material/AnchoredDraggableState;

    .line 180
    sget-object v1, Landroidx/compose/material/DrawerValue;->Closed:Landroidx/compose/material/DrawerValue;

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Landroidx/compose/material/AnchoredDraggableKt;->animateTo$default(Landroidx/compose/material/AnchoredDraggableState;Ljava/lang/Object;FLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final getAnchoredDraggableState$material_release()Landroidx/compose/material/AnchoredDraggableState;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/material/DrawerState;->anchoredDraggableState:Landroidx/compose/material/AnchoredDraggableState;

    return-object v0
.end method

.method public final getCurrentValue()Landroidx/compose/material/DrawerValue;
    .locals 1

    iget-object v0, p0, Landroidx/compose/material/DrawerState;->anchoredDraggableState:Landroidx/compose/material/AnchoredDraggableState;

    .line 153
    invoke-virtual {v0}, Landroidx/compose/material/AnchoredDraggableState;->getCurrentValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/material/DrawerValue;

    return-object v0
.end method

.method public final isOpen()Z
    .locals 2

    .line 136
    invoke-virtual {p0}, Landroidx/compose/material/DrawerState;->getCurrentValue()Landroidx/compose/material/DrawerValue;

    move-result-object v0

    sget-object v1, Landroidx/compose/material/DrawerValue;->Open:Landroidx/compose/material/DrawerValue;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final requireOffset$material_release()F
    .locals 1

    iget-object v0, p0, Landroidx/compose/material/DrawerState;->anchoredDraggableState:Landroidx/compose/material/AnchoredDraggableState;

    .line 234
    invoke-virtual {v0}, Landroidx/compose/material/AnchoredDraggableState;->requireOffset()F

    move-result v0

    return v0
.end method

.method public final setDensity$material_release(Landroidx/compose/ui/unit/Density;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/material/DrawerState;->density:Landroidx/compose/ui/unit/Density;

    return-void
.end method
