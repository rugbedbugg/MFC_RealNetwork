.class public abstract Lio/ktor/client/plugins/observer/DelegatedCallKt;
.super Ljava/lang/Object;
.source "DelegatedCall.kt"


# direct methods
.method public static final wrapWithContent(Lio/ktor/client/call/HttpClientCall;Lio/ktor/utils/io/ByteReadChannel;)Lio/ktor/client/call/HttpClientCall;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    new-instance v0, Lio/ktor/client/plugins/observer/DelegatedCall;

    invoke-virtual {p0}, Lio/ktor/client/call/HttpClientCall;->getClient()Lio/ktor/client/HttpClient;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lio/ktor/client/plugins/observer/DelegatedCall;-><init>(Lio/ktor/client/HttpClient;Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/client/call/HttpClientCall;)V

    return-object v0
.end method
