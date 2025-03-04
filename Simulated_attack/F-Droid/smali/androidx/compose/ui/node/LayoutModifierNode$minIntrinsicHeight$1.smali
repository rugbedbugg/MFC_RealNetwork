.class final Landroidx/compose/ui/node/LayoutModifierNode$minIntrinsicHeight$1;
.super Ljava/lang/Object;
.source "LayoutModifierNode.kt"

# interfaces
.implements Landroidx/compose/ui/node/NodeMeasuringIntrinsics$MeasureBlock;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/node/LayoutModifierNode$-CC;->$default$minIntrinsicHeight(Landroidx/compose/ui/node/LayoutModifierNode;Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/ui/node/LayoutModifierNode;


# direct methods
.method constructor <init>(Landroidx/compose/ui/node/LayoutModifierNode;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/ui/node/LayoutModifierNode$minIntrinsicHeight$1;->this$0:Landroidx/compose/ui/node/LayoutModifierNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 1

    const-string v0, "$this$minHeight"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intrinsicMeasurable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutModifierNode$minIntrinsicHeight$1;->this$0:Landroidx/compose/ui/node/LayoutModifierNode;

    .line 92
    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/compose/ui/node/LayoutModifierNode;->measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p1

    return-object p1
.end method
