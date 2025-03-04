.class final Landroidx/compose/material/SwitchKt$Switch$5$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Switch.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/SwitchKt;->Switch(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/SwitchColors;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $anchoredDraggableState:Landroidx/compose/material/AnchoredDraggableState;


# direct methods
.method constructor <init>(Landroidx/compose/material/AnchoredDraggableState;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/material/SwitchKt$Switch$5$1$1;->$anchoredDraggableState:Landroidx/compose/material/AnchoredDraggableState;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Landroidx/compose/material/SwitchKt$Switch$5$1$1;->$anchoredDraggableState:Landroidx/compose/material/AnchoredDraggableState;

    .line 178
    invoke-virtual {v0}, Landroidx/compose/material/AnchoredDraggableState;->requireOffset()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 178
    invoke-virtual {p0}, Landroidx/compose/material/SwitchKt$Switch$5$1$1;->invoke()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
