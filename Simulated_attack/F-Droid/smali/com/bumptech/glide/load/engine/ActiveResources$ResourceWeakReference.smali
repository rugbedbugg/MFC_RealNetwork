.class final Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;
.super Ljava/lang/ref/WeakReference;
.source "ActiveResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/ActiveResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ResourceWeakReference"
.end annotation


# instance fields
.field final isCacheable:Z

.field final key:Lcom/bumptech/glide/load/Key;

.field resource:Lcom/bumptech/glide/load/engine/Resource;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource;Ljava/lang/ref/ReferenceQueue;Z)V
    .locals 0

    .line 188
    invoke-direct {p0, p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 189
    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/Key;

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;->key:Lcom/bumptech/glide/load/Key;

    .line 191
    invoke-virtual {p2}, Lcom/bumptech/glide/load/engine/EngineResource;->isMemoryCacheable()Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p4, :cond_0

    .line 192
    invoke-virtual {p2}, Lcom/bumptech/glide/load/engine/EngineResource;->getResource()Lcom/bumptech/glide/load/engine/Resource;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/engine/Resource;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;->resource:Lcom/bumptech/glide/load/engine/Resource;

    .line 194
    invoke-virtual {p2}, Lcom/bumptech/glide/load/engine/EngineResource;->isMemoryCacheable()Z

    move-result p1

    iput-boolean p1, p0, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;->isCacheable:Z

    return-void
.end method


# virtual methods
.method reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;->resource:Lcom/bumptech/glide/load/engine/Resource;

    .line 199
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->clear()V

    return-void
.end method
