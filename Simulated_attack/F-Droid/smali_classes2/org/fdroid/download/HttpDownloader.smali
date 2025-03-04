.class public final Lorg/fdroid/download/HttpDownloader;
.super Lorg/fdroid/download/Downloader;
.source "HttpDownloader.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fdroid/download/HttpDownloader$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\u0008\u0010\u0010\u001a\u00020\u000fH\u0017J\u0008\u0010\u0011\u001a\u00020\u000fH\u0002J\u001e\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u0015H\u0094@\u00a2\u0006\u0002\u0010\u0016J\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0013\u001a\u00020\rH\u0014J\u0008\u0010\u000c\u001a\u00020\rH\u0017J\u0008\u0010\u0019\u001a\u00020\nH\u0014R\u0012\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u000bR\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lorg/fdroid/download/HttpDownloader;",
        "Lorg/fdroid/download/Downloader;",
        "httpManager",
        "Lorg/fdroid/download/HttpManager;",
        "request",
        "Lorg/fdroid/download/DownloadRequest;",
        "destFile",
        "Ljava/io/File;",
        "(Lorg/fdroid/download/HttpManager;Lorg/fdroid/download/DownloadRequest;Ljava/io/File;)V",
        "fileSize",
        "",
        "Ljava/lang/Long;",
        "hasChanged",
        "",
        "close",
        "",
        "download",
        "downloadToFile",
        "getBytes",
        "resumable",
        "receiver",
        "Lorg/fdroid/download/BytesReceiver;",
        "(ZLorg/fdroid/download/BytesReceiver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getInputStream",
        "Ljava/io/InputStream;",
        "totalDownloadSize",
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
.field private static final Companion:Lorg/fdroid/download/HttpDownloader$Companion;

.field private static final log:Lmu/KLogger;


# instance fields
.field private fileSize:Ljava/lang/Long;

.field private hasChanged:Z

.field private final httpManager:Lorg/fdroid/download/HttpManager;

.field private final request:Lorg/fdroid/download/DownloadRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/fdroid/download/HttpDownloader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/fdroid/download/HttpDownloader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/fdroid/download/HttpDownloader;->Companion:Lorg/fdroid/download/HttpDownloader$Companion;

    .line 44
    sget-object v0, Lmu/KotlinLogging;->INSTANCE:Lmu/KotlinLogging;

    sget-object v1, Lorg/fdroid/download/HttpDownloader$Companion$log$1;->INSTANCE:Lorg/fdroid/download/HttpDownloader$Companion$log$1;

    invoke-virtual {v0, v1}, Lmu/KotlinLogging;->logger(Lkotlin/jvm/functions/Function0;)Lmu/KLogger;

    move-result-object v0

    sput-object v0, Lorg/fdroid/download/HttpDownloader;->log:Lmu/KLogger;

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

    .line 41
    invoke-virtual {p2}, Lorg/fdroid/download/DownloadRequest;->getIndexFile()Lorg/fdroid/IndexFile;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lorg/fdroid/download/Downloader;-><init>(Lorg/fdroid/IndexFile;Ljava/io/File;)V

    iput-object p1, p0, Lorg/fdroid/download/HttpDownloader;->httpManager:Lorg/fdroid/download/HttpManager;

    iput-object p2, p0, Lorg/fdroid/download/HttpDownloader;->request:Lorg/fdroid/download/DownloadRequest;

    .line 48
    invoke-virtual {p2}, Lorg/fdroid/download/DownloadRequest;->getIndexFile()Lorg/fdroid/IndexFile;

    move-result-object p1

    invoke-interface {p1}, Lorg/fdroid/IndexFile;->getSize()Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/download/HttpDownloader;->fileSize:Ljava/lang/Long;

    return-void
.end method

.method public static final synthetic access$getCompanion$p()Lorg/fdroid/download/HttpDownloader$Companion;
    .locals 1

    .line 0
    sget-object v0, Lorg/fdroid/download/HttpDownloader;->Companion:Lorg/fdroid/download/HttpDownloader$Companion;

    return-object v0
.end method

.method public static final synthetic access$getHttpManager$p(Lorg/fdroid/download/HttpDownloader;)Lorg/fdroid/download/HttpManager;
    .locals 0

    .line 36
    iget-object p0, p0, Lorg/fdroid/download/HttpDownloader;->httpManager:Lorg/fdroid/download/HttpManager;

    return-object p0
.end method

.method public static final synthetic access$getLog$cp()Lmu/KLogger;
    .locals 1

    .line 0
    sget-object v0, Lorg/fdroid/download/HttpDownloader;->log:Lmu/KLogger;

    return-object v0
.end method

.method public static final synthetic access$getRequest$p(Lorg/fdroid/download/HttpDownloader;)Lorg/fdroid/download/DownloadRequest;
    .locals 0

    .line 36
    iget-object p0, p0, Lorg/fdroid/download/HttpDownloader;->request:Lorg/fdroid/download/DownloadRequest;

    return-object p0
.end method

.method private final downloadToFile()V
    .locals 7

    .line 145
    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    iget-object v1, p0, Lorg/fdroid/download/Downloader;->outputFile:Ljava/io/File;

    .line 146
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    iget-object v3, p0, Lorg/fdroid/download/HttpDownloader;->fileSize:Ljava/lang/Long;

    if-eqz v3, :cond_0

    .line 147
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

    .line 148
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lorg/fdroid/download/HttpDownloader;->log:Lmu/KLogger;

    sget-object v2, Lorg/fdroid/download/HttpDownloader$downloadToFile$1;->INSTANCE:Lorg/fdroid/download/HttpDownloader$downloadToFile$1;

    invoke-interface {v1, v2}, Lmu/KLogger;->warn(Lkotlin/jvm/functions/Function0;)V

    goto :goto_2

    :cond_1
    iget-object v3, p0, Lorg/fdroid/download/HttpDownloader;->fileSize:Ljava/lang/Long;

    if-nez v3, :cond_2

    goto :goto_1

    .line 149
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v3, v1, v5

    if-nez v3, :cond_3

    iget-object v3, p0, Lorg/fdroid/download/Downloader;->outputFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v0, Lorg/fdroid/download/HttpDownloader;->log:Lmu/KLogger;

    .line 150
    new-instance v1, Lorg/fdroid/download/HttpDownloader$downloadToFile$2;

    invoke-direct {v1, p0}, Lorg/fdroid/download/HttpDownloader$downloadToFile$2;-><init>(Lorg/fdroid/download/HttpDownloader;)V

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
    sget-object v1, Lorg/fdroid/download/HttpDownloader;->log:Lmu/KLogger;

    .line 155
    new-instance v2, Lorg/fdroid/download/HttpDownloader$downloadToFile$3;

    invoke-direct {v2, p0, v0}, Lorg/fdroid/download/HttpDownloader$downloadToFile$3;-><init>(Lorg/fdroid/download/HttpDownloader;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    invoke-interface {v1, v2}, Lmu/KLogger;->debug(Lkotlin/jvm/functions/Function0;)V

    .line 156
    new-instance v1, Lorg/fdroid/download/HttpDownloader$downloadToFile$4;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lorg/fdroid/download/HttpDownloader$downloadToFile$4;-><init>(Lorg/fdroid/download/HttpDownloader;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2, v1, v4, v2}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
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
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 105
    new-instance v0, Lorg/fdroid/download/HttpDownloader$download$headInfo$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/fdroid/download/HttpDownloader$download$headInfo$1;-><init>(Lorg/fdroid/download/HttpDownloader;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fdroid/download/HeadInfo;

    .line 108
    invoke-virtual {p0}, Lorg/fdroid/download/Downloader;->getCacheTag()Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-virtual {v0}, Lorg/fdroid/download/HeadInfo;->getETag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/fdroid/download/Downloader;->setCacheTag(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0}, Lorg/fdroid/download/HeadInfo;->getContentLength()Ljava/lang/Long;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/fdroid/download/HttpDownloader;->request:Lorg/fdroid/download/DownloadRequest;

    invoke-virtual {v3}, Lorg/fdroid/download/DownloadRequest;->getIndexFile()Lorg/fdroid/IndexFile;

    move-result-object v3

    invoke-interface {v3}, Lorg/fdroid/IndexFile;->getSize()Ljava/lang/Long;

    move-result-object v3

    if-nez v3, :cond_0

    const-wide/16 v3, -0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :cond_0
    iput-object v3, p0, Lorg/fdroid/download/HttpDownloader;->fileSize:Ljava/lang/Long;

    .line 124
    :try_start_0
    invoke-virtual {v0}, Lorg/fdroid/download/HeadInfo;->getLastModified()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Date;->parse(Ljava/lang/String;)J

    move-result-wide v3

    const/16 v5, 0x3e8

    int-to-long v5, v5

    div-long/2addr v3, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-wide/16 v3, 0x0

    .line 129
    :goto_0
    sget-object v5, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v6, v4

    invoke-virtual {v0}, Lorg/fdroid/download/HeadInfo;->getContentLength()Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    const-string v5, "%x-%x"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "format(...)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0}, Lorg/fdroid/download/HeadInfo;->getETagChanged()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iput-boolean v2, p0, Lorg/fdroid/download/HttpDownloader;->hasChanged:Z

    .line 141
    invoke-direct {p0}, Lorg/fdroid/download/HttpDownloader;->downloadToFile()V

    return-void

    :cond_2
    :goto_1
    sget-object v0, Lorg/fdroid/download/HttpDownloader;->log:Lmu/KLogger;

    .line 135
    new-instance v1, Lorg/fdroid/download/HttpDownloader$download$1;

    invoke-direct {v1, p0}, Lorg/fdroid/download/HttpDownloader$download$1;-><init>(Lorg/fdroid/download/HttpDownloader;)V

    invoke-interface {v0, v1}, Lmu/KLogger;->debug(Lkotlin/jvm/functions/Function0;)V

    iput-boolean v4, p0, Lorg/fdroid/download/HttpDownloader;->hasChanged:Z

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

    instance-of v0, p3, Lorg/fdroid/download/HttpDownloader$getBytes$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lorg/fdroid/download/HttpDownloader$getBytes$1;

    iget v1, v0, Lorg/fdroid/download/HttpDownloader$getBytes$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/fdroid/download/HttpDownloader$getBytes$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/fdroid/download/HttpDownloader$getBytes$1;

    invoke-direct {v0, p0, p3}, Lorg/fdroid/download/HttpDownloader$getBytes$1;-><init>(Lorg/fdroid/download/HttpDownloader;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lorg/fdroid/download/HttpDownloader$getBytes$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 55
    iget v2, v0, Lorg/fdroid/download/HttpDownloader$getBytes$1;->label:I

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

    .line 56
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    :try_start_1
    iget-object p3, p0, Lorg/fdroid/download/HttpDownloader;->httpManager:Lorg/fdroid/download/HttpManager;

    iget-object v2, p0, Lorg/fdroid/download/HttpDownloader;->request:Lorg/fdroid/download/DownloadRequest;

    .line 58
    iput v3, v0, Lorg/fdroid/download/HttpDownloader$getBytes$1;->label:I

    invoke-virtual {p3, v2, p1, p2, v0}, Lorg/fdroid/download/HttpManager;->get(Lorg/fdroid/download/DownloadRequest;Ljava/lang/Long;Lorg/fdroid/download/BytesReceiver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Lio/ktor/client/plugins/ResponseException; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p1, v1, :cond_4

    return-object v1

    .line 61
    :cond_4
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 60
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

    .line 61
    :cond_5
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method protected getInputStream(Z)Ljava/io/InputStream;
    .locals 1

    .line 51
    new-instance p1, Lkotlin/NotImplementedError;

    const-string v0, "Use getInputStreamSuspend instead."

    invoke-direct {p1, v0}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hasChanged()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lorg/fdroid/download/HttpDownloader;->hasChanged:Z

    return v0
.end method

.method protected totalDownloadSize()J
    .locals 2

    iget-object v0, p0, Lorg/fdroid/download/HttpDownloader;->fileSize:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method
