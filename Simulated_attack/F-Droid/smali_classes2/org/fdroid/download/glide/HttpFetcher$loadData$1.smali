.class final Lorg/fdroid/download/glide/HttpFetcher$loadData$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "HttpFetcher.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/download/glide/HttpFetcher;->loadData(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $callback:Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;

.field label:I

.field final synthetic this$0:Lorg/fdroid/download/glide/HttpFetcher;


# direct methods
.method constructor <init>(Lorg/fdroid/download/glide/HttpFetcher;Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/fdroid/download/glide/HttpFetcher$loadData$1;->this$0:Lorg/fdroid/download/glide/HttpFetcher;

    iput-object p2, p0, Lorg/fdroid/download/glide/HttpFetcher$loadData$1;->$callback:Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 0
    new-instance p1, Lorg/fdroid/download/glide/HttpFetcher$loadData$1;

    iget-object v0, p0, Lorg/fdroid/download/glide/HttpFetcher$loadData$1;->this$0:Lorg/fdroid/download/glide/HttpFetcher;

    iget-object v1, p0, Lorg/fdroid/download/glide/HttpFetcher$loadData$1;->$callback:Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;

    invoke-direct {p1, v0, v1, p2}, Lorg/fdroid/download/glide/HttpFetcher$loadData$1;-><init>(Lorg/fdroid/download/glide/HttpFetcher;Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/fdroid/download/glide/HttpFetcher$loadData$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lorg/fdroid/download/glide/HttpFetcher$loadData$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lorg/fdroid/download/glide/HttpFetcher$loadData$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lorg/fdroid/download/glide/HttpFetcher$loadData$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lorg/fdroid/download/glide/HttpFetcher$loadData$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    .line 25
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_1
    iget-object p1, p0, Lorg/fdroid/download/glide/HttpFetcher$loadData$1;->this$0:Lorg/fdroid/download/glide/HttpFetcher;

    .line 28
    invoke-static {p1}, Lorg/fdroid/download/glide/HttpFetcher;->access$getHttpManager$p(Lorg/fdroid/download/glide/HttpFetcher;)Lorg/fdroid/download/HttpManager;

    move-result-object v3

    iget-object p1, p0, Lorg/fdroid/download/glide/HttpFetcher$loadData$1;->this$0:Lorg/fdroid/download/glide/HttpFetcher;

    invoke-static {p1}, Lorg/fdroid/download/glide/HttpFetcher;->access$getDownloadRequest$p(Lorg/fdroid/download/glide/HttpFetcher;)Lorg/fdroid/download/DownloadRequest;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    iput v2, p0, Lorg/fdroid/download/glide/HttpFetcher$loadData$1;->label:I

    move-object v6, p0

    invoke-static/range {v3 .. v8}, Lorg/fdroid/download/HttpManager;->getChannel$download_release$default(Lorg/fdroid/download/HttpManager;Lorg/fdroid/download/DownloadRequest;Ljava/lang/Long;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Lio/ktor/utils/io/ByteReadChannel;

    const/4 v0, 0x0

    invoke-static {p1, v0, v2, v0}, Lio/ktor/utils/io/jvm/javaio/BlockingKt;->toInputStream$default(Lio/ktor/utils/io/ByteReadChannel;Lkotlinx/coroutines/Job;ILjava/lang/Object;)Ljava/io/InputStream;

    move-result-object p1

    iget-object v0, p0, Lorg/fdroid/download/glide/HttpFetcher$loadData$1;->$callback:Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;

    .line 29
    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onDataReady(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    iget-object v0, p0, Lorg/fdroid/download/glide/HttpFetcher$loadData$1;->$callback:Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;

    .line 31
    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onLoadFailed(Ljava/lang/Exception;)V

    .line 33
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
