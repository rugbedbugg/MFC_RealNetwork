.class public Lcom/bumptech/glide/load/model/AssetUriLoader;
.super Ljava/lang/Object;
.source "AssetUriLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/model/AssetUriLoader$AssetFetcherFactory;,
        Lcom/bumptech/glide/load/model/AssetUriLoader$FileDescriptorFactory;,
        Lcom/bumptech/glide/load/model/AssetUriLoader$StreamFactory;
    }
.end annotation


# static fields
.field private static final ASSET_PREFIX_LENGTH:I = 0x16


# instance fields
.field private final assetManager:Landroid/content/res/AssetManager;

.field private final factory:Lcom/bumptech/glide/load/model/AssetUriLoader$AssetFetcherFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Lcom/bumptech/glide/load/model/AssetUriLoader$AssetFetcherFactory;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/model/AssetUriLoader;->assetManager:Landroid/content/res/AssetManager;

    iput-object p2, p0, Lcom/bumptech/glide/load/model/AssetUriLoader;->factory:Lcom/bumptech/glide/load/model/AssetUriLoader$AssetFetcherFactory;

    return-void
.end method


# virtual methods
.method public buildLoadData(Landroid/net/Uri;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;
    .locals 1

    .line 39
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    sget p3, Lcom/bumptech/glide/load/model/AssetUriLoader;->ASSET_PREFIX_LENGTH:I

    invoke-virtual {p2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 40
    new-instance p3, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    new-instance p4, Lcom/bumptech/glide/signature/ObjectKey;

    invoke-direct {p4, p1}, Lcom/bumptech/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/bumptech/glide/load/model/AssetUriLoader;->factory:Lcom/bumptech/glide/load/model/AssetUriLoader$AssetFetcherFactory;

    iget-object v0, p0, Lcom/bumptech/glide/load/model/AssetUriLoader;->assetManager:Landroid/content/res/AssetManager;

    invoke-interface {p1, v0, p2}, Lcom/bumptech/glide/load/model/AssetUriLoader$AssetFetcherFactory;->buildFetcher(Landroid/content/res/AssetManager;Ljava/lang/String;)Lcom/bumptech/glide/load/data/DataFetcher;

    move-result-object p1

    invoke-direct {p3, p4, p1}, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;-><init>(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/data/DataFetcher;)V

    return-object p3
.end method

.method public bridge synthetic buildLoadData(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;
    .locals 0

    .line 20
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/model/AssetUriLoader;->buildLoadData(Landroid/net/Uri;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    move-result-object p1

    return-object p1
.end method

.method public handles(Landroid/net/Uri;)Z
    .locals 2

    .line 45
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "android_asset"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public bridge synthetic handles(Ljava/lang/Object;)Z
    .locals 0

    .line 20
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/model/AssetUriLoader;->handles(Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method
