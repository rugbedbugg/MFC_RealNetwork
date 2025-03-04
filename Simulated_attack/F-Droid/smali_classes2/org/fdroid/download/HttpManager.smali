.class public Lorg/fdroid/download/HttpManager;
.super Ljava/lang/Object;
.source "HttpManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fdroid/download/HttpManager$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009a\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0016\u0018\u0000 ?2\u00020\u0001:\u0001?B[\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0010\u0008\u0002\u0010\u0005\u001a\n\u0018\u00010\u0006j\u0004\u0018\u0001`\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r\u0012\u000c\u0008\u0002\u0010\u000e\u001a\u0006\u0012\u0002\u0008\u00030\u000f\u00a2\u0006\u0002\u0010\u0010J*\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0006\u0010 \u001a\u00020!H\u0087@\u00a2\u0006\u0002\u0010\"J$\u0010#\u001a\u00020$2\u0006\u0010\u001c\u001a\u00020\u001d2\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0080@\u00a2\u0006\u0004\u0008%\u0010&J$\u0010\'\u001a\u00020(2\u0006\u0010\u001c\u001a\u00020\u001d2\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0080@\u00a2\u0006\u0004\u0008)\u0010&J.\u0010*\u001a\u00020+2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020/2\u0006\u0010\u001e\u001a\u00020\u001fH\u0082@\u00a2\u0006\u0002\u00100J\u001a\u00101\u001a\u00020\u00162\u0010\u0008\u0002\u0010\u0005\u001a\n\u0018\u00010\u0006j\u0004\u0018\u0001`\u0007H\u0002J$\u00102\u001a\u0004\u0018\u0001032\u0006\u0010\u001c\u001a\u00020\u001d2\n\u0008\u0002\u00104\u001a\u0004\u0018\u00010\u0003H\u0086@\u00a2\u0006\u0002\u00105J0\u00106\u001a\u00020\u001b2\u0006\u0010.\u001a\u00020\u00032\u0006\u00107\u001a\u00020\u00032\u0010\u0008\u0002\u00108\u001a\n\u0018\u00010\u0006j\u0004\u0018\u0001`\u0007H\u0086@\u00a2\u0006\u0002\u00109J$\u0010:\u001a\u00020\u001b2\u000e\u0010\u0005\u001a\n\u0018\u00010\u0006j\u0004\u0018\u0001`\u00072\n\u0008\u0002\u0010,\u001a\u0004\u0018\u00010-H\u0002J\u000c\u0010;\u001a\u00020\u001b*\u00020<H\u0002J\u0014\u0010=\u001a\u00020\u001b*\u00020>2\u0006\u0010\u001c\u001a\u00020\u001dH\u0002R.\u0010\u0012\u001a\n\u0018\u00010\u0006j\u0004\u0018\u0001`\u00072\u000e\u0010\u0011\u001a\n\u0018\u00010\u0006j\u0004\u0018\u0001`\u0007@BX\u0080\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u0006\u0012\u0002\u0008\u00030\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\"\u0010\u0017\u001a\u0016\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u0019\u0018\u00010\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006@"
    }
    d2 = {
        "Lorg/fdroid/download/HttpManager;",
        "",
        "userAgent",
        "",
        "queryString",
        "proxyConfig",
        "Ljava/net/Proxy;",
        "Lio/ktor/client/engine/ProxyConfig;",
        "customDns",
        "Lokhttp3/Dns;",
        "highTimeouts",
        "",
        "mirrorChooser",
        "Lorg/fdroid/download/MirrorChooser;",
        "httpClientEngineFactory",
        "Lio/ktor/client/engine/HttpClientEngineFactory;",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/net/Proxy;Lokhttp3/Dns;ZLorg/fdroid/download/MirrorChooser;Lio/ktor/client/engine/HttpClientEngineFactory;)V",
        "<set-?>",
        "currentProxy",
        "getCurrentProxy$download_release",
        "()Ljava/net/Proxy;",
        "httpClient",
        "Lio/ktor/client/HttpClient;",
        "parameters",
        "",
        "Lkotlin/Pair;",
        "get",
        "",
        "request",
        "Lorg/fdroid/download/DownloadRequest;",
        "skipFirstBytes",
        "",
        "receiver",
        "Lorg/fdroid/download/BytesReceiver;",
        "(Lorg/fdroid/download/DownloadRequest;Ljava/lang/Long;Lorg/fdroid/download/BytesReceiver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getBytes",
        "",
        "getBytes$download_release",
        "(Lorg/fdroid/download/DownloadRequest;Ljava/lang/Long;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getChannel",
        "Lio/ktor/utils/io/ByteReadChannel;",
        "getChannel$download_release",
        "getHttpStatement",
        "Lio/ktor/client/statement/HttpStatement;",
        "mirror",
        "Lorg/fdroid/download/Mirror;",
        "url",
        "Lio/ktor/http/Url;",
        "(Lorg/fdroid/download/DownloadRequest;Lorg/fdroid/download/Mirror;Lio/ktor/http/Url;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getNewHttpClient",
        "head",
        "Lorg/fdroid/download/HeadInfo;",
        "eTag",
        "(Lorg/fdroid/download/DownloadRequest;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "post",
        "json",
        "proxy",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/net/Proxy;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "resetProxyIfNeeded",
        "addQueryParameters",
        "Lio/ktor/client/request/HttpRequestBuilder;",
        "basicAuth",
        "Lio/ktor/http/HttpMessageBuilder;",
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
.field public static final Companion:Lorg/fdroid/download/HttpManager$Companion;

.field public static final READ_BUFFER:I = 0x2000

.field private static final TIMEOUT_MILLIS_HIGH:J = 0x493e0L

.field private static final log:Lmu/KLogger;


# instance fields
.field private currentProxy:Ljava/net/Proxy;

.field private final highTimeouts:Z

.field private httpClient:Lio/ktor/client/HttpClient;

.field private final httpClientEngineFactory:Lio/ktor/client/engine/HttpClientEngineFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/client/engine/HttpClientEngineFactory;"
        }
    .end annotation
.end field

.field private final mirrorChooser:Lorg/fdroid/download/MirrorChooser;

.field private final parameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/Pair;",
            ">;"
        }
    .end annotation
.end field

.field private final userAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/fdroid/download/HttpManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/fdroid/download/HttpManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/fdroid/download/HttpManager;->Companion:Lorg/fdroid/download/HttpManager$Companion;

    .line 57
    sget-object v0, Lmu/KotlinLogging;->INSTANCE:Lmu/KotlinLogging;

    sget-object v1, Lorg/fdroid/download/HttpManager$Companion$log$1;->INSTANCE:Lorg/fdroid/download/HttpManager$Companion$log$1;

    invoke-virtual {v0, v1}, Lmu/KotlinLogging;->logger(Lkotlin/jvm/functions/Function0;)Lmu/KLogger;

    move-result-object v0

    sput-object v0, Lorg/fdroid/download/HttpManager;->log:Lmu/KLogger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 11

    .line 0
    const-string v0, "userAgent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x7e

    const/4 v10, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v10}, Lorg/fdroid/download/HttpManager;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/net/Proxy;Lokhttp3/Dns;ZLorg/fdroid/download/MirrorChooser;Lio/ktor/client/engine/HttpClientEngineFactory;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 0
    const-string v0, "userAgent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x7c

    const/4 v10, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v10}, Lorg/fdroid/download/HttpManager;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/net/Proxy;Lokhttp3/Dns;ZLorg/fdroid/download/MirrorChooser;Lio/ktor/client/engine/HttpClientEngineFactory;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/net/Proxy;)V
    .locals 11

    .line 0
    const-string v0, "userAgent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x78

    const/4 v10, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v10}, Lorg/fdroid/download/HttpManager;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/net/Proxy;Lokhttp3/Dns;ZLorg/fdroid/download/MirrorChooser;Lio/ktor/client/engine/HttpClientEngineFactory;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/net/Proxy;Lokhttp3/Dns;)V
    .locals 11

    .line 0
    const-string v0, "userAgent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x70

    const/4 v10, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v10}, Lorg/fdroid/download/HttpManager;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/net/Proxy;Lokhttp3/Dns;ZLorg/fdroid/download/MirrorChooser;Lio/ktor/client/engine/HttpClientEngineFactory;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/net/Proxy;Lokhttp3/Dns;Z)V
    .locals 11

    .line 0
    const-string v0, "userAgent"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x60

    const/4 v10, 0x0

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    invoke-direct/range {v1 .. v10}, Lorg/fdroid/download/HttpManager;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/net/Proxy;Lokhttp3/Dns;ZLorg/fdroid/download/MirrorChooser;Lio/ktor/client/engine/HttpClientEngineFactory;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/net/Proxy;Lokhttp3/Dns;ZLorg/fdroid/download/MirrorChooser;)V
    .locals 11

    .line 0
    const-string v0, "userAgent"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mirrorChooser"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    const/16 v9, 0x40

    const/4 v10, 0x0

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    invoke-direct/range {v1 .. v10}, Lorg/fdroid/download/HttpManager;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/net/Proxy;Lokhttp3/Dns;ZLorg/fdroid/download/MirrorChooser;Lio/ktor/client/engine/HttpClientEngineFactory;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/net/Proxy;Lokhttp3/Dns;ZLorg/fdroid/download/MirrorChooser;Lio/ktor/client/engine/HttpClientEngineFactory;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/net/Proxy;",
            "Lokhttp3/Dns;",
            "Z",
            "Lorg/fdroid/download/MirrorChooser;",
            "Lio/ktor/client/engine/HttpClientEngineFactory;",
            ")V"
        }
    .end annotation

    const-string p4, "userAgent"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "mirrorChooser"

    invoke-static {p6, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "httpClientEngineFactory"

    invoke-static {p7, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/download/HttpManager;->userAgent:Ljava/lang/String;

    iput-boolean p5, p0, Lorg/fdroid/download/HttpManager;->highTimeouts:Z

    iput-object p6, p0, Lorg/fdroid/download/HttpManager;->mirrorChooser:Lorg/fdroid/download/MirrorChooser;

    iput-object p7, p0, Lorg/fdroid/download/HttpManager;->httpClientEngineFactory:Lio/ktor/client/engine/HttpClientEngineFactory;

    .line 63
    invoke-direct {p0, p3}, Lorg/fdroid/download/HttpManager;->getNewHttpClient(Ljava/net/Proxy;)Lio/ktor/client/HttpClient;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/download/HttpManager;->httpClient:Lio/ktor/client/HttpClient;

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    new-array p3, p1, [C

    const/16 p4, 0x26

    const/4 v0, 0x0

    aput-char p4, p3, v0

    const/4 p4, 0x0

    const/4 p5, 0x0

    const/4 p6, 0x6

    const/4 p7, 0x0

    .line 72
    invoke-static/range {p2 .. p7}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 1549
    new-instance p3, Ljava/util/ArrayList;

    const/16 p4, 0xa

    invoke-static {p2, p4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p4

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    .line 1621
    move-object v1, p4

    check-cast v1, Ljava/lang/String;

    new-array v2, p1, [C

    const/16 p4, 0x3d

    aput-char p4, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    .line 73
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 74
    new-instance p6, Lkotlin/Pair;

    invoke-direct {p6, p5, p4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1621
    invoke-interface {p3, p6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :cond_1
    iput-object p3, p0, Lorg/fdroid/download/HttpManager;->parameters:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/net/Proxy;Lokhttp3/Dns;ZLorg/fdroid/download/MirrorChooser;Lio/ktor/client/engine/HttpClientEngineFactory;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 v0, p8, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    and-int/lit8 v2, p8, 0x4

    if-eqz v2, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    move-object v2, p3

    :goto_1
    and-int/lit8 v3, p8, 0x8

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move-object v1, p4

    :goto_2
    and-int/lit8 v3, p8, 0x10

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    move v3, p5

    :goto_3
    and-int/lit8 v4, p8, 0x20

    if-eqz v4, :cond_4

    .line 50
    new-instance v4, Lorg/fdroid/download/MirrorChooserRandom;

    invoke-direct {v4}, Lorg/fdroid/download/MirrorChooserRandom;-><init>()V

    goto :goto_4

    :cond_4
    move-object v4, p6

    :goto_4
    and-int/lit8 v5, p8, 0x40

    if-eqz v5, :cond_5

    .line 51
    invoke-static {v1}, Lorg/fdroid/download/HttpManagerKt;->getHttpClientEngineFactory(Lokhttp3/Dns;)Lio/ktor/client/engine/HttpClientEngineFactory;

    move-result-object v5

    goto :goto_5

    :cond_5
    move-object v5, p7

    :goto_5
    move-object p2, p0

    move-object p3, p1

    move-object p4, v0

    move-object p5, v2

    move-object p6, v1

    move p7, v3

    move-object p8, v4

    move-object p9, v5

    .line 44
    invoke-direct/range {p2 .. p9}, Lorg/fdroid/download/HttpManager;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/net/Proxy;Lokhttp3/Dns;ZLorg/fdroid/download/MirrorChooser;Lio/ktor/client/engine/HttpClientEngineFactory;)V

    return-void
.end method

.method public static final synthetic access$addQueryParameters(Lorg/fdroid/download/HttpManager;Lio/ktor/client/request/HttpRequestBuilder;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lorg/fdroid/download/HttpManager;->addQueryParameters(Lio/ktor/client/request/HttpRequestBuilder;)V

    return-void
.end method

.method public static final synthetic access$basicAuth(Lorg/fdroid/download/HttpManager;Lio/ktor/http/HttpMessageBuilder;Lorg/fdroid/download/DownloadRequest;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lorg/fdroid/download/HttpManager;->basicAuth(Lio/ktor/http/HttpMessageBuilder;Lorg/fdroid/download/DownloadRequest;)V

    return-void
.end method

.method public static final synthetic access$getHighTimeouts$p(Lorg/fdroid/download/HttpManager;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lorg/fdroid/download/HttpManager;->highTimeouts:Z

    return p0
.end method

.method public static final synthetic access$getHttpClient$p(Lorg/fdroid/download/HttpManager;)Lio/ktor/client/HttpClient;
    .locals 0

    .line 44
    iget-object p0, p0, Lorg/fdroid/download/HttpManager;->httpClient:Lio/ktor/client/HttpClient;

    return-object p0
.end method

.method public static final synthetic access$getHttpStatement(Lorg/fdroid/download/HttpManager;Lorg/fdroid/download/DownloadRequest;Lorg/fdroid/download/Mirror;Lio/ktor/http/Url;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-direct/range {p0 .. p6}, Lorg/fdroid/download/HttpManager;->getHttpStatement(Lorg/fdroid/download/DownloadRequest;Lorg/fdroid/download/Mirror;Lio/ktor/http/Url;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getLog$cp()Lmu/KLogger;
    .locals 1

    .line 0
    sget-object v0, Lorg/fdroid/download/HttpManager;->log:Lmu/KLogger;

    return-object v0
.end method

.method public static final synthetic access$getUserAgent$p(Lorg/fdroid/download/HttpManager;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lorg/fdroid/download/HttpManager;->userAgent:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$resetProxyIfNeeded(Lorg/fdroid/download/HttpManager;Ljava/net/Proxy;Lorg/fdroid/download/Mirror;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lorg/fdroid/download/HttpManager;->resetProxyIfNeeded(Ljava/net/Proxy;Lorg/fdroid/download/Mirror;)V

    return-void
.end method

.method private final addQueryParameters(Lio/ktor/client/request/HttpRequestBuilder;)V
    .locals 3

    iget-object v0, p0, Lorg/fdroid/download/HttpManager;->parameters:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1855
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    .line 243
    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 244
    invoke-static {p1, v2, v1}, Lio/ktor/client/request/UtilsKt;->parameter(Lio/ktor/client/request/HttpRequestBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final basicAuth(Lio/ktor/http/HttpMessageBuilder;Lorg/fdroid/download/DownloadRequest;)V
    .locals 1

    .line 238
    invoke-virtual {p2}, Lorg/fdroid/download/DownloadRequest;->getHasCredentials()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lorg/fdroid/download/DownloadRequest;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lorg/fdroid/download/DownloadRequest;->getPassword()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1, v0, p2}, Lio/ktor/client/request/UtilsKt;->basicAuth(Lio/ktor/http/HttpMessageBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic get$default(Lorg/fdroid/download/HttpManager;Lorg/fdroid/download/DownloadRequest;Ljava/lang/Long;Lorg/fdroid/download/BytesReceiver;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/ktor/client/plugins/ResponseException;,
            Lorg/fdroid/download/NoResumeException;,
            Ljava/util/concurrent/CancellationException;
        }
    .end annotation

    if-nez p6, :cond_1

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 134
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/fdroid/download/HttpManager;->get(Lorg/fdroid/download/DownloadRequest;Ljava/lang/Long;Lorg/fdroid/download/BytesReceiver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: get"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic getBytes$download_release$default(Lorg/fdroid/download/HttpManager;Lorg/fdroid/download/DownloadRequest;Ljava/lang/Long;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 198
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/fdroid/download/HttpManager;->getBytes$download_release(Lorg/fdroid/download/DownloadRequest;Ljava/lang/Long;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getBytes"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic getChannel$download_release$default(Lorg/fdroid/download/HttpManager;Lorg/fdroid/download/DownloadRequest;Ljava/lang/Long;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 182
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/fdroid/download/HttpManager;->getChannel$download_release(Lorg/fdroid/download/DownloadRequest;Ljava/lang/Long;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getChannel"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final getHttpStatement(Lorg/fdroid/download/DownloadRequest;Lorg/fdroid/download/Mirror;Lio/ktor/http/Url;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fdroid/download/DownloadRequest;",
            "Lorg/fdroid/download/Mirror;",
            "Lio/ktor/http/Url;",
            "J",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 166
    invoke-virtual {p1}, Lorg/fdroid/download/DownloadRequest;->getProxy()Ljava/net/Proxy;

    move-result-object p6

    invoke-direct {p0, p6, p2}, Lorg/fdroid/download/HttpManager;->resetProxyIfNeeded(Ljava/net/Proxy;Lorg/fdroid/download/Mirror;)V

    sget-object p6, Lorg/fdroid/download/HttpManager;->log:Lmu/KLogger;

    .line 167
    new-instance v0, Lorg/fdroid/download/HttpManager$getHttpStatement$2;

    invoke-direct {v0, p3}, Lorg/fdroid/download/HttpManager$getHttpStatement$2;-><init>(Lio/ktor/http/Url;)V

    invoke-interface {p6, v0}, Lmu/KLogger;->debug(Lkotlin/jvm/functions/Function0;)V

    iget-object p6, p0, Lorg/fdroid/download/HttpManager;->httpClient:Lio/ktor/client/HttpClient;

    .line 279
    new-instance v0, Lio/ktor/client/request/HttpRequestBuilder;

    invoke-direct {v0}, Lio/ktor/client/request/HttpRequestBuilder;-><init>()V

    .line 33
    invoke-virtual {v0}, Lio/ktor/client/request/HttpRequestBuilder;->getUrl()Lio/ktor/http/URLBuilder;

    move-result-object v1

    invoke-static {v1, p3}, Lio/ktor/http/URLUtilsKt;->takeFrom(Lio/ktor/http/URLBuilder;Lio/ktor/http/Url;)Lio/ktor/http/URLBuilder;

    .line 169
    invoke-direct {p0, v0}, Lorg/fdroid/download/HttpManager;->addQueryParameters(Lio/ktor/client/request/HttpRequestBuilder;)V

    .line 171
    invoke-direct {p0, v0, p1}, Lorg/fdroid/download/HttpManager;->basicAuth(Lio/ktor/http/HttpMessageBuilder;Lorg/fdroid/download/DownloadRequest;)V

    .line 173
    invoke-virtual {p2}, Lorg/fdroid/download/Mirror;->isOnion()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lorg/fdroid/download/HttpManager$getHttpStatement$3$1;->INSTANCE:Lorg/fdroid/download/HttpManager$getHttpStatement$3$1;

    invoke-static {v0, p1}, Lio/ktor/client/plugins/HttpTimeoutKt;->timeout(Lio/ktor/client/request/HttpRequestBuilder;Lkotlin/jvm/functions/Function1;)V

    :cond_0
    const-wide/16 p1, 0x0

    cmp-long p1, p4, p1

    if-lez p1, :cond_1

    .line 175
    sget-object p1, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {p1}, Lio/ktor/http/HttpHeaders;->getRange()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "bytes="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, "-"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lio/ktor/client/request/UtilsKt;->header(Lio/ktor/http/HttpMessageBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 167
    :cond_1
    sget-object p1, Lio/ktor/http/HttpMethod;->Companion:Lio/ktor/http/HttpMethod$Companion;

    invoke-virtual {p1}, Lio/ktor/http/HttpMethod$Companion;->getGet()Lio/ktor/http/HttpMethod;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/ktor/client/request/HttpRequestBuilder;->setMethod(Lio/ktor/http/HttpMethod;)V

    .line 29
    new-instance p1, Lio/ktor/client/statement/HttpStatement;

    invoke-direct {p1, v0, p6}, Lio/ktor/client/statement/HttpStatement;-><init>(Lio/ktor/client/request/HttpRequestBuilder;Lio/ktor/client/HttpClient;)V

    return-object p1
.end method

.method private final getNewHttpClient(Ljava/net/Proxy;)Lio/ktor/client/HttpClient;
    .locals 2

    iput-object p1, p0, Lorg/fdroid/download/HttpManager;->currentProxy:Ljava/net/Proxy;

    iget-object v0, p0, Lorg/fdroid/download/HttpManager;->httpClientEngineFactory:Lio/ktor/client/engine/HttpClientEngineFactory;

    .line 79
    new-instance v1, Lorg/fdroid/download/HttpManager$getNewHttpClient$1;

    invoke-direct {v1, p1, p0}, Lorg/fdroid/download/HttpManager$getNewHttpClient$1;-><init>(Ljava/net/Proxy;Lorg/fdroid/download/HttpManager;)V

    invoke-static {v0, v1}, Lio/ktor/client/HttpClientKt;->HttpClient(Lio/ktor/client/engine/HttpClientEngineFactory;Lkotlin/jvm/functions/Function1;)Lio/ktor/client/HttpClient;

    move-result-object p1

    return-object p1
.end method

.method static synthetic getNewHttpClient$default(Lorg/fdroid/download/HttpManager;Ljava/net/Proxy;ILjava/lang/Object;)Lio/ktor/client/HttpClient;
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 77
    :cond_0
    invoke-direct {p0, p1}, Lorg/fdroid/download/HttpManager;->getNewHttpClient(Ljava/net/Proxy;)Lio/ktor/client/HttpClient;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getNewHttpClient"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic head$default(Lorg/fdroid/download/HttpManager;Lorg/fdroid/download/DownloadRequest;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fdroid/download/NotFoundException;
        }
    .end annotation

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 106
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/fdroid/download/HttpManager;->head(Lorg/fdroid/download/DownloadRequest;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: head"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic post$default(Lorg/fdroid/download/HttpManager;Ljava/lang/String;Ljava/lang/String;Ljava/net/Proxy;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p6, :cond_1

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p3, 0x0

    .line 211
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/fdroid/download/HttpManager;->post(Ljava/lang/String;Ljava/lang/String;Ljava/net/Proxy;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: post"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final resetProxyIfNeeded(Ljava/net/Proxy;Lorg/fdroid/download/Mirror;)V
    .locals 1

    .line 223
    invoke-static {p2}, Lorg/fdroid/download/MirrorKt;->isLocal(Lorg/fdroid/download/Mirror;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/fdroid/download/HttpManager;->currentProxy:Ljava/net/Proxy;

    if-eqz p1, :cond_0

    sget-object p1, Lorg/fdroid/download/HttpManager;->log:Lmu/KLogger;

    .line 224
    new-instance v0, Lorg/fdroid/download/HttpManager$resetProxyIfNeeded$newProxy$1;

    invoke-direct {v0, p2}, Lorg/fdroid/download/HttpManager$resetProxyIfNeeded$newProxy$1;-><init>(Lorg/fdroid/download/Mirror;)V

    invoke-interface {p1, v0}, Lmu/KLogger;->debug(Lkotlin/jvm/functions/Function0;)V

    :cond_0
    const/4 p1, 0x0

    :cond_1
    iget-object p2, p0, Lorg/fdroid/download/HttpManager;->currentProxy:Ljava/net/Proxy;

    .line 229
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    sget-object p2, Lorg/fdroid/download/HttpManager;->log:Lmu/KLogger;

    .line 230
    new-instance v0, Lorg/fdroid/download/HttpManager$resetProxyIfNeeded$1;

    invoke-direct {v0, p0, p1}, Lorg/fdroid/download/HttpManager$resetProxyIfNeeded$1;-><init>(Lorg/fdroid/download/HttpManager;Ljava/net/Proxy;)V

    invoke-interface {p2, v0}, Lmu/KLogger;->debug(Lkotlin/jvm/functions/Function0;)V

    iget-object p2, p0, Lorg/fdroid/download/HttpManager;->httpClient:Lio/ktor/client/HttpClient;

    .line 231
    invoke-virtual {p2}, Lio/ktor/client/HttpClient;->close()V

    .line 232
    invoke-direct {p0, p1}, Lorg/fdroid/download/HttpManager;->getNewHttpClient(Ljava/net/Proxy;)Lio/ktor/client/HttpClient;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/download/HttpManager;->httpClient:Lio/ktor/client/HttpClient;

    :cond_2
    return-void
.end method

.method static synthetic resetProxyIfNeeded$default(Lorg/fdroid/download/HttpManager;Ljava/net/Proxy;Lorg/fdroid/download/Mirror;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 221
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/fdroid/download/HttpManager;->resetProxyIfNeeded(Ljava/net/Proxy;Lorg/fdroid/download/Mirror;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: resetProxyIfNeeded"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final get(Lorg/fdroid/download/DownloadRequest;Ljava/lang/Long;Lorg/fdroid/download/BytesReceiver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fdroid/download/DownloadRequest;",
            "Ljava/lang/Long;",
            "Lorg/fdroid/download/BytesReceiver;",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/ktor/client/plugins/ResponseException;,
            Lorg/fdroid/download/NoResumeException;,
            Ljava/util/concurrent/CancellationException;
        }
    .end annotation

    .line 140
    new-instance v3, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    iput-wide v0, v3, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    iget-object p2, p0, Lorg/fdroid/download/HttpManager;->mirrorChooser:Lorg/fdroid/download/MirrorChooser;

    .line 141
    new-instance v6, Lorg/fdroid/download/HttpManager$get$2;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/fdroid/download/HttpManager$get$2;-><init>(Lorg/fdroid/download/HttpManager;Lorg/fdroid/download/DownloadRequest;Lkotlin/jvm/internal/Ref$LongRef;Lorg/fdroid/download/BytesReceiver;Lkotlin/coroutines/Continuation;)V

    invoke-interface {p2, p1, v6, p4}, Lorg/fdroid/download/MirrorChooser;->mirrorRequest(Lorg/fdroid/download/DownloadRequest;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_1

    return-object p1

    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final get(Lorg/fdroid/download/DownloadRequest;Lorg/fdroid/download/BytesReceiver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fdroid/download/DownloadRequest;",
            "Lorg/fdroid/download/BytesReceiver;",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/ktor/client/plugins/ResponseException;,
            Lorg/fdroid/download/NoResumeException;,
            Ljava/util/concurrent/CancellationException;
        }
    .end annotation

    .line 0
    const/4 v2, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v6}, Lorg/fdroid/download/HttpManager;->get$default(Lorg/fdroid/download/HttpManager;Lorg/fdroid/download/DownloadRequest;Ljava/lang/Long;Lorg/fdroid/download/BytesReceiver;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getBytes$download_release(Lorg/fdroid/download/DownloadRequest;Ljava/lang/Long;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fdroid/download/DownloadRequest;",
            "Ljava/lang/Long;",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lorg/fdroid/download/HttpManager$getBytes$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lorg/fdroid/download/HttpManager$getBytes$1;

    iget v1, v0, Lorg/fdroid/download/HttpManager$getBytes$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/fdroid/download/HttpManager$getBytes$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/fdroid/download/HttpManager$getBytes$1;

    invoke-direct {v0, p0, p3}, Lorg/fdroid/download/HttpManager$getBytes$1;-><init>(Lorg/fdroid/download/HttpManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lorg/fdroid/download/HttpManager$getBytes$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 198
    iget v2, v0, Lorg/fdroid/download/HttpManager$getBytes$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lorg/fdroid/download/HttpManager$getBytes$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/io/Closeable;

    iget-object p2, v0, Lorg/fdroid/download/HttpManager$getBytes$1;->L$0:Ljava/lang/Object;

    check-cast p2, Ljava/io/ByteArrayOutputStream;

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 202
    new-instance p3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 204
    :try_start_1
    new-instance v2, Lorg/fdroid/download/HttpManager$getBytes$2$1;

    invoke-direct {v2, p3}, Lorg/fdroid/download/HttpManager$getBytes$2$1;-><init>(Ljava/io/ByteArrayOutputStream;)V

    iput-object p3, v0, Lorg/fdroid/download/HttpManager$getBytes$1;->L$0:Ljava/lang/Object;

    iput-object p3, v0, Lorg/fdroid/download/HttpManager$getBytes$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lorg/fdroid/download/HttpManager$getBytes$1;->label:I

    invoke-virtual {p0, p1, p2, v2, v0}, Lorg/fdroid/download/HttpManager;->get(Lorg/fdroid/download/DownloadRequest;Ljava/lang/Long;Lorg/fdroid/download/BytesReceiver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p3

    move-object p2, p1

    .line 207
    :goto_1
    :try_start_2
    sget-object p3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p3, 0x0

    .line 203
    invoke-static {p1, p3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 208
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const-string p2, "toByteArray(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :catchall_1
    move-exception p2

    move-object p1, p3

    .line 203
    :goto_2
    :try_start_3
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p3

    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p3
.end method

.method public final getChannel$download_release(Lorg/fdroid/download/DownloadRequest;Ljava/lang/Long;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fdroid/download/DownloadRequest;",
            "Ljava/lang/Long;",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lorg/fdroid/download/HttpManager;->mirrorChooser:Lorg/fdroid/download/MirrorChooser;

    .line 187
    new-instance v1, Lorg/fdroid/download/HttpManager$getChannel$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lorg/fdroid/download/HttpManager$getChannel$2;-><init>(Lorg/fdroid/download/HttpManager;Lorg/fdroid/download/DownloadRequest;Ljava/lang/Long;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v0, p1, v1, p3}, Lorg/fdroid/download/MirrorChooser;->mirrorRequest(Lorg/fdroid/download/DownloadRequest;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getCurrentProxy$download_release()Ljava/net/Proxy;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/download/HttpManager;->currentProxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public final head(Lorg/fdroid/download/DownloadRequest;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fdroid/download/DownloadRequest;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fdroid/download/NotFoundException;
        }
    .end annotation

    instance-of v0, p3, Lorg/fdroid/download/HttpManager$head$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lorg/fdroid/download/HttpManager$head$1;

    iget v1, v0, Lorg/fdroid/download/HttpManager$head$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/fdroid/download/HttpManager$head$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/fdroid/download/HttpManager$head$1;

    invoke-direct {v0, p0, p3}, Lorg/fdroid/download/HttpManager$head$1;-><init>(Lorg/fdroid/download/HttpManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lorg/fdroid/download/HttpManager$head$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 106
    iget v2, v0, Lorg/fdroid/download/HttpManager$head$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Lorg/fdroid/download/HttpManager$head$1;->L$0:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Ljava/lang/String;

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lio/ktor/client/plugins/ResponseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_1
    iget-object p3, p0, Lorg/fdroid/download/HttpManager;->mirrorChooser:Lorg/fdroid/download/MirrorChooser;

    .line 108
    new-instance v2, Lorg/fdroid/download/HttpManager$head$response$1;

    invoke-direct {v2, p0, p1, v3}, Lorg/fdroid/download/HttpManager$head$response$1;-><init>(Lorg/fdroid/download/HttpManager;Lorg/fdroid/download/DownloadRequest;Lkotlin/coroutines/Continuation;)V

    iput-object p2, v0, Lorg/fdroid/download/HttpManager$head$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lorg/fdroid/download/HttpManager$head$1;->label:I

    invoke-interface {p3, p1, v2, v0}, Lorg/fdroid/download/MirrorChooser;->mirrorRequest(Lorg/fdroid/download/DownloadRequest;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p3, Lio/ktor/client/statement/HttpResponse;
    :try_end_1
    .catch Lio/ktor/client/plugins/ResponseException; {:try_start_1 .. :try_end_1} :catch_0

    .line 124
    invoke-static {p3}, Lio/ktor/http/HttpMessagePropertiesKt;->contentLength(Lio/ktor/http/HttpMessage;)Ljava/lang/Long;

    move-result-object p1

    .line 125
    invoke-interface {p3}, Lio/ktor/http/HttpMessage;->getHeaders()Lio/ktor/http/Headers;

    move-result-object v0

    sget-object v1, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v1}, Lio/ktor/http/HttpHeaders;->getLastModified()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/ktor/util/StringValues;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_4

    .line 126
    invoke-interface {p3}, Lio/ktor/http/HttpMessage;->getHeaders()Lio/ktor/http/Headers;

    move-result-object v2

    invoke-virtual {v1}, Lio/ktor/http/HttpHeaders;->getETag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/ktor/util/StringValues;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 127
    new-instance p2, Lorg/fdroid/download/HeadInfo;

    invoke-interface {p3}, Lio/ktor/http/HttpMessage;->getHeaders()Lio/ktor/http/Headers;

    move-result-object p3

    invoke-virtual {v1}, Lio/ktor/http/HttpHeaders;->getETag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Lio/ktor/util/StringValues;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x0

    invoke-direct {p2, v1, p3, p1, v0}, Lorg/fdroid/download/HeadInfo;-><init>(ZLjava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    return-object p2

    .line 129
    :cond_4
    new-instance p2, Lorg/fdroid/download/HeadInfo;

    invoke-interface {p3}, Lio/ktor/http/HttpMessage;->getHeaders()Lio/ktor/http/Headers;

    move-result-object p3

    invoke-virtual {v1}, Lio/ktor/http/HttpHeaders;->getETag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Lio/ktor/util/StringValues;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, v4, p3, p1, v0}, Lorg/fdroid/download/HeadInfo;-><init>(ZLjava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    return-object p2

    :goto_2
    sget-object p2, Lorg/fdroid/download/HttpManager;->log:Lmu/KLogger;

    .line 120
    new-instance p3, Lorg/fdroid/download/HttpManager$head$response$2;

    invoke-direct {p3, p1}, Lorg/fdroid/download/HttpManager$head$response$2;-><init>(Lio/ktor/client/plugins/ResponseException;)V

    invoke-interface {p2, p3}, Lmu/KLogger;->warn(Lkotlin/jvm/functions/Function0;)V

    .line 121
    invoke-virtual {p1}, Lio/ktor/client/plugins/ResponseException;->getResponse()Lio/ktor/client/statement/HttpResponse;

    move-result-object p1

    invoke-virtual {p1}, Lio/ktor/client/statement/HttpResponse;->getStatus()Lio/ktor/http/HttpStatusCode;

    move-result-object p1

    sget-object p2, Lio/ktor/http/HttpStatusCode;->Companion:Lio/ktor/http/HttpStatusCode$Companion;

    invoke-virtual {p2}, Lio/ktor/http/HttpStatusCode$Companion;->getNotFound()Lio/ktor/http/HttpStatusCode;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return-object v3

    :cond_5
    new-instance p1, Lorg/fdroid/download/NotFoundException;

    invoke-direct {p1, v3, v4, v3}, Lorg/fdroid/download/NotFoundException;-><init>(Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1
.end method

.method public final post(Ljava/lang/String;Ljava/lang/String;Ljava/net/Proxy;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/net/Proxy;",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 212
    invoke-static {p0, p3, v1, v0, v1}, Lorg/fdroid/download/HttpManager;->resetProxyIfNeeded$default(Lorg/fdroid/download/HttpManager;Ljava/net/Proxy;Lorg/fdroid/download/Mirror;ILjava/lang/Object;)V

    iget-object p3, p0, Lorg/fdroid/download/HttpManager;->httpClient:Lio/ktor/client/HttpClient;

    .line 233
    new-instance v0, Lio/ktor/client/request/HttpRequestBuilder;

    invoke-direct {v0}, Lio/ktor/client/request/HttpRequestBuilder;-><init>()V

    .line 214
    invoke-direct {p0, v0}, Lorg/fdroid/download/HttpManager;->addQueryParameters(Lio/ktor/client/request/HttpRequestBuilder;)V

    .line 215
    invoke-static {v0, p1}, Lio/ktor/client/request/HttpRequestKt;->url(Lio/ktor/client/request/HttpRequestBuilder;Ljava/lang/String;)V

    .line 216
    sget-object p1, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {p1}, Lio/ktor/http/HttpHeaders;->getContentType()Ljava/lang/String;

    move-result-object p1

    const-string v2, "application/json; utf-8"

    invoke-static {v0, p1, v2}, Lio/ktor/client/request/UtilsKt;->header(Lio/ktor/http/HttpMessageBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    const-class p1, Ljava/lang/String;

    if-nez p2, :cond_0

    .line 18
    sget-object p2, Lio/ktor/http/content/NullBody;->INSTANCE:Lio/ktor/http/content/NullBody;

    invoke-virtual {v0, p2}, Lio/ktor/client/request/HttpRequestBuilder;->setBody(Ljava/lang/Object;)V

    .line 19
    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object p2

    .line 18
    invoke-static {p2}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 19
    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-static {v1, p1, p2}, Lio/ktor/util/reflect/TypeInfoJvmKt;->typeInfoImpl(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object p1

    .line 19
    invoke-virtual {v0, p1}, Lio/ktor/client/request/HttpRequestBuilder;->setBodyType(Lio/ktor/util/reflect/TypeInfo;)V

    goto :goto_0

    .line 21
    :cond_0
    instance-of v2, p2, Lio/ktor/http/content/OutgoingContent;

    if-eqz v2, :cond_1

    .line 22
    invoke-virtual {v0, p2}, Lio/ktor/client/request/HttpRequestBuilder;->setBody(Ljava/lang/Object;)V

    .line 23
    invoke-virtual {v0, v1}, Lio/ktor/client/request/HttpRequestBuilder;->setBodyType(Lio/ktor/util/reflect/TypeInfo;)V

    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {v0, p2}, Lio/ktor/client/request/HttpRequestBuilder;->setBody(Ljava/lang/Object;)V

    .line 27
    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object p2

    .line 18
    invoke-static {p2}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 19
    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-static {v1, p1, p2}, Lio/ktor/util/reflect/TypeInfoJvmKt;->typeInfoImpl(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object p1

    .line 27
    invoke-virtual {v0, p1}, Lio/ktor/client/request/HttpRequestBuilder;->setBodyType(Lio/ktor/util/reflect/TypeInfo;)V

    .line 109
    :goto_0
    sget-object p1, Lio/ktor/http/HttpMethod;->Companion:Lio/ktor/http/HttpMethod$Companion;

    invoke-virtual {p1}, Lio/ktor/http/HttpMethod$Companion;->getPost()Lio/ktor/http/HttpMethod;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/ktor/client/request/HttpRequestBuilder;->setMethod(Lio/ktor/http/HttpMethod;)V

    .line 22
    new-instance p1, Lio/ktor/client/statement/HttpStatement;

    invoke-direct {p1, v0, p3}, Lio/ktor/client/statement/HttpStatement;-><init>(Lio/ktor/client/request/HttpRequestBuilder;Lio/ktor/client/HttpClient;)V

    invoke-virtual {p1, p4}, Lio/ktor/client/statement/HttpStatement;->execute(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_2

    return-object p1

    .line 233
    :cond_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
