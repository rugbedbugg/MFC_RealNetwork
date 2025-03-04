.class public Lorg/slf4j/helpers/SubstituteLoggerFactory;
.super Ljava/lang/Object;
.source "SubstituteLoggerFactory.java"

# interfaces
.implements Lorg/slf4j/ILoggerFactory;


# instance fields
.field final eventQueue:Ljava/util/concurrent/LinkedBlockingQueue;

.field final loggers:Ljava/util/Map;

.field volatile postInitialization:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/slf4j/helpers/SubstituteLoggerFactory;->postInitialization:Z

    .line 47
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/slf4j/helpers/SubstituteLoggerFactory;->loggers:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lorg/slf4j/helpers/SubstituteLoggerFactory;->eventQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lorg/slf4j/helpers/SubstituteLoggerFactory;->loggers:Ljava/util/Map;

    .line 77
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lorg/slf4j/helpers/SubstituteLoggerFactory;->eventQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 78
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    return-void
.end method

.method public getEventQueue()Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/slf4j/helpers/SubstituteLoggerFactory;->eventQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method public declared-synchronized getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/slf4j/helpers/SubstituteLoggerFactory;->loggers:Ljava/util/Map;

    .line 52
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/slf4j/helpers/SubstituteLogger;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lorg/slf4j/helpers/SubstituteLogger;

    iget-object v1, p0, Lorg/slf4j/helpers/SubstituteLoggerFactory;->eventQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    iget-boolean v2, p0, Lorg/slf4j/helpers/SubstituteLoggerFactory;->postInitialization:Z

    invoke-direct {v0, p1, v1, v2}, Lorg/slf4j/helpers/SubstituteLogger;-><init>(Ljava/lang/String;Ljava/util/Queue;Z)V

    iget-object v1, p0, Lorg/slf4j/helpers/SubstituteLoggerFactory;->loggers:Ljava/util/Map;

    .line 55
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 57
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public getLoggers()Ljava/util/List;
    .locals 2

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/slf4j/helpers/SubstituteLoggerFactory;->loggers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public postInitialization()V
    .locals 1

    .line 0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/slf4j/helpers/SubstituteLoggerFactory;->postInitialization:Z

    return-void
.end method
