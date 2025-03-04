.class abstract Lcom/google/common/collect/CollectSpliterators;
.super Ljava/lang/Object;
.source "CollectSpliterators.java"


# direct methods
.method static map(Ljava/util/Spliterator;Ljava/util/function/Function;)Ljava/util/Spliterator;
    .locals 1

    .line 116
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    new-instance v0, Lcom/google/common/collect/CollectSpliterators$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/CollectSpliterators$1;-><init>(Ljava/util/Spliterator;Ljava/util/function/Function;)V

    return-object v0
.end method
