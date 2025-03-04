.class public final Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$1$content$1;
.super Lio/ktor/http/content/OutgoingContent$ByteArrayContent;
.source "DefaultTransform.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $body:Ljava/lang/Object;

.field private final contentLength:J

.field private final contentType:Lio/ktor/http/ContentType;


# direct methods
.method constructor <init>(Lio/ktor/http/ContentType;Ljava/lang/Object;)V
    .locals 0

    iput-object p2, p0, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$1$content$1;->$body:Ljava/lang/Object;

    .line 39
    invoke-direct {p0}, Lio/ktor/http/content/OutgoingContent$ByteArrayContent;-><init>()V

    if-nez p1, :cond_0

    .line 40
    sget-object p1, Lio/ktor/http/ContentType$Application;->INSTANCE:Lio/ktor/http/ContentType$Application;

    invoke-virtual {p1}, Lio/ktor/http/ContentType$Application;->getOctetStream()Lio/ktor/http/ContentType;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$1$content$1;->contentType:Lio/ktor/http/ContentType;

    .line 41
    check-cast p2, [B

    array-length p1, p2

    int-to-long p1, p1

    iput-wide p1, p0, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$1$content$1;->contentLength:J

    return-void
.end method


# virtual methods
.method public bytes()[B
    .locals 1

    iget-object v0, p0, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$1$content$1;->$body:Ljava/lang/Object;

    .line 42
    check-cast v0, [B

    return-object v0
.end method

.method public getContentLength()Ljava/lang/Long;
    .locals 2

    iget-wide v0, p0, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$1$content$1;->contentLength:J

    .line 41
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Lio/ktor/http/ContentType;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$1$content$1;->contentType:Lio/ktor/http/ContentType;

    return-object v0
.end method
