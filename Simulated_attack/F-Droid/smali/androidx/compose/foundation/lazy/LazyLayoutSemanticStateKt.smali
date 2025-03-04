.class public abstract Landroidx/compose/foundation/lazy/LazyLayoutSemanticStateKt;
.super Ljava/lang/Object;
.source "LazyLayoutSemanticState.kt"


# direct methods
.method public static final LazyLayoutSemanticState(Landroidx/compose/foundation/lazy/LazyListState;Z)Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;
    .locals 1

    const-string v0, "state"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    new-instance v0, Landroidx/compose/foundation/lazy/LazyLayoutSemanticStateKt$LazyLayoutSemanticState$1;

    invoke-direct {v0, p0, p1}, Landroidx/compose/foundation/lazy/LazyLayoutSemanticStateKt$LazyLayoutSemanticState$1;-><init>(Landroidx/compose/foundation/lazy/LazyListState;Z)V

    return-object v0
.end method
