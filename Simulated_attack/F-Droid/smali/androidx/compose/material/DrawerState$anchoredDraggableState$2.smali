.class final Landroidx/compose/material/DrawerState$anchoredDraggableState$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Drawer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/DrawerState;-><init>(Landroidx/compose/material/DrawerValue;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/material/DrawerState;


# direct methods
.method constructor <init>(Landroidx/compose/material/DrawerState;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/material/DrawerState$anchoredDraggableState$2;->this$0:Landroidx/compose/material/DrawerState;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Float;
    .locals 2

    iget-object v0, p0, Landroidx/compose/material/DrawerState$anchoredDraggableState$2;->this$0:Landroidx/compose/material/DrawerState;

    .line 129
    invoke-static {v0}, Landroidx/compose/material/DrawerState;->access$requireDensity(Landroidx/compose/material/DrawerState;)Landroidx/compose/ui/unit/Density;

    move-result-object v0

    invoke-static {}, Landroidx/compose/material/DrawerKt;->access$getDrawerVelocityThreshold$p()F

    move-result v1

    invoke-interface {v0, v1}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 129
    invoke-virtual {p0}, Landroidx/compose/material/DrawerState$anchoredDraggableState$2;->invoke()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
