.class final Lio/ktor/utils/io/ChannelScope;
.super Ljava/lang/Object;
.source "Coroutines.kt"

# interfaces
.implements Lkotlinx/coroutines/CoroutineScope;
.implements Lio/ktor/utils/io/WriterScope;


# instance fields
.field private final synthetic $$delegate_0:Lkotlinx/coroutines/CoroutineScope;

.field private final channel:Lio/ktor/utils/io/ByteChannel;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lio/ktor/utils/io/ByteChannel;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/ktor/utils/io/ChannelScope;->channel:Lio/ktor/utils/io/ByteChannel;

    iput-object p1, p0, Lio/ktor/utils/io/ChannelScope;->$$delegate_0:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method


# virtual methods
.method public getChannel()Lio/ktor/utils/io/ByteChannel;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/utils/io/ChannelScope;->channel:Lio/ktor/utils/io/ByteChannel;

    return-object v0
.end method

.method public bridge synthetic getChannel()Lio/ktor/utils/io/ByteWriteChannel;
    .locals 1

    .line 164
    invoke-virtual {p0}, Lio/ktor/utils/io/ChannelScope;->getChannel()Lio/ktor/utils/io/ByteChannel;

    move-result-object v0

    return-object v0
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/utils/io/ChannelScope;->$$delegate_0:Lkotlinx/coroutines/CoroutineScope;

    invoke-interface {v0}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    return-object v0
.end method
