.class public abstract Landroidx/core/view/ViewGroupKt;
.super Ljava/lang/Object;
.source "ViewGroup.kt"


# direct methods
.method public static final getChildren(Landroid/view/ViewGroup;)Lkotlin/sequences/Sequence;
    .locals 1

    .line 103
    new-instance v0, Landroidx/core/view/ViewGroupKt$children$1;

    invoke-direct {v0, p0}, Landroidx/core/view/ViewGroupKt$children$1;-><init>(Landroid/view/ViewGroup;)V

    return-object v0
.end method

.method public static final getDescendants(Landroid/view/ViewGroup;)Lkotlin/sequences/Sequence;
    .locals 2

    .line 117
    new-instance v0, Landroidx/core/view/ViewGroupKt$descendants$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/core/view/ViewGroupKt$descendants$1;-><init>(Landroid/view/ViewGroup;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->sequence(Lkotlin/jvm/functions/Function2;)Lkotlin/sequences/Sequence;

    move-result-object p0

    return-object p0
.end method

.method public static final iterator(Landroid/view/ViewGroup;)Ljava/util/Iterator;
    .locals 1

    .line 89
    new-instance v0, Landroidx/core/view/ViewGroupKt$iterator$1;

    invoke-direct {v0, p0}, Landroidx/core/view/ViewGroupKt$iterator$1;-><init>(Landroid/view/ViewGroup;)V

    return-object v0
.end method
