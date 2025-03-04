.class Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;
.super Ljava/lang/Object;
.source "MultiModelLoaderFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Entry"
.end annotation


# instance fields
.field final dataClass:Ljava/lang/Class;

.field final factory:Lcom/bumptech/glide/load/model/ModelLoaderFactory;

.field private final modelClass:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V
    .locals 0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;->modelClass:Ljava/lang/Class;

    iput-object p2, p0, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;->dataClass:Ljava/lang/Class;

    iput-object p3, p0, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;->factory:Lcom/bumptech/glide/load/model/ModelLoaderFactory;

    return-void
.end method


# virtual methods
.method public handles(Ljava/lang/Class;)Z
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;->modelClass:Ljava/lang/Class;

    .line 206
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public handles(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 0

    .line 202
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;->handles(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;->dataClass:Ljava/lang/Class;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
