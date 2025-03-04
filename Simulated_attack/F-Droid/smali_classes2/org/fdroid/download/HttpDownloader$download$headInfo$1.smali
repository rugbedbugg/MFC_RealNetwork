.class final Lorg/fdroid/download/HttpDownloader$download$headInfo$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "HttpDownloader.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/download/HttpDownloader;->download()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lorg/fdroid/download/HttpDownloader;


# direct methods
.method constructor <init>(Lorg/fdroid/download/HttpDownloader;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/fdroid/download/HttpDownloader$download$headInfo$1;->this$0:Lorg/fdroid/download/HttpDownloader;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 0
    new-instance p1, Lorg/fdroid/download/HttpDownloader$download$headInfo$1;

    iget-object v0, p0, Lorg/fdroid/download/HttpDownloader$download$headInfo$1;->this$0:Lorg/fdroid/download/HttpDownloader;

    invoke-direct {p1, v0, p2}, Lorg/fdroid/download/HttpDownloader$download$headInfo$1;-><init>(Lorg/fdroid/download/HttpDownloader;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/fdroid/download/HttpDownloader$download$headInfo$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lorg/fdroid/download/HttpDownloader$download$headInfo$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lorg/fdroid/download/HttpDownloader$download$headInfo$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lorg/fdroid/download/HttpDownloader$download$headInfo$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lorg/fdroid/download/HttpDownloader$download$headInfo$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    .line 105
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/fdroid/download/HttpDownloader$download$headInfo$1;->this$0:Lorg/fdroid/download/HttpDownloader;

    .line 106
    invoke-static {p1}, Lorg/fdroid/download/HttpDownloader;->access$getHttpManager$p(Lorg/fdroid/download/HttpDownloader;)Lorg/fdroid/download/HttpManager;

    move-result-object p1

    iget-object v1, p0, Lorg/fdroid/download/HttpDownloader$download$headInfo$1;->this$0:Lorg/fdroid/download/HttpDownloader;

    invoke-static {v1}, Lorg/fdroid/download/HttpDownloader;->access$getRequest$p(Lorg/fdroid/download/HttpDownloader;)Lorg/fdroid/download/DownloadRequest;

    move-result-object v1

    iget-object v3, p0, Lorg/fdroid/download/HttpDownloader$download$headInfo$1;->this$0:Lorg/fdroid/download/HttpDownloader;

    invoke-virtual {v3}, Lorg/fdroid/download/Downloader;->getCacheTag()Ljava/lang/String;

    move-result-object v3

    iput v2, p0, Lorg/fdroid/download/HttpDownloader$download$headInfo$1;->label:I

    invoke-virtual {p1, v1, v3, p0}, Lorg/fdroid/download/HttpManager;->head(Lorg/fdroid/download/DownloadRequest;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Lorg/fdroid/download/HeadInfo;

    if-eqz p1, :cond_3

    return-object p1

    :cond_3
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1
.end method
