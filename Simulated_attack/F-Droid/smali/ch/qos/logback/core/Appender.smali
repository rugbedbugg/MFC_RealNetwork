.class public interface abstract Lch/qos/logback/core/Appender;
.super Ljava/lang/Object;

# interfaces
.implements Lch/qos/logback/core/spi/LifeCycle;
.implements Lch/qos/logback/core/spi/ContextAware;
.implements Lch/qos/logback/core/spi/FilterAttachable;


# virtual methods
.method public abstract synthetic addError(Ljava/lang/String;)V
.end method

.method public abstract synthetic addError(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract synthetic addFilter(Lch/qos/logback/core/filter/Filter;)V
.end method

.method public abstract synthetic addInfo(Ljava/lang/String;)V
.end method

.method public abstract synthetic addInfo(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract synthetic addStatus(Lch/qos/logback/core/status/Status;)V
.end method

.method public abstract synthetic addWarn(Ljava/lang/String;)V
.end method

.method public abstract synthetic addWarn(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract synthetic clearAllFilters()V
.end method

.method public abstract doAppend(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/LogbackException;
        }
    .end annotation
.end method

.method public abstract synthetic getContext()Lch/qos/logback/core/Context;
.end method

.method public abstract synthetic getCopyOfAttachedFiltersList()Ljava/util/List;
.end method

.method public abstract synthetic getFilterChainDecision(Ljava/lang/Object;)Lch/qos/logback/core/spi/FilterReply;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract synthetic isStarted()Z
.end method

.method public abstract synthetic setContext(Lch/qos/logback/core/Context;)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract synthetic start()V
.end method

.method public abstract synthetic stop()V
.end method
