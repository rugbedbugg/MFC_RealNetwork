.class final Lorg/fdroid/download/HttpDownloaderV2$download$4;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "HttpDownloaderV2.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/download/HttpDownloaderV2;->download()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $resumable:Lkotlin/jvm/internal/Ref$BooleanRef;

.field label:I

.field final synthetic this$0:Lorg/fdroid/download/HttpDownloaderV2;


# direct methods
.method constructor <init>(Lorg/fdroid/download/HttpDownloaderV2;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/fdroid/download/HttpDownloaderV2$download$4;->this$0:Lorg/fdroid/download/HttpDownloaderV2;

    iput-object p2, p0, Lorg/fdroid/download/HttpDownloaderV2$download$4;->$resumable:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 0
    new-instance p1, Lorg/fdroid/download/HttpDownloaderV2$download$4;

    iget-object v0, p0, Lorg/fdroid/download/HttpDownloaderV2$download$4;->this$0:Lorg/fdroid/download/HttpDownloaderV2;

    iget-object v1, p0, Lorg/fdroid/download/HttpDownloaderV2$download$4;->$resumable:Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p1, v0, v1, p2}, Lorg/fdroid/download/HttpDownloaderV2$download$4;-><init>(Lorg/fdroid/download/HttpDownloaderV2;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/fdroid/download/HttpDownloaderV2$download$4;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lorg/fdroid/download/HttpDownloaderV2$download$4;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lorg/fdroid/download/HttpDownloaderV2$download$4;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lorg/fdroid/download/HttpDownloaderV2$download$4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lorg/fdroid/download/HttpDownloaderV2$download$4;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    .line 73
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/fdroid/download/NoResumeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_1
    iget-object p1, p0, Lorg/fdroid/download/HttpDownloaderV2$download$4;->this$0:Lorg/fdroid/download/HttpDownloaderV2;

    iget-object v1, p0, Lorg/fdroid/download/HttpDownloaderV2$download$4;->$resumable:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 75
    iget-boolean v1, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iput v3, p0, Lorg/fdroid/download/HttpDownloaderV2$download$4;->label:I

    invoke-virtual {p1, v1, p0}, Lorg/fdroid/download/Downloader;->downloadFromBytesReceiver(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Lorg/fdroid/download/NoResumeException; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p1, v0, :cond_4

    return-object v0

    :catch_0
    iget-object p1, p0, Lorg/fdroid/download/HttpDownloaderV2$download$4;->this$0:Lorg/fdroid/download/HttpDownloaderV2;

    .line 77
    iget-object p1, p1, Lorg/fdroid/download/Downloader;->outputFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {}, Lorg/fdroid/download/HttpDownloaderV2;->access$getCompanion$p()Lorg/fdroid/download/HttpDownloaderV2$Companion;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fdroid/download/HttpDownloaderV2$Companion;->getLog()Lmu/KLogger;

    move-result-object p1

    sget-object v1, Lorg/fdroid/download/HttpDownloaderV2$download$4$1;->INSTANCE:Lorg/fdroid/download/HttpDownloaderV2$download$4$1;

    invoke-interface {p1, v1}, Lmu/KLogger;->warn(Lkotlin/jvm/functions/Function0;)V

    :cond_3
    iget-object p1, p0, Lorg/fdroid/download/HttpDownloaderV2$download$4;->this$0:Lorg/fdroid/download/HttpDownloaderV2;

    iput v2, p0, Lorg/fdroid/download/HttpDownloaderV2$download$4;->label:I

    const/4 v1, 0x0

    .line 78
    invoke-virtual {p1, v1, p0}, Lorg/fdroid/download/Downloader;->downloadFromBytesReceiver(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 80
    :cond_4
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
