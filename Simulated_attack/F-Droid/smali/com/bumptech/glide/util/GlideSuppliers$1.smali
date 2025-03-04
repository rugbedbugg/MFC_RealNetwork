.class Lcom/bumptech/glide/util/GlideSuppliers$1;
.super Ljava/lang/Object;
.source "GlideSuppliers.java"

# interfaces
.implements Lcom/bumptech/glide/util/GlideSuppliers$GlideSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/util/GlideSuppliers;->memorize(Lcom/bumptech/glide/util/GlideSuppliers$GlideSupplier;)Lcom/bumptech/glide/util/GlideSuppliers$GlideSupplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private volatile instance:Ljava/lang/Object;

.field final synthetic val$supplier:Lcom/bumptech/glide/util/GlideSuppliers$GlideSupplier;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/util/GlideSuppliers$GlideSupplier;)V
    .locals 0

    iput-object p1, p0, Lcom/bumptech/glide/util/GlideSuppliers$1;->val$supplier:Lcom/bumptech/glide/util/GlideSuppliers$GlideSupplier;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/util/GlideSuppliers$1;->instance:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 23
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/util/GlideSuppliers$1;->instance:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/util/GlideSuppliers$1;->val$supplier:Lcom/bumptech/glide/util/GlideSuppliers$GlideSupplier;

    .line 25
    invoke-interface {v0}, Lcom/bumptech/glide/util/GlideSuppliers$GlideSupplier;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/util/GlideSuppliers$1;->instance:Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 27
    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/bumptech/glide/util/GlideSuppliers$1;->instance:Ljava/lang/Object;

    return-object v0
.end method
