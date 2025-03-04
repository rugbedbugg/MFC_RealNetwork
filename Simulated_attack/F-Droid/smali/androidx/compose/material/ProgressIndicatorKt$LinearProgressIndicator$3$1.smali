.class final Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$3$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ProgressIndicator.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/ProgressIndicatorKt;->LinearProgressIndicator-2cYBFYY(Landroidx/compose/ui/Modifier;JJILandroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $backgroundColor:J

.field final synthetic $color:J

.field final synthetic $firstLineHead$delegate:Landroidx/compose/runtime/State;

.field final synthetic $firstLineTail$delegate:Landroidx/compose/runtime/State;

.field final synthetic $secondLineHead$delegate:Landroidx/compose/runtime/State;

.field final synthetic $secondLineTail$delegate:Landroidx/compose/runtime/State;

.field final synthetic $strokeCap:I


# direct methods
.method constructor <init>(JIJLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V
    .locals 0

    .line 0
    iput-wide p1, p0, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$3$1;->$backgroundColor:J

    iput p3, p0, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$3$1;->$strokeCap:I

    iput-wide p4, p0, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$3$1;->$color:J

    iput-object p6, p0, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$3$1;->$firstLineHead$delegate:Landroidx/compose/runtime/State;

    iput-object p7, p0, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$3$1;->$firstLineTail$delegate:Landroidx/compose/runtime/State;

    iput-object p8, p0, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$3$1;->$secondLineHead$delegate:Landroidx/compose/runtime/State;

    iput-object p9, p0, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$3$1;->$secondLineTail$delegate:Landroidx/compose/runtime/State;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 165
    check-cast p1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    invoke-virtual {p0, p1}, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$3$1;->invoke(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
    .locals 10

    const-string v0, "$this$Canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v0

    iget-wide v1, p0, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$3$1;->$backgroundColor:J

    iget v3, p0, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$3$1;->$strokeCap:I

    .line 167
    invoke-static {p1, v1, v2, v0, v3}, Landroidx/compose/material/ProgressIndicatorKt;->access$drawLinearIndicatorBackground-AZGd3zU(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFI)V

    iget-object v1, p0, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$3$1;->$firstLineHead$delegate:Landroidx/compose/runtime/State;

    .line 168
    invoke-static {v1}, Landroidx/compose/material/ProgressIndicatorKt;->access$LinearProgressIndicator_2cYBFYY$lambda$1(Landroidx/compose/runtime/State;)F

    move-result v1

    iget-object v2, p0, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$3$1;->$firstLineTail$delegate:Landroidx/compose/runtime/State;

    invoke-static {v2}, Landroidx/compose/material/ProgressIndicatorKt;->access$LinearProgressIndicator_2cYBFYY$lambda$2(Landroidx/compose/runtime/State;)F

    move-result v2

    sub-float/2addr v1, v2

    const/4 v9, 0x0

    cmpl-float v1, v1, v9

    if-lez v1, :cond_0

    iget-object v1, p0, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$3$1;->$firstLineHead$delegate:Landroidx/compose/runtime/State;

    .line 170
    invoke-static {v1}, Landroidx/compose/material/ProgressIndicatorKt;->access$LinearProgressIndicator_2cYBFYY$lambda$1(Landroidx/compose/runtime/State;)F

    move-result v3

    iget-object v1, p0, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$3$1;->$firstLineTail$delegate:Landroidx/compose/runtime/State;

    .line 171
    invoke-static {v1}, Landroidx/compose/material/ProgressIndicatorKt;->access$LinearProgressIndicator_2cYBFYY$lambda$2(Landroidx/compose/runtime/State;)F

    move-result v4

    iget-wide v5, p0, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$3$1;->$color:J

    iget v8, p0, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$3$1;->$strokeCap:I

    move-object v2, p1

    move v7, v0

    .line 169
    invoke-static/range {v2 .. v8}, Landroidx/compose/material/ProgressIndicatorKt;->access$drawLinearIndicator-qYKTg0g(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFJFI)V

    :cond_0
    iget-object v1, p0, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$3$1;->$secondLineHead$delegate:Landroidx/compose/runtime/State;

    .line 177
    invoke-static {v1}, Landroidx/compose/material/ProgressIndicatorKt;->access$LinearProgressIndicator_2cYBFYY$lambda$3(Landroidx/compose/runtime/State;)F

    move-result v1

    iget-object v2, p0, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$3$1;->$secondLineTail$delegate:Landroidx/compose/runtime/State;

    invoke-static {v2}, Landroidx/compose/material/ProgressIndicatorKt;->access$LinearProgressIndicator_2cYBFYY$lambda$4(Landroidx/compose/runtime/State;)F

    move-result v2

    sub-float/2addr v1, v2

    cmpl-float v1, v1, v9

    if-lez v1, :cond_1

    iget-object v1, p0, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$3$1;->$secondLineHead$delegate:Landroidx/compose/runtime/State;

    .line 179
    invoke-static {v1}, Landroidx/compose/material/ProgressIndicatorKt;->access$LinearProgressIndicator_2cYBFYY$lambda$3(Landroidx/compose/runtime/State;)F

    move-result v3

    iget-object v1, p0, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$3$1;->$secondLineTail$delegate:Landroidx/compose/runtime/State;

    .line 180
    invoke-static {v1}, Landroidx/compose/material/ProgressIndicatorKt;->access$LinearProgressIndicator_2cYBFYY$lambda$4(Landroidx/compose/runtime/State;)F

    move-result v4

    iget-wide v5, p0, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$3$1;->$color:J

    iget v8, p0, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$3$1;->$strokeCap:I

    move-object v2, p1

    move v7, v0

    .line 178
    invoke-static/range {v2 .. v8}, Landroidx/compose/material/ProgressIndicatorKt;->access$drawLinearIndicator-qYKTg0g(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFJFI)V

    :cond_1
    return-void
.end method
