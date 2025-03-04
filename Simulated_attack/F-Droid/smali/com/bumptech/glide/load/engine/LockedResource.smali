.class final Lcom/bumptech/glide/load/engine/LockedResource;
.super Ljava/lang/Object;
.source "LockedResource.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/Resource;
.implements Lcom/bumptech/glide/util/pool/FactoryPools$Poolable;


# static fields
.field private static final POOL:Landroidx/core/util/Pools$Pool;


# instance fields
.field private isLocked:Z

.field private isRecycled:Z

.field private final stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier;

.field private toWrap:Lcom/bumptech/glide/load/engine/Resource;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Lcom/bumptech/glide/load/engine/LockedResource$1;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/LockedResource$1;-><init>()V

    const/16 v1, 0x14

    .line 19
    invoke-static {v1, v0}, Lcom/bumptech/glide/util/pool/FactoryPools;->threadSafe(ILcom/bumptech/glide/util/pool/FactoryPools$Factory;)Landroidx/core/util/Pools$Pool;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/engine/LockedResource;->POOL:Landroidx/core/util/Pools$Pool;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {}, Lcom/bumptech/glide/util/pool/StateVerifier;->newInstance()Lcom/bumptech/glide/util/pool/StateVerifier;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/LockedResource;->stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier;

    return-void
.end method

.method private init(Lcom/bumptech/glide/load/engine/Resource;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/LockedResource;->isRecycled:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/LockedResource;->isLocked:Z

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/LockedResource;->toWrap:Lcom/bumptech/glide/load/engine/Resource;

    return-void
.end method

.method static obtain(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/LockedResource;
    .locals 1

    sget-object v0, Lcom/bumptech/glide/load/engine/LockedResource;->POOL:Landroidx/core/util/Pools$Pool;

    .line 35
    invoke-interface {v0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/LockedResource;

    invoke-static {v0}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/LockedResource;

    .line 36
    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/engine/LockedResource;->init(Lcom/bumptech/glide/load/engine/Resource;)V

    return-object v0
.end method

.method private release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/LockedResource;->toWrap:Lcom/bumptech/glide/load/engine/Resource;

    sget-object v0, Lcom/bumptech/glide/load/engine/LockedResource;->POOL:Landroidx/core/util/Pools$Pool;

    .line 52
    invoke-interface {v0, p0}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/LockedResource;->toWrap:Lcom/bumptech/glide/load/engine/Resource;

    .line 76
    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getResourceClass()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/LockedResource;->toWrap:Lcom/bumptech/glide/load/engine/Resource;

    .line 70
    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/Resource;->getResourceClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/LockedResource;->toWrap:Lcom/bumptech/glide/load/engine/Resource;

    .line 81
    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/Resource;->getSize()I

    move-result v0

    return v0
.end method

.method public getVerifier()Lcom/bumptech/glide/util/pool/StateVerifier;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/LockedResource;->stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier;

    return-object v0
.end method

.method public declared-synchronized recycle()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/LockedResource;->stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier;

    .line 86
    invoke-virtual {v0}, Lcom/bumptech/glide/util/pool/StateVerifier;->throwIfRecycled()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/LockedResource;->isRecycled:Z

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/LockedResource;->isLocked:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/LockedResource;->toWrap:Lcom/bumptech/glide/load/engine/Resource;

    .line 90
    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/Resource;->recycle()V

    .line 91
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/LockedResource;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 93
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method declared-synchronized unlock()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/LockedResource;->stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier;

    .line 56
    invoke-virtual {v0}, Lcom/bumptech/glide/util/pool/StateVerifier;->throwIfRecycled()V

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/LockedResource;->isLocked:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/LockedResource;->isLocked:Z

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/LockedResource;->isRecycled:Z

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/LockedResource;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 65
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 59
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already unlocked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    :goto_1
    monitor-exit p0

    throw v0
.end method
