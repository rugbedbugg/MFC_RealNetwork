.class public final Lorg/fdroid/download/HttpDownloaderV2;
.super Lorg/fdroid/download/Downloader;
.source "HttpDownloaderV2.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fdroid/download/HttpDownloaderV2$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\t\u001a\u00020\nH\u0016J\u0008\u0010\u000b\u001a\u00020\nH\u0016J\u001e\u0010\u000c\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0094@\u00a2\u0006\u0002\u0010\u0011J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\r\u001a\u00020\u000eH\u0014J\u0008\u0010\u0014\u001a\u00020\u000eH\u0017J\u0008\u0010\u0015\u001a\u00020\u0016H\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lorg/fdroid/download/HttpDownloaderV2;",
        "Lorg/fdroid/download/Downloader;",
        "httpManager",
        "Lorg/fdroid/download/HttpManager;",
        "request",
        "Lorg/fdroid/download/DownloadRequest;",
        "destFile",
        "Ljava/io/File;",
        "(Lorg/fdroid/download/HttpManager;Lorg/fdroid/download/DownloadRequest;Ljava/io/File;)V",
        "close",
        "",
        "download",
        "getBytes",
        "resumable",
        "",
        "receiver",
        "Lorg/fdroid/download/BytesReceiver;",
        "(ZLorg/fdroid/download/BytesReceiver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getInputStream",
        "Ljava/io/InputStream;",
        "hasChanged",
        "totalDownloadSize",
        "",
        "Companion",
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


# static fields
.field private static final Companion:Lorg/fdroid/download/HttpDownloaderV2$Companion;

.field private static final log:Lmu/KLogger;


# instance fields
.field private final httpManager:Lorg/fdroid/download/HttpManager;

.field private final request:Lorg/fdroid/download/DownloadRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/fdroid/download/HttpDownloaderV2$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/fdroid/download/HttpDownloaderV2$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/fdroid/download/HttpDownloaderV2;->Companion:Lorg/fdroid/download/HttpDownloaderV2$Companion;

    .line 42
    sget-object v0, Lmu/KotlinLogging;->INSTANCE:Lmu/KotlinLogging;

    sget-object v1, Lorg/fdroid/download/HttpDownloaderV2$Companion$log$1;->INSTANCE:Lorg/fdroid/download/HttpDownloaderV2$Companion$log$1;

    invoke-virtual {v0, v1}, Lmu/KotlinLogging;->logger(Lkotlin/jvm/functions/Function0;)Lmu/KLogger;

    move-result-object v0

    sput-object v0, Lorg/fdroid/download/HttpDownloaderV2;->log:Lmu/KLogger;

    return-void
.end method

.method public constructor <init>(Lorg/fdroid/download/HttpManager;Lorg/fdroid/download/DownloadRequest;Ljava/io/File;)V
    .locals 1

    const-string v0, "httpManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destFile"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p2}, Lorg/fdroid/download/DownloadRequest;->getIndexFile()Lorg/fdroid/IndexFile;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lorg/fdroid/download/Downloader;-><init>(Lorg/fdroid/IndexFile;Ljava/io/File;)V

    iput-object p1, p0, Lorg/fdroid/download/HttpDownloaderV2;->httpManager:Lorg/fdroid/download/HttpManager;

    iput-object p2, p0, Lorg/fdroid/download/HttpDownloaderV2;->request:Lorg/fdroid/download/DownloadRequest;

    return-void
.end method

.method public static final synthetic access$getCompanion$p()Lorg/fdroid/download/HttpDownloaderV2$Companion;
    .locals 1

    .line 0
    sget-object v0, Lorg/fdroid/download/HttpDownloaderV2;->Companion:Lorg/fdroid/download/HttpDownloaderV2$Companion;

    return-object v0
.end method

.method public static final synthetic access$getLog$cp()Lmu/KLogger;
    .locals 1

    .line 0
    sget-object v0, Lorg/fdroid/download/HttpDownloaderV2;->log:Lmu/KLogger;

    return-object v0
.end method

.method public static final synthetic access$getRequest$p(Lorg/fdroid/download/HttpDownloaderV2;)Lorg/fdroid/download/DownloadRequest;
    .locals 0

    .line 35
    iget-object p0, p0, Lorg/fdroid/download/HttpDownloaderV2;->request:Lorg/fdroid/download/DownloadRequest;

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 0
    return-void
.end method

.method public download()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Lorg/fdroid/download/NotFoundException;
        }
    .end annotation

    .line 62
    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    iget-object v1, p0, Lorg/fdroid/download/Downloader;->outputFile:Ljava/io/File;

    .line 63
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    iget-object v3, p0, Lorg/fdroid/download/HttpDownloaderV2;->request:Lorg/fdroid/download/DownloadRequest;

    .line 64
    invoke-virtual {v3}, Lorg/fdroid/download/DownloadRequest;->getIndexFile()Lorg/fdroid/IndexFile;

    move-result-object v3

    invoke-interface {v3}, Lorg/fdroid/IndexFile;->getSize()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    const-wide/16 v3, -0x1

    :goto_0
    cmp-long v3, v1, v3

    const/4 v4, 0x1

    if-lez v3, :cond_1

    iget-object v1, p0, Lorg/fdroid/download/Downloader;->outputFile:Ljava/io/File;

    .line 65
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lorg/fdroid/download/HttpDownloaderV2;->log:Lmu/KLogger;

    sget-object v2, Lorg/fdroid/download/HttpDownloaderV2$download$1;->INSTANCE:Lorg/fdroid/download/HttpDownloaderV2$download$1;

    invoke-interface {v1, v2}, Lmu/KLogger;->warn(Lkotlin/jvm/functions/Function0;)V

    goto :goto_2

    :cond_1
    iget-object v3, p0, Lorg/fdroid/download/HttpDownloaderV2;->request:Lorg/fdroid/download/DownloadRequest;

    .line 66
    invoke-virtual {v3}, Lorg/fdroid/download/DownloadRequest;->getIndexFile()Lorg/fdroid/IndexFile;

    move-result-object v3

    invoke-interface {v3}, Lorg/fdroid/IndexFile;->getSize()Ljava/lang/Long;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v3, v1, v5

    if-nez v3, :cond_3

    iget-object v3, p0, Lorg/fdroid/download/Downloader;->outputFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v0, Lorg/fdroid/download/HttpDownloaderV2;->log:Lmu/KLogger;

    .line 67
    new-instance v1, Lorg/fdroid/download/HttpDownloaderV2$download$2;

    invoke-direct {v1, p0}, Lorg/fdroid/download/HttpDownloaderV2$download$2;-><init>(Lorg/fdroid/download/HttpDownloaderV2;)V

    invoke-interface {v0, v1}, Lmu/KLogger;->debug(Lkotlin/jvm/functions/Function0;)V

    return-void

    :cond_3
    :goto_1
    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-lez v1, :cond_4

    iput-boolean v4, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    :cond_4
    :goto_2
    sget-object v1, Lorg/fdroid/download/HttpDownloaderV2;->log:Lmu/KLogger;

    .line 72
    new-instance v2, Lorg/fdroid/download/HttpDownloaderV2$download$3;

    invoke-direct {v2, p0, v0}, Lorg/fdroid/download/HttpDownloaderV2$download$3;-><init>(Lorg/fdroid/download/HttpDownloaderV2;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    invoke-interface {v1, v2}, Lmu/KLogger;->debug(Lkotlin/jvm/functions/Function0;)V

    .line 73
    new-instance v1, Lorg/fdroid/download/HttpDownloaderV2$download$4;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lorg/fdroid/download/HttpDownloaderV2$download$4;-><init>(Lorg/fdroid/download/HttpDownloaderV2;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2, v1, v4, v2}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected getBytes(ZLorg/fdroid/download/BytesReceiver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lorg/fdroid/download/BytesReceiver;",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/fdroid/download/NoResumeException;,
            Lorg/fdroid/download/NotFoundException;
        }
    .end annotation

    instance-of v0, p3, Lorg/fdroid/download/HttpDownloaderV2$getBytes$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lorg/fdroid/download/HttpDownloaderV2$getBytes$1;

    iget v1, v0, Lorg/fdroid/download/HttpDownloaderV2$getBytes$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/fdroid/download/HttpDownloaderV2$getBytes$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/fdroid/download/HttpDownloaderV2$getBytes$1;

    invoke-direct {v0, p0, p3}, Lorg/fdroid/download/HttpDownloaderV2$getBytes$1;-><init>(Lorg/fdroid/download/HttpDownloaderV2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lorg/fdroid/download/HttpDownloaderV2$getBytes$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 50
    iget v2, v0, Lorg/fdroid/download/HttpDownloaderV2$getBytes$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lio/ktor/client/plugins/ResponseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/fdroid/download/Downloader;->outputFile:Ljava/io/File;

    .line 51
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    :try_start_1
    iget-object p3, p0, Lorg/fdroid/download/HttpDownloaderV2;->httpManager:Lorg/fdroid/download/HttpManager;

    iget-object v2, p0, Lorg/fdroid/download/HttpDownloaderV2;->request:Lorg/fdroid/download/DownloadRequest;

    .line 53
    iput v3, v0, Lorg/fdroid/download/HttpDownloaderV2$getBytes$1;->label:I

    invoke-virtual {p3, v2, p1, p2, v0}, Lorg/fdroid/download/HttpManager;->get(Lorg/fdroid/download/DownloadRequest;Ljava/lang/Long;Lorg/fdroid/download/BytesReceiver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Lio/ktor/client/plugins/ResponseException; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p1, v1, :cond_4

    return-object v1

    .line 56
    :cond_4
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 55
    :goto_3
    invoke-virtual {p1}, Lio/ktor/client/plugins/ResponseException;->getResponse()Lio/ktor/client/statement/HttpResponse;

    move-result-object p2

    invoke-virtual {p2}, Lio/ktor/client/statement/HttpResponse;->getStatus()Lio/ktor/http/HttpStatusCode;

    move-result-object p2

    sget-object p3, Lio/ktor/http/HttpStatusCode;->Companion:Lio/ktor/http/HttpStatusCode$Companion;

    invoke-virtual {p3}, Lio/ktor/http/HttpStatusCode$Companion;->getNotFound()Lio/ktor/http/HttpStatusCode;

    move-result-object p3

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    new-instance p2, Lorg/fdroid/download/NotFoundException;

    invoke-direct {p2, p1}, Lorg/fdroid/download/NotFoundException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 56
    :cond_5
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method protected getInputStream(Z)Ljava/io/InputStream;
    .locals 1

    .line 46
    new-instance p1, Lkotlin/NotImplementedError;

    const-string v0, "Use getInputStreamSuspend instead."

    invoke-direct {p1, v0}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hasChanged()Z
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "hasChanged() was called for V2 where it should not be needed."

    .line 87
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected totalDownloadSize()J
    .locals 2

    iget-object v0, p0, Lorg/fdroid/download/HttpDownloaderV2;->request:Lorg/fdroid/download/DownloadRequest;

    .line 83
    invoke-virtual {v0}, Lorg/fdroid/download/DownloadRequest;->getIndexFile()Lorg/fdroid/IndexFile;

    move-result-object v0

    invoke-interface {v0}, Lorg/fdroid/IndexFile;->getSize()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method
