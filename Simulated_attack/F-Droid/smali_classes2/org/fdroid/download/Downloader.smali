.class public abstract Lorg/fdroid/download/Downloader;
.super Ljava/lang/Object;
.source "Downloader.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fdroid/download/Downloader$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008&\u0018\u0000 52\u00020\u0001:\u00015B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\u0015\u001a\u00020\u0016J\u0008\u0010\u0017\u001a\u00020\u0016H&J\u0018\u0010\u0018\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0002J\u0008\u0010\u001d\u001a\u00020\u0016H&J\u0016\u0010\u001e\u001a\u00020\u00162\u0006\u0010\u001f\u001a\u00020\u0010H\u0084@\u00a2\u0006\u0002\u0010 J\u0010\u0010!\u001a\u00020\u00162\u0006\u0010\u001f\u001a\u00020\u0010H\u0004J\u001e\u0010\"\u001a\u00020\u00162\u0006\u0010#\u001a\u00020\u00102\u0006\u0010$\u001a\u00020%H\u0094@\u00a2\u0006\u0002\u0010&J\u0010\u0010\'\u001a\u00020\u001a2\u0006\u0010#\u001a\u00020\u0010H$J\u0008\u0010(\u001a\u00020\u0010H\'J \u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020*2\u0006\u0010,\u001a\u00020*2\u0006\u0010-\u001a\u00020*H\u0002J\u000e\u0010.\u001a\u00020\u00162\u0006\u0010/\u001a\u00020\u0014J\u0008\u00100\u001a\u00020\u0016H\u0002J\u0008\u00101\u001a\u00020*H$J\u0014\u00102\u001a\u00020\u0016*\u00020\u00052\u0006\u00103\u001a\u000204H\u0002R&\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0002\u001a\u00020\u0003X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0010\u0010\u0004\u001a\u00020\u00058\u0004X\u0085\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00066"
    }
    d2 = {
        "Lorg/fdroid/download/Downloader;",
        "",
        "indexFile",
        "Lorg/fdroid/IndexFile;",
        "outputFile",
        "Ljava/io/File;",
        "(Lorg/fdroid/IndexFile;Ljava/io/File;)V",
        "cacheTag",
        "",
        "getCacheTag$annotations",
        "()V",
        "getCacheTag",
        "()Ljava/lang/String;",
        "setCacheTag",
        "(Ljava/lang/String;)V",
        "cancelled",
        "",
        "getIndexFile",
        "()Lorg/fdroid/IndexFile;",
        "progressListener",
        "Lorg/fdroid/fdroid/ProgressListener;",
        "cancelDownload",
        "",
        "close",
        "copyInputToOutputStream",
        "input",
        "Ljava/io/InputStream;",
        "output",
        "Ljava/io/OutputStream;",
        "download",
        "downloadFromBytesReceiver",
        "isResume",
        "(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "downloadFromStream",
        "getBytes",
        "resumable",
        "receiver",
        "Lorg/fdroid/download/BytesReceiver;",
        "(ZLorg/fdroid/download/BytesReceiver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getInputStream",
        "hasChanged",
        "reportProgress",
        "",
        "lastTimeReported",
        "bytesRead",
        "bytesTotal",
        "setListener",
        "listener",
        "throwExceptionIfInterrupted",
        "totalDownloadSize",
        "initDigest",
        "messageDigest",
        "Ljava/security/MessageDigest;",
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
.field public static final Companion:Lorg/fdroid/download/Downloader$Companion;

.field private static final log:Lmu/KLogger;


# instance fields
.field private cacheTag:Ljava/lang/String;

.field private volatile cancelled:Z

.field private final indexFile:Lorg/fdroid/IndexFile;

.field protected final outputFile:Ljava/io/File;

.field private volatile progressListener:Lorg/fdroid/fdroid/ProgressListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/fdroid/download/Downloader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/fdroid/download/Downloader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/fdroid/download/Downloader;->Companion:Lorg/fdroid/download/Downloader$Companion;

    .line 22
    sget-object v0, Lmu/KotlinLogging;->INSTANCE:Lmu/KotlinLogging;

    sget-object v1, Lorg/fdroid/download/Downloader$Companion$log$1;->INSTANCE:Lorg/fdroid/download/Downloader$Companion$log$1;

    invoke-virtual {v0, v1}, Lmu/KotlinLogging;->logger(Lkotlin/jvm/functions/Function0;)Lmu/KLogger;

    move-result-object v0

    sput-object v0, Lorg/fdroid/download/Downloader;->log:Lmu/KLogger;

    return-void
.end method

.method public constructor <init>(Lorg/fdroid/IndexFile;Ljava/io/File;)V
    .locals 1

    const-string v0, "indexFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outputFile"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/download/Downloader;->indexFile:Lorg/fdroid/IndexFile;

    iput-object p2, p0, Lorg/fdroid/download/Downloader;->outputFile:Ljava/io/File;

    return-void
.end method

.method public static final synthetic access$reportProgress(Lorg/fdroid/download/Downloader;JJJ)J
    .locals 0

    .line 15
    invoke-direct/range {p0 .. p6}, Lorg/fdroid/download/Downloader;->reportProgress(JJJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$throwExceptionIfInterrupted(Lorg/fdroid/download/Downloader;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lorg/fdroid/download/Downloader;->throwExceptionIfInterrupted()V

    return-void
.end method

.method private final copyInputToOutputStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    iget-object v1, v8, Lorg/fdroid/download/Downloader;->indexFile:Lorg/fdroid/IndexFile;

    .line 147
    invoke-interface {v1}, Lorg/fdroid/IndexFile;->getSha256()Ljava/lang/String;

    move-result-object v1

    const/4 v9, 0x0

    if-nez v1, :cond_0

    move-object v10, v9

    goto :goto_0

    :cond_0
    const-string v1, "SHA-256"

    .line 148
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    move-object v10, v1

    :goto_0
    :try_start_0
    iget-object v1, v8, Lorg/fdroid/download/Downloader;->outputFile:Ljava/io/File;

    .line 151
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    if-eqz v10, :cond_1

    iget-object v5, v8, Lorg/fdroid/download/Downloader;->outputFile:Ljava/io/File;

    .line 153
    invoke-direct {v8, v5, v10}, Lorg/fdroid/download/Downloader;->initDigest(Ljava/io/File;Ljava/security/MessageDigest;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object/from16 v14, p2

    goto :goto_5

    .line 156
    :cond_1
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/fdroid/download/Downloader;->totalDownloadSize()J

    move-result-wide v11

    const/16 v5, 0x2000

    new-array v13, v5, [B

    .line 158
    invoke-virtual {v0, v13}, Ljava/io/InputStream;->read([B)I

    move-result v5

    move-wide/from16 v17, v1

    move v1, v5

    move-wide v2, v3

    move-wide/from16 v4, v17

    :goto_2
    if-ltz v1, :cond_3

    .line 160
    invoke-direct/range {p0 .. p0}, Lorg/fdroid/download/Downloader;->throwExceptionIfInterrupted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, 0x0

    move-object/from16 v14, p2

    .line 161
    :try_start_1
    invoke-virtual {v14, v13, v6, v1}, Ljava/io/OutputStream;->write([BII)V

    if-eqz v10, :cond_2

    .line 162
    invoke-virtual {v10, v13, v6, v1}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_5

    :cond_2
    :goto_3
    int-to-long v6, v1

    add-long v15, v4, v6

    move-object/from16 v1, p0

    move-wide v4, v15

    move-wide v6, v11

    .line 164
    invoke-direct/range {v1 .. v7}, Lorg/fdroid/download/Downloader;->reportProgress(JJJ)J

    move-result-wide v2

    .line 165
    invoke-virtual {v0, v13}, Ljava/io/InputStream;->read([B)I

    move-result v1

    move-wide v4, v15

    goto :goto_2

    :cond_3
    move-object/from16 v14, p2

    iget-object v0, v8, Lorg/fdroid/download/Downloader;->indexFile:Lorg/fdroid/IndexFile;

    .line 168
    invoke-interface {v0}, Lorg/fdroid/IndexFile;->getSha256()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 169
    invoke-static {v10, v0}, Lorg/fdroid/fdroid/HashUtilsKt;->isMatching(Ljava/security/MessageDigest;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_4

    .line 170
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Hash not matching"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_4
    const-wide/16 v2, 0x0

    move-object/from16 v1, p0

    move-wide v6, v11

    .line 174
    invoke-direct/range {v1 .. v7}, Lorg/fdroid/download/Downloader;->reportProgress(JJJ)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 176
    invoke-virtual/range {p2 .. p2}, Ljava/io/OutputStream;->flush()V

    iput-object v9, v8, Lorg/fdroid/download/Downloader;->progressListener:Lorg/fdroid/fdroid/ProgressListener;

    return-void

    :goto_5
    invoke-virtual/range {p2 .. p2}, Ljava/io/OutputStream;->flush()V

    iput-object v9, v8, Lorg/fdroid/download/Downloader;->progressListener:Lorg/fdroid/fdroid/ProgressListener;

    .line 177
    throw v0
.end method

.method static synthetic getBytes$suspendImpl(Lorg/fdroid/download/Downloader;ZLorg/fdroid/download/BytesReceiver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fdroid/download/Downloader;",
            "Z",
            "Lorg/fdroid/download/BytesReceiver;",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 52
    new-instance p0, Lkotlin/NotImplementedError;

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2, p1}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0
.end method

.method public static synthetic getCacheTag$annotations()V
    .locals 0

    .line 0
    return-void
.end method

.method private final initDigest(Ljava/io/File;Ljava/security/MessageDigest;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 p1, 0x2000

    :try_start_0
    new-array p1, p1, [B

    .line 220
    invoke-virtual {v0, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    :goto_0
    if-ltz v1, :cond_0

    const/4 v2, 0x0

    .line 222
    invoke-virtual {p2, p1, v2, v1}, Ljava/security/MessageDigest;->update([BII)V

    .line 223
    invoke-virtual {v0, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 225
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 218
    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :goto_1
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private final reportProgress(JJJ)J
    .locals 6

    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v2, v0, p1

    const-wide/16 v4, 0x64

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    sget-object p1, Lorg/fdroid/download/Downloader;->log:Lmu/KLogger;

    .line 184
    new-instance p2, Lorg/fdroid/download/Downloader$reportProgress$1;

    invoke-direct {p2, p3, p4, p5, p6}, Lorg/fdroid/download/Downloader$reportProgress$1;-><init>(JJ)V

    invoke-interface {p1, p2}, Lmu/KLogger;->debug(Lkotlin/jvm/functions/Function0;)V

    iget-object p1, p0, Lorg/fdroid/download/Downloader;->progressListener:Lorg/fdroid/fdroid/ProgressListener;

    if-eqz p1, :cond_0

    .line 185
    invoke-interface {p1, p3, p4, p5, p6}, Lorg/fdroid/fdroid/ProgressListener;->onProgress(JJ)V

    :cond_0
    move-wide p1, v0

    :cond_1
    return-wide p1
.end method

.method private final throwExceptionIfInterrupted()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/fdroid/download/Downloader;->cancelled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lorg/fdroid/download/Downloader;->log:Lmu/KLogger;

    sget-object v1, Lorg/fdroid/download/Downloader$throwExceptionIfInterrupted$1;->INSTANCE:Lorg/fdroid/download/Downloader$throwExceptionIfInterrupted$1;

    .line 210
    invoke-interface {v0, v1}, Lmu/KLogger;->info(Lkotlin/jvm/functions/Function0;)V

    .line 211
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 212
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final cancelDownload()V
    .locals 1

    .line 0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/fdroid/download/Downloader;->cancelled:Z

    return-void
.end method

.method public abstract close()V
.end method

.method public abstract download()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Lorg/fdroid/download/NotFoundException;
        }
    .end annotation
.end method

.method protected final downloadFromBytesReceiver(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;,
            Lorg/fdroid/download/NoResumeException;,
            Lorg/fdroid/download/NotFoundException;
        }
    .end annotation

    move-object/from16 v9, p0

    move/from16 v0, p1

    move-object/from16 v1, p2

    instance-of v2, v1, Lorg/fdroid/download/Downloader$downloadFromBytesReceiver$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lorg/fdroid/download/Downloader$downloadFromBytesReceiver$1;

    iget v3, v2, Lorg/fdroid/download/Downloader$downloadFromBytesReceiver$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lorg/fdroid/download/Downloader$downloadFromBytesReceiver$1;->label:I

    :goto_0
    move-object v10, v2

    goto :goto_1

    :cond_0
    new-instance v2, Lorg/fdroid/download/Downloader$downloadFromBytesReceiver$1;

    invoke-direct {v2, v9, v1}, Lorg/fdroid/download/Downloader$downloadFromBytesReceiver$1;-><init>(Lorg/fdroid/download/Downloader;Lkotlin/coroutines/Continuation;)V

    goto :goto_0

    :goto_1
    iget-object v1, v10, Lorg/fdroid/download/Downloader$downloadFromBytesReceiver$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v11

    .line 101
    iget v2, v10, Lorg/fdroid/download/Downloader$downloadFromBytesReceiver$1;->label:I

    const/4 v13, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v13, :cond_1

    iget-wide v2, v10, Lorg/fdroid/download/Downloader$downloadFromBytesReceiver$1;->J$0:J

    iget-object v0, v10, Lorg/fdroid/download/Downloader$downloadFromBytesReceiver$1;->L$3:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/io/Closeable;

    iget-object v0, v10, Lorg/fdroid/download/Downloader$downloadFromBytesReceiver$1;->L$2:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v5, v10, Lorg/fdroid/download/Downloader$downloadFromBytesReceiver$1;->L$1:Ljava/lang/Object;

    check-cast v5, Ljava/security/MessageDigest;

    iget-object v6, v10, Lorg/fdroid/download/Downloader$downloadFromBytesReceiver$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lorg/fdroid/download/Downloader;

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v13, v4

    move-object v8, v6

    move-wide v6, v2

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_8

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_1
    iget-object v1, v9, Lorg/fdroid/download/Downloader;->indexFile:Lorg/fdroid/IndexFile;

    .line 103
    invoke-interface {v1}, Lorg/fdroid/IndexFile;->getSha256()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    const/4 v14, 0x0

    goto :goto_2

    :cond_3
    const-string v1, "SHA-256"

    .line 104
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    move-object v14, v1

    .line 106
    :goto_2
    new-instance v15, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v15}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    iget-object v1, v9, Lorg/fdroid/download/Downloader;->outputFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    iput-wide v1, v15, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_4

    if-eqz v14, :cond_4

    iget-object v1, v9, Lorg/fdroid/download/Downloader;->outputFile:Ljava/io/File;

    .line 108
    invoke-direct {v9, v1, v14}, Lorg/fdroid/download/Downloader;->initDigest(Ljava/io/File;Ljava/security/MessageDigest;)V

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v8, v9

    goto/16 :goto_9

    .line 109
    :cond_4
    :goto_3
    new-instance v8, Ljava/io/FileOutputStream;

    iget-object v1, v9, Lorg/fdroid/download/Downloader;->outputFile:Ljava/io/File;

    invoke-direct {v8, v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 110
    :try_start_2
    new-instance v16, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct/range {v16 .. v16}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 111
    invoke-virtual/range {p0 .. p0}, Lorg/fdroid/download/Downloader;->totalDownloadSize()J

    move-result-wide v6

    .line 112
    new-instance v5, Lorg/fdroid/download/Downloader$downloadFromBytesReceiver$2$1;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    move-object v1, v5

    move-object/from16 v2, p0

    move-object v3, v8

    move-object v4, v14

    move-object v12, v5

    move-object v5, v15

    move-wide/from16 v17, v6

    move-object v13, v8

    move-object/from16 v8, v16

    :try_start_3
    invoke-direct/range {v1 .. v8}, Lorg/fdroid/download/Downloader$downloadFromBytesReceiver$2$1;-><init>(Lorg/fdroid/download/Downloader;Ljava/io/FileOutputStream;Ljava/security/MessageDigest;Lkotlin/jvm/internal/Ref$LongRef;JLkotlin/jvm/internal/Ref$LongRef;)V

    iput-object v9, v10, Lorg/fdroid/download/Downloader$downloadFromBytesReceiver$1;->L$0:Ljava/lang/Object;

    iput-object v14, v10, Lorg/fdroid/download/Downloader$downloadFromBytesReceiver$1;->L$1:Ljava/lang/Object;

    iput-object v15, v10, Lorg/fdroid/download/Downloader$downloadFromBytesReceiver$1;->L$2:Ljava/lang/Object;

    iput-object v13, v10, Lorg/fdroid/download/Downloader$downloadFromBytesReceiver$1;->L$3:Ljava/lang/Object;

    move-wide/from16 v1, v17

    iput-wide v1, v10, Lorg/fdroid/download/Downloader$downloadFromBytesReceiver$1;->J$0:J

    const/4 v3, 0x1

    iput v3, v10, Lorg/fdroid/download/Downloader$downloadFromBytesReceiver$1;->label:I

    invoke-virtual {v9, v0, v12, v10}, Lorg/fdroid/download/Downloader;->getBytes(ZLorg/fdroid/download/BytesReceiver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-ne v0, v11, :cond_5

    return-object v11

    :cond_5
    move-wide v6, v1

    move-object v8, v9

    move-object v5, v14

    move-object v0, v15

    .line 123
    :goto_4
    :try_start_4
    iget-object v1, v8, Lorg/fdroid/download/Downloader;->indexFile:Lorg/fdroid/IndexFile;

    invoke-interface {v1}, Lorg/fdroid/IndexFile;->getSha256()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 124
    invoke-static {v5, v1}, Lorg/fdroid/fdroid/HashUtilsKt;->isMatching(Ljava/security/MessageDigest;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_6

    .line 125
    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Hash not matching"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_2
    move-exception v0

    move-object v1, v0

    move-object v6, v8

    :goto_5
    move-object v4, v13

    goto :goto_8

    :cond_7
    :goto_6
    const-wide/16 v2, 0x0

    .line 129
    iget-wide v4, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lorg/fdroid/download/Downloader;->reportProgress(JJJ)J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/4 v0, 0x0

    .line 109
    :try_start_5
    invoke-static {v13, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 133
    invoke-direct {v8}, Lorg/fdroid/download/Downloader;->throwExceptionIfInterrupted()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 135
    invoke-virtual {v8}, Lorg/fdroid/download/Downloader;->close()V

    .line 137
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catchall_3
    move-exception v0

    goto :goto_9

    :catchall_4
    move-exception v0

    :goto_7
    move-object v1, v0

    move-object v6, v9

    goto :goto_5

    :catchall_5
    move-exception v0

    move-object v13, v8

    goto :goto_7

    .line 109
    :goto_8
    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    :catchall_6
    move-exception v0

    move-object v2, v0

    :try_start_7
    invoke-static {v4, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    move-object v8, v6

    .line 135
    :goto_9
    invoke-virtual {v8}, Lorg/fdroid/download/Downloader;->close()V

    throw v0
.end method

.method protected final downloadFromStream(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    sget-object v0, Lorg/fdroid/download/Downloader;->log:Lmu/KLogger;

    sget-object v1, Lorg/fdroid/download/Downloader$downloadFromStream$1;->INSTANCE:Lorg/fdroid/download/Downloader$downloadFromStream$1;

    .line 76
    invoke-interface {v0, v1}, Lmu/KLogger;->debug(Lkotlin/jvm/functions/Function0;)V

    .line 78
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lorg/fdroid/download/Downloader;->outputFile:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/fdroid/download/Downloader;->getInputStream(Z)Ljava/io/InputStream;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 82
    :try_start_2
    invoke-direct {p0}, Lorg/fdroid/download/Downloader;->throwExceptionIfInterrupted()V

    .line 83
    invoke-direct {p0, p1, v0}, Lorg/fdroid/download/Downloader;->copyInputToOutputStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 84
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v1, 0x0

    .line 79
    :try_start_3
    invoke-static {p1, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 78
    :try_start_4
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 88
    invoke-direct {p0}, Lorg/fdroid/download/Downloader;->throwExceptionIfInterrupted()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 90
    invoke-virtual {p0}, Lorg/fdroid/download/Downloader;->close()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_0

    :catchall_2
    move-exception v1

    .line 79
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v2

    :try_start_6
    invoke-static {p1, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 78
    :goto_0
    :try_start_7
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catchall_4
    move-exception v1

    :try_start_8
    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 90
    :goto_1
    invoke-virtual {p0}, Lorg/fdroid/download/Downloader;->close()V

    throw p1
.end method

.method protected getBytes(ZLorg/fdroid/download/BytesReceiver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lorg/fdroid/download/BytesReceiver;",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/fdroid/download/Downloader;->getBytes$suspendImpl(Lorg/fdroid/download/Downloader;ZLorg/fdroid/download/BytesReceiver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getCacheTag()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/download/Downloader;->cacheTag:Ljava/lang/String;

    return-object v0
.end method

.method protected final getIndexFile()Lorg/fdroid/IndexFile;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/download/Downloader;->indexFile:Lorg/fdroid/IndexFile;

    return-object v0
.end method

.method protected abstract getInputStream(Z)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/fdroid/download/NotFoundException;
        }
    .end annotation
.end method

.method public abstract hasChanged()Z
.end method

.method public final setCacheTag(Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/fdroid/download/Downloader;->cacheTag:Ljava/lang/String;

    return-void
.end method

.method public final setListener(Lorg/fdroid/fdroid/ProgressListener;)V
    .locals 1

    .line 0
    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/fdroid/download/Downloader;->progressListener:Lorg/fdroid/fdroid/ProgressListener;

    return-void
.end method

.method protected abstract totalDownloadSize()J
.end method
