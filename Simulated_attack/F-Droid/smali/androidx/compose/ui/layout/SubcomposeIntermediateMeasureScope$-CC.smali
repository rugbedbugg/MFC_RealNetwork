.class public abstract synthetic Landroidx/compose/ui/layout/SubcomposeIntermediateMeasureScope$-CC;
.super Ljava/lang/Object;
.source "SubcomposeLayout.kt"


# direct methods
.method public static $default$subcompose(Landroidx/compose/ui/layout/SubcomposeIntermediateMeasureScope;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;
    .locals 1

    const-string v0, "content"

    .line 0
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    invoke-interface {p0, p1}, Landroidx/compose/ui/layout/SubcomposeIntermediateMeasureScope;->measurablesForSlot(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
