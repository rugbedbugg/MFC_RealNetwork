.class public final Lio/ktor/client/plugins/DefaultTransformersJvmKt$platformRequestDefaultTransform$1;
.super Lio/ktor/http/content/OutgoingContent$ReadChannelContent;
.source "DefaultTransformersJvm.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/plugins/DefaultTransformersJvmKt;->platformRequestDefaultTransform(Lio/ktor/http/ContentType;Lio/ktor/client/request/HttpRequestBuilder;Ljava/lang/Object;)Lio/ktor/http/content/OutgoingContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $body:Ljava/lang/Object;

.field private final contentLength:Ljava/lang/Long;

.field private final contentType:Lio/ktor/http/ContentType;


# direct methods
.method constructor <init>(Lio/ktor/client/request/HttpRequestBuilder;Lio/ktor/http/ContentType;Ljava/lang/Object;)V
    .locals 2

    iput-object p3, p0, Lio/ktor/client/plugins/DefaultTransformersJvmKt$platformRequestDefaultTransform$1;->$body:Ljava/lang/Object;

    .line 47
    invoke-direct {p0}, Lio/ktor/http/content/OutgoingContent$ReadChannelContent;-><init>()V

    .line 48
    invoke-virtual {p1}, Lio/ktor/client/request/HttpRequestBuilder;->getHeaders()Lio/ktor/http/HeadersBuilder;

    move-result-object p1

    sget-object p3, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {p3}, Lio/ktor/http/HttpHeaders;->getContentLength()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lio/ktor/util/StringValuesBuilderImpl;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lio/ktor/client/plugins/DefaultTransformersJvmKt$platformRequestDefaultTransform$1;->contentLength:Ljava/lang/Long;

    if-nez p2, :cond_1

    .line 49
    sget-object p1, Lio/ktor/http/ContentType$Application;->INSTANCE:Lio/ktor/http/ContentType$Application;

    invoke-virtual {p1}, Lio/ktor/http/ContentType$Application;->getOctetStream()Lio/ktor/http/ContentType;

    move-result-object p2

    :cond_1
    iput-object p2, p0, Lio/ktor/client/plugins/DefaultTransformersJvmKt$platformRequestDefaultTransform$1;->contentType:Lio/ktor/http/ContentType;

    return-void
.end method


# virtual methods
.method public getContentLength()Ljava/lang/Long;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/client/plugins/DefaultTransformersJvmKt$platformRequestDefaultTransform$1;->contentLength:Ljava/lang/Long;

    return-object v0
.end method

.method public getContentType()Lio/ktor/http/ContentType;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/client/plugins/DefaultTransformersJvmKt$platformRequestDefaultTransform$1;->contentType:Lio/ktor/http/ContentType;

    return-object v0
.end method

.method public readFrom()Lio/ktor/utils/io/ByteReadChannel;
    .locals 3

    iget-object v0, p0, Lio/ktor/client/plugins/DefaultTransformersJvmKt$platformRequestDefaultTransform$1;->$body:Ljava/lang/Object;

    .line 50
    check-cast v0, Ljava/io/InputStream;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {v0, v1, v1, v2, v1}, Lio/ktor/utils/io/jvm/javaio/ReadingKt;->toByteReadChannelWithArrayPool$default(Ljava/io/InputStream;Lkotlin/coroutines/CoroutineContext;Lio/ktor/utils/io/pool/ObjectPool;ILjava/lang/Object;)Lio/ktor/utils/io/ByteReadChannel;

    move-result-object v0

    return-object v0
.end method
