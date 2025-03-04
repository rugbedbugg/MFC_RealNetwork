.class public final Lorg/fdroid/download/glide/HttpFetcher;
.super Ljava/lang/Object;
.source "HttpFetcher.kt"

# interfaces
.implements Lcom/bumptech/glide/load/data/DataFetcher;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/data/DataFetcher;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u0008\u0010\u000c\u001a\u00020\u000bH\u0016J\u000e\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J \u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u00132\u000e\u0010\u0014\u001a\n\u0012\u0006\u0008\u0000\u0012\u00020\u00020\u0015H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lorg/fdroid/download/glide/HttpFetcher;",
        "Lcom/bumptech/glide/load/data/DataFetcher;",
        "Ljava/io/InputStream;",
        "httpManager",
        "Lorg/fdroid/download/HttpManager;",
        "downloadRequest",
        "Lorg/fdroid/download/DownloadRequest;",
        "(Lorg/fdroid/download/HttpManager;Lorg/fdroid/download/DownloadRequest;)V",
        "job",
        "Lkotlinx/coroutines/Job;",
        "cancel",
        "",
        "cleanup",
        "getDataClass",
        "Ljava/lang/Class;",
        "getDataSource",
        "Lcom/bumptech/glide/load/DataSource;",
        "loadData",
        "priority",
        "Lcom/bumptech/glide/Priority;",
        "callback",
        "Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;",
        "download_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final downloadRequest:Lorg/fdroid/download/DownloadRequest;

.field private final httpManager:Lorg/fdroid/download/HttpManager;

.field private job:Lkotlinx/coroutines/Job;


# direct methods
.method public constructor <init>(Lorg/fdroid/download/HttpManager;Lorg/fdroid/download/DownloadRequest;)V
    .locals 1

    const-string v0, "httpManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadRequest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/download/glide/HttpFetcher;->httpManager:Lorg/fdroid/download/HttpManager;

    iput-object p2, p0, Lorg/fdroid/download/glide/HttpFetcher;->downloadRequest:Lorg/fdroid/download/DownloadRequest;

    return-void
.end method

.method public static final synthetic access$getDownloadRequest$p(Lorg/fdroid/download/glide/HttpFetcher;)Lorg/fdroid/download/DownloadRequest;
    .locals 0

    .line 16
    iget-object p0, p0, Lorg/fdroid/download/glide/HttpFetcher;->downloadRequest:Lorg/fdroid/download/DownloadRequest;

    return-object p0
.end method

.method public static final synthetic access$getHttpManager$p(Lorg/fdroid/download/glide/HttpFetcher;)Lorg/fdroid/download/HttpManager;
    .locals 0

    .line 16
    iget-object p0, p0, Lorg/fdroid/download/glide/HttpFetcher;->httpManager:Lorg/fdroid/download/HttpManager;

    return-object p0
.end method


# virtual methods
.method public cancel()V
    .locals 3

    iget-object v0, p0, Lorg/fdroid/download/glide/HttpFetcher;->job:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 41
    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public cleanup()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/fdroid/download/glide/HttpFetcher;->job:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public getDataClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 0
    const-class v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public getDataSource()Lcom/bumptech/glide/load/DataSource;
    .locals 1

    .line 49
    sget-object v0, Lcom/bumptech/glide/load/DataSource;->REMOTE:Lcom/bumptech/glide/load/DataSource;

    return-object v0
.end method

.method public loadData(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "priority"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "callback"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lorg/fdroid/download/glide/HttpFetcher$loadData$1;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p2, p1}, Lorg/fdroid/download/glide/HttpFetcher$loadData$1;-><init>(Lorg/fdroid/download/glide/HttpFetcher;Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/download/glide/HttpFetcher;->job:Lkotlinx/coroutines/Job;

    return-void
.end method
