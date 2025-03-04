.class final Landroidx/compose/material/SwitchKt$Switch$anchoredDraggableState$1$2;
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
.field final synthetic $switchVelocityThresholdPx:F


# direct methods
.method constructor <init>(F)V
    .locals 0

    .line 0
    iput p1, p0, Landroidx/compose/material/SwitchKt$Switch$anchoredDraggableState$1$2;->$switchVelocityThresholdPx:F

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Float;
    .locals 1

    iget v0, p0, Landroidx/compose/material/SwitchKt$Switch$anchoredDraggableState$1$2;->$switchVelocityThresholdPx:F

    .line 116
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 116
    invoke-virtual {p0}, Landroidx/compose/material/SwitchKt$Switch$anchoredDraggableState$1$2;->invoke()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
