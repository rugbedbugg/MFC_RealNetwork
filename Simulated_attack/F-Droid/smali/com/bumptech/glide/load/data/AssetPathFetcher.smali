.class public abstract Lcom/bumptech/glide/load/data/AssetPathFetcher;
.super Ljava/lang/Object;
.source "AssetPathFetcher.java"

# interfaces
.implements Lcom/bumptech/glide/load/data/DataFetcher;


# instance fields
.field private final assetManager:Landroid/content/res/AssetManager;

.field private final assetPath:Ljava/lang/String;

.field private data:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/data/AssetPathFetcher;->assetManager:Landroid/content/res/AssetManager;

    iput-object p2, p0, Lcom/bumptech/glide/load/data/AssetPathFetcher;->assetPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .line 0
    return-void
.end method

.method public cleanup()V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/data/AssetPathFetcher;->data:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    .line 48
    :cond_0
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/data/AssetPathFetcher;->close(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected abstract close(Ljava/lang/Object;)V
.end method

.method public getDataSource()Lcom/bumptech/glide/load/DataSource;
    .locals 1

    .line 62
    sget-object v0, Lcom/bumptech/glide/load/DataSource;->LOCAL:Lcom/bumptech/glide/load/DataSource;

    return-object v0
.end method

.method public loadData(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V
    .locals 2

    :try_start_0
    iget-object p1, p0, Lcom/bumptech/glide/load/data/AssetPathFetcher;->assetManager:Landroid/content/res/AssetManager;

    iget-object v0, p0, Lcom/bumptech/glide/load/data/AssetPathFetcher;->assetPath:Ljava/lang/String;

    .line 32
    invoke-virtual {p0, p1, v0}, Lcom/bumptech/glide/load/data/AssetPathFetcher;->loadResource(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/load/data/AssetPathFetcher;->data:Ljava/lang/Object;

    .line 33
    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onDataReady(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x3

    const-string v1, "AssetPathFetcher"

    .line 35
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Failed to load data from asset manager"

    .line 36
    invoke-static {v1, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 38
    :cond_0
    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onLoadFailed(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method protected abstract loadResource(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/Object;
.end method
