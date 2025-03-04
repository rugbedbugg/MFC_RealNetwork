.class public abstract Lorg/fdroid/download/MirrorChooserImpl;
.super Ljava/lang/Object;
.source "MirrorChooser.kt"

# interfaces
.implements Lorg/fdroid/download/MirrorChooser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fdroid/download/MirrorChooserImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0007\u0008 \u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u0007\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u001c\u0010\u0008\u001a\u00020\u00072\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0002JH\u0010\u0012\u001a\u00028\u0000\"\u0004\u0008\u0000\u0010\t2\u0006\u0010\u000b\u001a\u00020\n2(\u0010\u0011\u001a$\u0008\u0001\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000cH\u0096@\u00a2\u0006\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0017"
    }
    d2 = {
        "Lorg/fdroid/download/MirrorChooserImpl;",
        "Lorg/fdroid/download/MirrorChooser;",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "e",
        "",
        "wasLastMirror",
        "",
        "throwOnLastMirror",
        "T",
        "Lorg/fdroid/download/DownloadRequest;",
        "downloadRequest",
        "Lkotlin/Function3;",
        "Lorg/fdroid/download/Mirror;",
        "Lio/ktor/http/Url;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "request",
        "mirrorRequest",
        "(Lorg/fdroid/download/DownloadRequest;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "<init>",
        "()V",
        "Companion",
        "download_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lorg/fdroid/download/MirrorChooserImpl$Companion;

.field private static final log:Lmu/KLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/fdroid/download/MirrorChooserImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/fdroid/download/MirrorChooserImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/fdroid/download/MirrorChooserImpl;->Companion:Lorg/fdroid/download/MirrorChooserImpl$Companion;

    .line 22
    sget-object v0, Lmu/KotlinLogging;->INSTANCE:Lmu/KotlinLogging;

    sget-object v1, Lorg/fdroid/download/MirrorChooserImpl$Companion$log$1;->INSTANCE:Lorg/fdroid/download/MirrorChooserImpl$Companion$log$1;

    invoke-virtual {v0, v1}, Lmu/KotlinLogging;->logger(Lkotlin/jvm/functions/Function0;)Lmu/KLogger;

    move-result-object v0

    sput-object v0, Lorg/fdroid/download/MirrorChooserImpl;->log:Lmu/KLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getLog$cp()Lmu/KLogger;
    .locals 1

    .line 0
    sget-object v0, Lorg/fdroid/download/MirrorChooserImpl;->log:Lmu/KLogger;

    return-object v0
.end method

.method static synthetic mirrorRequest$suspendImpl(Lorg/fdroid/download/MirrorChooserImpl;Lorg/fdroid/download/DownloadRequest;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/fdroid/download/MirrorChooserImpl;",
            "Lorg/fdroid/download/DownloadRequest;",
            "Lkotlin/jvm/functions/Function3;",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p3

    instance-of v1, v0, Lorg/fdroid/download/MirrorChooserImpl$mirrorRequest$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lorg/fdroid/download/MirrorChooserImpl$mirrorRequest$1;

    iget v2, v1, Lorg/fdroid/download/MirrorChooserImpl$mirrorRequest$1;->label:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lorg/fdroid/download/MirrorChooserImpl$mirrorRequest$1;->label:I

    move-object v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/fdroid/download/MirrorChooserImpl$mirrorRequest$1;

    move-object v2, p0

    invoke-direct {v1, p0, v0}, Lorg/fdroid/download/MirrorChooserImpl$mirrorRequest$1;-><init>(Lorg/fdroid/download/MirrorChooserImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v1, Lorg/fdroid/download/MirrorChooserImpl$mirrorRequest$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 28
    iget v4, v1, Lorg/fdroid/download/MirrorChooserImpl$mirrorRequest$1;->label:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v6, :cond_1

    iget v2, v1, Lorg/fdroid/download/MirrorChooserImpl$mirrorRequest$1;->I$1:I

    iget v4, v1, Lorg/fdroid/download/MirrorChooserImpl$mirrorRequest$1;->I$0:I

    iget-object v7, v1, Lorg/fdroid/download/MirrorChooserImpl$mirrorRequest$1;->L$4:Ljava/lang/Object;

    check-cast v7, Ljava/util/Iterator;

    iget-object v8, v1, Lorg/fdroid/download/MirrorChooserImpl$mirrorRequest$1;->L$3:Ljava/lang/Object;

    check-cast v8, Ljava/util/List;

    iget-object v9, v1, Lorg/fdroid/download/MirrorChooserImpl$mirrorRequest$1;->L$2:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/functions/Function3;

    iget-object v10, v1, Lorg/fdroid/download/MirrorChooserImpl$mirrorRequest$1;->L$1:Ljava/lang/Object;

    check-cast v10, Lorg/fdroid/download/DownloadRequest;

    iget-object v11, v1, Lorg/fdroid/download/MirrorChooserImpl$mirrorRequest$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lorg/fdroid/download/MirrorChooserImpl;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lio/ktor/client/plugins/ResponseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/fdroid/download/NoResumeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_6

    :catch_0
    move-exception v0

    goto/16 :goto_7

    :catch_1
    move-exception v0

    goto/16 :goto_9

    :catch_2
    move-exception v0

    goto/16 :goto_b

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 32
    invoke-virtual/range {p1 .. p1}, Lorg/fdroid/download/DownloadRequest;->getProxy()Ljava/net/Proxy;

    move-result-object v0

    if-nez v0, :cond_5

    .line 35
    invoke-interface/range {p0 .. p1}, Lorg/fdroid/download/MirrorChooser;->orderMirrors(Lorg/fdroid/download/DownloadRequest;)Ljava/util/List;

    move-result-object v0

    .line 766
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lorg/fdroid/download/Mirror;

    .line 35
    invoke-virtual {v8}, Lorg/fdroid/download/Mirror;->isOnion()Z

    move-result v8

    xor-int/2addr v8, v6

    if-eqz v8, :cond_3

    .line 857
    invoke-interface {v4, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 37
    :cond_4
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual/range {p1 .. p1}, Lorg/fdroid/download/DownloadRequest;->getMirrors()Ljava/util/List;

    move-result-object v4

    goto :goto_2

    .line 39
    :cond_5
    invoke-interface/range {p0 .. p1}, Lorg/fdroid/download/MirrorChooser;->orderMirrors(Lorg/fdroid/download/DownloadRequest;)Ljava/util/List;

    move-result-object v4

    .line 1865
    :cond_6
    :goto_2
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v9, v0

    move-object v8, v3

    move-object v10, v4

    move v7, v5

    move-object/from16 v3, p2

    move-object v4, v1

    move-object/from16 v1, p1

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v11, v7, 0x1

    if-gez v7, :cond_7

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_7
    check-cast v0, Lorg/fdroid/download/Mirror;

    .line 42
    invoke-virtual {v1}, Lorg/fdroid/download/DownloadRequest;->getIndexFile()Lorg/fdroid/IndexFile;

    move-result-object v12

    invoke-interface {v12}, Lorg/fdroid/IndexFile;->getIpfsCidV1()Ljava/lang/String;

    move-result-object v12

    .line 43
    invoke-virtual {v0}, Lorg/fdroid/download/Mirror;->isIpfsGateway()Z

    move-result v13

    if-eqz v13, :cond_a

    if-nez v12, :cond_9

    .line 45
    new-instance v0, Ljava/io/IOException;

    const-string v12, "Got IPFS gateway without CID"

    invoke-direct {v0, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v6

    if-ne v7, v12, :cond_8

    move v7, v6

    goto :goto_4

    :cond_8
    move v7, v5

    :goto_4
    invoke-direct {v2, v0, v7}, Lorg/fdroid/download/MirrorChooserImpl;->throwOnLastMirror(Ljava/lang/Exception;Z)V

    move v7, v11

    goto :goto_3

    .line 48
    :cond_9
    invoke-virtual {v0, v12}, Lorg/fdroid/download/Mirror;->getUrl(Ljava/lang/String;)Lio/ktor/http/Url;

    move-result-object v12

    goto :goto_5

    .line 50
    :cond_a
    invoke-virtual {v1}, Lorg/fdroid/download/DownloadRequest;->getIndexFile()Lorg/fdroid/IndexFile;

    move-result-object v12

    invoke-interface {v12}, Lorg/fdroid/IndexFile;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lorg/fdroid/download/Mirror;->getUrl(Ljava/lang/String;)Lio/ktor/http/Url;

    move-result-object v12

    .line 53
    :goto_5
    :try_start_1
    iput-object v2, v4, Lorg/fdroid/download/MirrorChooserImpl$mirrorRequest$1;->L$0:Ljava/lang/Object;

    iput-object v1, v4, Lorg/fdroid/download/MirrorChooserImpl$mirrorRequest$1;->L$1:Ljava/lang/Object;

    iput-object v3, v4, Lorg/fdroid/download/MirrorChooserImpl$mirrorRequest$1;->L$2:Ljava/lang/Object;

    iput-object v10, v4, Lorg/fdroid/download/MirrorChooserImpl$mirrorRequest$1;->L$3:Ljava/lang/Object;

    iput-object v9, v4, Lorg/fdroid/download/MirrorChooserImpl$mirrorRequest$1;->L$4:Ljava/lang/Object;

    iput v11, v4, Lorg/fdroid/download/MirrorChooserImpl$mirrorRequest$1;->I$0:I

    iput v7, v4, Lorg/fdroid/download/MirrorChooserImpl$mirrorRequest$1;->I$1:I

    iput v6, v4, Lorg/fdroid/download/MirrorChooserImpl$mirrorRequest$1;->label:I

    invoke-interface {v3, v0, v12, v4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Lio/ktor/client/plugins/ResponseException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/fdroid/download/NoResumeException; {:try_start_1 .. :try_end_1} :catch_3

    if-ne v0, v8, :cond_b

    return-object v8

    :cond_b
    :goto_6
    return-object v0

    :catch_3
    move-exception v0

    move-object v14, v10

    move-object v10, v1

    move-object v1, v4

    move v4, v11

    move-object v11, v2

    move v2, v7

    move-object v7, v9

    move-object v9, v3

    move-object v3, v8

    move-object v8, v14

    goto :goto_7

    :catch_4
    move-exception v0

    move-object v14, v10

    move-object v10, v1

    move-object v1, v4

    move v4, v11

    move-object v11, v2

    move v2, v7

    move-object v7, v9

    move-object v9, v3

    move-object v3, v8

    move-object v8, v14

    goto :goto_9

    :catch_5
    move-exception v0

    move-object v14, v10

    move-object v10, v1

    move-object v1, v4

    move v4, v11

    move-object v11, v2

    move v2, v7

    move-object v7, v9

    move-object v9, v3

    move-object v3, v8

    move-object v8, v14

    goto :goto_b

    .line 67
    :goto_7
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v6

    if-ne v2, v12, :cond_c

    move v2, v6

    goto :goto_8

    :cond_c
    move v2, v5

    :goto_8
    invoke-direct {v11, v0, v2}, Lorg/fdroid/download/MirrorChooserImpl;->throwOnLastMirror(Ljava/lang/Exception;Z)V

    goto :goto_f

    .line 62
    :goto_9
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v6

    if-ne v2, v12, :cond_d

    move v2, v6

    goto :goto_a

    :cond_d
    move v2, v5

    :goto_a
    invoke-direct {v11, v0, v2}, Lorg/fdroid/download/MirrorChooserImpl;->throwOnLastMirror(Ljava/lang/Exception;Z)V

    goto :goto_f

    .line 56
    :goto_b
    invoke-virtual {v10}, Lorg/fdroid/download/DownloadRequest;->getHasCredentials()Z

    move-result v12

    if-eqz v12, :cond_f

    invoke-virtual {v0}, Lio/ktor/client/plugins/ResponseException;->getResponse()Lio/ktor/client/statement/HttpResponse;

    move-result-object v12

    invoke-virtual {v12}, Lio/ktor/client/statement/HttpResponse;->getStatus()Lio/ktor/http/HttpStatusCode;

    move-result-object v12

    sget-object v13, Lio/ktor/http/HttpStatusCode;->Companion:Lio/ktor/http/HttpStatusCode$Companion;

    invoke-virtual {v13}, Lio/ktor/http/HttpStatusCode$Companion;->getForbidden()Lio/ktor/http/HttpStatusCode;

    move-result-object v13

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_e

    goto :goto_c

    :cond_e
    throw v0

    .line 58
    :cond_f
    :goto_c
    invoke-virtual {v10}, Lorg/fdroid/download/DownloadRequest;->getTryFirstMirror()Lorg/fdroid/download/Mirror;

    move-result-object v12

    if-eqz v12, :cond_11

    invoke-virtual {v0}, Lio/ktor/client/plugins/ResponseException;->getResponse()Lio/ktor/client/statement/HttpResponse;

    move-result-object v12

    invoke-virtual {v12}, Lio/ktor/client/statement/HttpResponse;->getStatus()Lio/ktor/http/HttpStatusCode;

    move-result-object v12

    sget-object v13, Lio/ktor/http/HttpStatusCode;->Companion:Lio/ktor/http/HttpStatusCode$Companion;

    invoke-virtual {v13}, Lio/ktor/http/HttpStatusCode$Companion;->getNotFound()Lio/ktor/http/HttpStatusCode;

    move-result-object v13

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_10

    goto :goto_d

    :cond_10
    throw v0

    .line 60
    :cond_11
    :goto_d
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v6

    if-ne v2, v12, :cond_12

    move v2, v6

    goto :goto_e

    :cond_12
    move v2, v5

    :goto_e
    invoke-direct {v11, v0, v2}, Lorg/fdroid/download/MirrorChooserImpl;->throwOnLastMirror(Ljava/lang/Exception;Z)V

    :goto_f
    move-object v2, v11

    move v14, v4

    move-object v4, v1

    move-object v1, v10

    move-object v10, v8

    move-object v8, v3

    move-object v3, v9

    move-object v9, v7

    move v7, v14

    goto/16 :goto_3

    .line 1866
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Reached code that was thought to be unreachable."

    .line 70
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final throwOnLastMirror(Ljava/lang/Exception;Z)V
    .locals 2

    sget-object v0, Lorg/fdroid/download/MirrorChooserImpl;->log:Lmu/KLogger;

    .line 74
    new-instance v1, Lorg/fdroid/download/MirrorChooserImpl$throwOnLastMirror$1;

    invoke-direct {v1, p1, p2}, Lorg/fdroid/download/MirrorChooserImpl$throwOnLastMirror$1;-><init>(Ljava/lang/Exception;Z)V

    invoke-interface {v0, v1}, Lmu/KLogger;->info(Lkotlin/jvm/functions/Function0;)V

    if-nez p2, :cond_0

    return-void

    .line 80
    :cond_0
    throw p1
.end method


# virtual methods
.method public mirrorRequest(Lorg/fdroid/download/DownloadRequest;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/fdroid/download/DownloadRequest;",
            "Lkotlin/jvm/functions/Function3;",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/fdroid/download/MirrorChooserImpl;->mirrorRequest$suspendImpl(Lorg/fdroid/download/MirrorChooserImpl;Lorg/fdroid/download/DownloadRequest;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
