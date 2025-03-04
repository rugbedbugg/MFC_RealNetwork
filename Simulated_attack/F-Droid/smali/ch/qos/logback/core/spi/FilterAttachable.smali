.class public interface abstract Lch/qos/logback/core/spi/FilterAttachable;
.super Ljava/lang/Object;


# virtual methods
.method public abstract addFilter(Lch/qos/logback/core/filter/Filter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/filter/Filter;",
            ")V"
        }
    .end annotation
.end method

.method public abstract clearAllFilters()V
.end method

.method public abstract getCopyOfAttachedFiltersList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lch/qos/logback/core/filter/Filter;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFilterChainDecision(Ljava/lang/Object;)Lch/qos/logback/core/spi/FilterReply;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lch/qos/logback/core/spi/FilterReply;"
        }
    .end annotation
.end method
