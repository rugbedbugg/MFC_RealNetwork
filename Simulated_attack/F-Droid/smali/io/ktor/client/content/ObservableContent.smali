.class public final Lio/ktor/client/content/ObservableContent;
.super Lio/ktor/http/content/OutgoingContent$ReadChannelContent;
.source "ObservableContent.kt"


# instance fields
.field private final callContext:Lkotlin/coroutines/CoroutineContext;

.field private final content:Lio/ktor/utils/io/ByteReadChannel;

.field private final delegate:Lio/ktor/http/content/OutgoingContent;

.field private final listener:Lkotlin/jvm/functions/Function3;


# direct methods
.method public constructor <init>(Lio/ktor/http/content/OutgoingContent;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function3;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Lio/ktor/http/content/OutgoingContent$ReadChannelContent;-><init>()V

    iput-object p1, p0, Lio/ktor/client/content/ObservableContent;->delegate:Lio/ktor/http/content/OutgoingContent;

    iput-object p2, p0, Lio/ktor/client/content/ObservableContent;->callContext:Lkotlin/coroutines/CoroutineContext;

    iput-object p3, p0, Lio/ktor/client/content/ObservableContent;->listener:Lkotlin/jvm/functions/Function3;

    .line 31
    instance-of p2, p1, Lio/ktor/http/content/OutgoingContent$ByteArrayContent;

    if-eqz p2, :cond_0

    check-cast p1, Lio/ktor/http/content/OutgoingContent$ByteArrayContent;

    invoke-virtual {p1}, Lio/ktor/http/content/OutgoingContent$ByteArrayContent;->bytes()[B

    move-result-object p1

    invoke-static {p1}, Lio/ktor/utils/io/ByteChannelCtorKt;->ByteReadChannel([B)Lio/ktor/utils/io/ByteReadChannel;

    move-result-object p1

    goto :goto_0

    .line 33
    :cond_0
    instance-of p2, p1, Lio/ktor/http/content/OutgoingContent$NoContent;

    if-eqz p2, :cond_1

    sget-object p1, Lio/ktor/utils/io/ByteReadChannel;->Companion:Lio/ktor/utils/io/ByteReadChannel$Companion;

    invoke-virtual {p1}, Lio/ktor/utils/io/ByteReadChannel$Companion;->getEmpty()Lio/ktor/utils/io/ByteReadChannel;

    move-result-object p1

    goto :goto_0

    .line 34
    :cond_1
    instance-of p2, p1, Lio/ktor/http/content/OutgoingContent$ReadChannelContent;

    if-eqz p2, :cond_2

    check-cast p1, Lio/ktor/http/content/OutgoingContent$ReadChannelContent;

    invoke-virtual {p1}, Lio/ktor/http/content/OutgoingContent$ReadChannelContent;->readFrom()Lio/ktor/utils/io/ByteReadChannel;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lio/ktor/client/content/ObservableContent;->content:Lio/ktor/utils/io/ByteReadChannel;

    return-void

    .line 37
    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method


# virtual methods
.method public getContentLength()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lio/ktor/client/content/ObservableContent;->delegate:Lio/ktor/http/content/OutgoingContent;

    .line 43
    invoke-virtual {v0}, Lio/ktor/http/content/OutgoingContent;->getContentLength()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Lio/ktor/http/ContentType;
    .locals 1

    iget-object v0, p0, Lio/ktor/client/content/ObservableContent;->delegate:Lio/ktor/http/content/OutgoingContent;

    .line 41
    invoke-virtual {v0}, Lio/ktor/http/content/OutgoingContent;->getContentType()Lio/ktor/http/ContentType;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()Lio/ktor/http/Headers;
    .locals 1

    iget-object v0, p0, Lio/ktor/client/content/ObservableContent;->delegate:Lio/ktor/http/content/OutgoingContent;

    .line 47
    invoke-virtual {v0}, Lio/ktor/http/content/OutgoingContent;->getHeaders()Lio/ktor/http/Headers;

    move-result-object v0

    return-object v0
.end method

.method public readFrom()Lio/ktor/utils/io/ByteReadChannel;
    .locals 4

    iget-object v0, p0, Lio/ktor/client/content/ObservableContent;->content:Lio/ktor/utils/io/ByteReadChannel;

    iget-object v1, p0, Lio/ktor/client/content/ObservableContent;->callContext:Lkotlin/coroutines/CoroutineContext;

    .line 52
    invoke-virtual {p0}, Lio/ktor/client/content/ObservableContent;->getContentLength()Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lio/ktor/client/content/ObservableContent;->listener:Lkotlin/jvm/functions/Function3;

    invoke-static {v0, v1, v2, v3}, Lio/ktor/client/utils/ByteChannelUtilsKt;->observable(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/CoroutineContext;Ljava/lang/Long;Lkotlin/jvm/functions/Function3;)Lio/ktor/utils/io/ByteReadChannel;

    move-result-object v0

    return-object v0
.end method
