.class final Landroidx/compose/material/DrawerKt$ModalDrawer$1$2$6$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Drawer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/DrawerKt$ModalDrawer$1$2$6;->invoke(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $drawerState:Landroidx/compose/material/DrawerState;

.field final synthetic $scope:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method constructor <init>(Landroidx/compose/material/DrawerState;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/material/DrawerKt$ModalDrawer$1$2$6$1;->$drawerState:Landroidx/compose/material/DrawerState;

    iput-object p2, p0, Landroidx/compose/material/DrawerKt$ModalDrawer$1$2$6$1;->$scope:Lkotlinx/coroutines/CoroutineScope;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Boolean;
    .locals 7

    iget-object v0, p0, Landroidx/compose/material/DrawerKt$ModalDrawer$1$2$6$1;->$drawerState:Landroidx/compose/material/DrawerState;

    .line 591
    invoke-virtual {v0}, Landroidx/compose/material/DrawerState;->getAnchoredDraggableState$material_release()Landroidx/compose/material/AnchoredDraggableState;

    move-result-object v0

    .line 592
    invoke-virtual {v0}, Landroidx/compose/material/AnchoredDraggableState;->getConfirmValueChange$material_release()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    sget-object v1, Landroidx/compose/material/DrawerValue;->Closed:Landroidx/compose/material/DrawerValue;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/compose/material/DrawerKt$ModalDrawer$1$2$6$1;->$scope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 594
    new-instance v4, Landroidx/compose/material/DrawerKt$ModalDrawer$1$2$6$1$1;

    iget-object v0, p0, Landroidx/compose/material/DrawerKt$ModalDrawer$1$2$6$1;->$drawerState:Landroidx/compose/material/DrawerState;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Landroidx/compose/material/DrawerKt$ModalDrawer$1$2$6$1$1;-><init>(Landroidx/compose/material/DrawerState;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 589
    invoke-virtual {p0}, Landroidx/compose/material/DrawerKt$ModalDrawer$1$2$6$1;->invoke()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
