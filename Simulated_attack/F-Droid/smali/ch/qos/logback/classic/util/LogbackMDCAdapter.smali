.class public final Lch/qos/logback/classic/util/LogbackMDCAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/slf4j/spi/MDCAdapter;


# static fields
.field private static final MAP_COPY_OPERATION:I = 0x2

.field private static final WRITE_OPERATION:I = 0x1


# instance fields
.field final copyOnThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final lastOperation:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lch/qos/logback/classic/util/LogbackMDCAdapter;->copyOnThreadLocal:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lch/qos/logback/classic/util/LogbackMDCAdapter;->lastOperation:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private duplicateAndInsertNewMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    if-eqz p1, :cond_0

    monitor-enter p1

    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :goto_0
    iget-object p1, p0, Lch/qos/logback/classic/util/LogbackMDCAdapter;->copyOnThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {p1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object v0
.end method

.method private getAndSetLastOperation(I)Ljava/lang/Integer;
    .locals 2

    .line 0
    iget-object v0, p0, Lch/qos/logback/classic/util/LogbackMDCAdapter;->lastOperation:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lch/qos/logback/classic/util/LogbackMDCAdapter;->lastOperation:Ljava/lang/ThreadLocal;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object v0
.end method

.method private wasLastOpReadOrNull(Ljava/lang/Integer;)Z
    .locals 1

    .line 0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 0
    iget-object v0, p0, Lch/qos/logback/classic/util/LogbackMDCAdapter;->lastOperation:Ljava/lang/ThreadLocal;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lch/qos/logback/classic/util/LogbackMDCAdapter;->copyOnThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    return-void
.end method

.method public clearDequeByKey(Ljava/lang/String;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lch/qos/logback/classic/util/LogbackMDCAdapter;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lch/qos/logback/classic/util/LogbackMDCAdapter;->copyOnThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCopyOfContextMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lch/qos/logback/classic/util/LogbackMDCAdapter;->copyOnThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v1
.end method

.method public getCopyOfDequeByKey(Ljava/lang/String;)Ljava/util/Deque;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Deque<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1}, Lch/qos/logback/classic/util/LogbackMDCAdapter;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-virtual {p0, p1}, Lch/qos/logback/classic/util/LogbackMDCAdapter;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public getKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0}, Lch/qos/logback/classic/util/LogbackMDCAdapter;->getPropertyMap()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPropertyMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lch/qos/logback/classic/util/LogbackMDCAdapter;->lastOperation:Ljava/lang/ThreadLocal;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lch/qos/logback/classic/util/LogbackMDCAdapter;->copyOnThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public popByKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lch/qos/logback/classic/util/LogbackMDCAdapter;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public pushByKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lch/qos/logback/classic/util/LogbackMDCAdapter;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lch/qos/logback/classic/util/LogbackMDCAdapter;->copyOnThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lch/qos/logback/classic/util/LogbackMDCAdapter;->getAndSetLastOperation(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1}, Lch/qos/logback/classic/util/LogbackMDCAdapter;->wasLastOpReadOrNull(Ljava/lang/Integer;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    :goto_1
    invoke-direct {p0, v0}, Lch/qos/logback/classic/util/LogbackMDCAdapter;->duplicateAndInsertNewMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :goto_2
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "key cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public remove(Ljava/lang/String;)V
    .locals 2

    .line 0
    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lch/qos/logback/classic/util/LogbackMDCAdapter;->copyOnThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lch/qos/logback/classic/util/LogbackMDCAdapter;->getAndSetLastOperation(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1}, Lch/qos/logback/classic/util/LogbackMDCAdapter;->wasLastOpReadOrNull(Ljava/lang/Integer;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lch/qos/logback/classic/util/LogbackMDCAdapter;->duplicateAndInsertNewMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :cond_2
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContextMap(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lch/qos/logback/classic/util/LogbackMDCAdapter;->lastOperation:Ljava/lang/ThreadLocal;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object p1, p0, Lch/qos/logback/classic/util/LogbackMDCAdapter;->copyOnThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {p1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method
