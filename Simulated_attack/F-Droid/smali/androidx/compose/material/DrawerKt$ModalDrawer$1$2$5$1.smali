.class final Landroidx/compose/material/DrawerKt$ModalDrawer$1$2$5$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Drawer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/DrawerKt$ModalDrawer$1;->invoke(Landroidx/compose/foundation/layout/BoxWithConstraintsScope;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $drawerState:Landroidx/compose/material/DrawerState;


# direct methods
.method constructor <init>(Landroidx/compose/material/DrawerState;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/material/DrawerKt$ModalDrawer$1$2$5$1;->$drawerState:Landroidx/compose/material/DrawerState;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 578
    check-cast p1, Landroidx/compose/ui/unit/Density;

    invoke-virtual {p0, p1}, Landroidx/compose/material/DrawerKt$ModalDrawer$1$2$5$1;->invoke-Bjo55l4(Landroidx/compose/ui/unit/Density;)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->box-impl(J)Landroidx/compose/ui/unit/IntOffset;

    move-result-object p1

    return-object p1
.end method

.method public final invoke-Bjo55l4(Landroidx/compose/ui/unit/Density;)J
    .locals 2

    const-string v0, "$this$offset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/compose/material/DrawerKt$ModalDrawer$1$2$5$1;->$drawerState:Landroidx/compose/material/DrawerState;

    .line 581
    invoke-virtual {p1}, Landroidx/compose/material/DrawerState;->requireOffset$material_release()F

    move-result p1

    .line 582
    invoke-static {p1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p1

    const/4 v0, 0x0

    .line 579
    invoke-static {p1, v0}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v0

    return-wide v0
.end method
