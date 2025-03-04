.class Lcom/bumptech/glide/load/model/ByteArrayLoader$Fetcher;
.super Ljava/lang/Object;
.source "ByteArrayLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/data/DataFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/model/ByteArrayLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Fetcher"
.end annotation


# instance fields
.field private final converter:Lcom/bumptech/glide/load/model/ByteArrayLoader$Converter;

.field private final model:[B


# direct methods
.method constructor <init>([BLcom/bumptech/glide/load/model/ByteArrayLoader$Converter;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/model/ByteArrayLoader$Fetcher;->model:[B

    iput-object p2, p0, Lcom/bumptech/glide/load/model/ByteArrayLoader$Fetcher;->converter:Lcom/bumptech/glide/load/model/ByteArrayLoader$Converter;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .line 0
    return-void
.end method

.method public cleanup()V
    .locals 0

    .line 0
    return-void
.end method

.method public getDataClass()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/model/ByteArrayLoader$Fetcher;->converter:Lcom/bumptech/glide/load/model/ByteArrayLoader$Converter;

    .line 84
    invoke-interface {v0}, Lcom/bumptech/glide/load/model/ByteArrayLoader$Converter;->getDataClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getDataSource()Lcom/bumptech/glide/load/DataSource;
    .locals 1

    .line 90
    sget-object v0, Lcom/bumptech/glide/load/DataSource;->LOCAL:Lcom/bumptech/glide/load/DataSource;

    return-object v0
.end method

.method public loadData(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V
    .locals 1

    iget-object p1, p0, Lcom/bumptech/glide/load/model/ByteArrayLoader$Fetcher;->converter:Lcom/bumptech/glide/load/model/ByteArrayLoader$Converter;

    iget-object v0, p0, Lcom/bumptech/glide/load/model/ByteArrayLoader$Fetcher;->model:[B

    .line 67
    invoke-interface {p1, v0}, Lcom/bumptech/glide/load/model/ByteArrayLoader$Converter;->convert([B)Ljava/lang/Object;

    move-result-object p1

    .line 68
    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onDataReady(Ljava/lang/Object;)V

    return-void
.end method
