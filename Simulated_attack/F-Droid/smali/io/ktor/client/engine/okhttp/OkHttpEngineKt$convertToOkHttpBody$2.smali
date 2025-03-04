.class final Lio/ktor/client/engine/okhttp/OkHttpEngineKt$convertToOkHttpBody$2;
.super Lkotlin/jvm/internal/Lambda;
.source "OkHttpEngine.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/engine/okhttp/OkHttpEngineKt;->convertToOkHttpBody(Lio/ktor/http/content/OutgoingContent;Lkotlin/coroutines/CoroutineContext;)Lokhttp3/RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $this_convertToOkHttpBody:Lio/ktor/http/content/OutgoingContent;


# direct methods
.method constructor <init>(Lio/ktor/http/content/OutgoingContent;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lio/ktor/client/engine/okhttp/OkHttpEngineKt$convertToOkHttpBody$2;->$this_convertToOkHttpBody:Lio/ktor/http/content/OutgoingContent;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lio/ktor/utils/io/ByteReadChannel;
    .locals 1

    iget-object v0, p0, Lio/ktor/client/engine/okhttp/OkHttpEngineKt$convertToOkHttpBody$2;->$this_convertToOkHttpBody:Lio/ktor/http/content/OutgoingContent;

    .line 202
    check-cast v0, Lio/ktor/http/content/OutgoingContent$ReadChannelContent;

    invoke-virtual {v0}, Lio/ktor/http/content/OutgoingContent$ReadChannelContent;->readFrom()Lio/ktor/utils/io/ByteReadChannel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 202
    invoke-virtual {p0}, Lio/ktor/client/engine/okhttp/OkHttpEngineKt$convertToOkHttpBody$2;->invoke()Lio/ktor/utils/io/ByteReadChannel;

    move-result-object v0

    return-object v0
.end method
