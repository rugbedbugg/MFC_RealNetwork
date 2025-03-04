.class final Lio/ktor/utils/io/jvm/javaio/InputAdapter;
.super Ljava/io/InputStream;
.source "Blocking.kt"


# instance fields
.field private final channel:Lio/ktor/utils/io/ByteReadChannel;

.field private final context:Lkotlinx/coroutines/CompletableJob;

.field private final loop:Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1;

.field private single:[B


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/Job;Lio/ktor/utils/io/ByteReadChannel;)V
    .locals 1

    const-string v0, "channel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p2, p0, Lio/ktor/utils/io/jvm/javaio/InputAdapter;->channel:Lio/ktor/utils/io/ByteReadChannel;

    .line 31
    invoke-static {p1}, Lkotlinx/coroutines/JobKt;->Job(Lkotlinx/coroutines/Job;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p2

    iput-object p2, p0, Lio/ktor/utils/io/jvm/javaio/InputAdapter;->context:Lkotlinx/coroutines/CompletableJob;

    .line 33
    new-instance p2, Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1;

    invoke-direct {p2, p1, p0}, Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1;-><init>(Lkotlinx/coroutines/Job;Lio/ktor/utils/io/jvm/javaio/InputAdapter;)V

    iput-object p2, p0, Lio/ktor/utils/io/jvm/javaio/InputAdapter;->loop:Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1;

    return-void
.end method

.method public static final synthetic access$getChannel$p(Lio/ktor/utils/io/jvm/javaio/InputAdapter;)Lio/ktor/utils/io/ByteReadChannel;
    .locals 0

    .line 30
    iget-object p0, p0, Lio/ktor/utils/io/jvm/javaio/InputAdapter;->channel:Lio/ktor/utils/io/ByteReadChannel;

    return-object p0
.end method

.method public static final synthetic access$getContext$p(Lio/ktor/utils/io/jvm/javaio/InputAdapter;)Lkotlinx/coroutines/CompletableJob;
    .locals 0

    .line 30
    iget-object p0, p0, Lio/ktor/utils/io/jvm/javaio/InputAdapter;->context:Lkotlinx/coroutines/CompletableJob;

    return-object p0
.end method


# virtual methods
.method public available()I
    .locals 1

    iget-object v0, p0, Lio/ktor/utils/io/jvm/javaio/InputAdapter;->channel:Lio/ktor/utils/io/ByteReadChannel;

    .line 51
    invoke-interface {v0}, Lio/ktor/utils/io/ByteReadChannel;->getAvailableForRead()I

    move-result v0

    return v0
.end method

.method public declared-synchronized close()V
    .locals 3

    monitor-enter p0

    .line 70
    :try_start_0
    invoke-super {p0}, Ljava/io/InputStream;->close()V

    iget-object v0, p0, Lio/ktor/utils/io/jvm/javaio/InputAdapter;->channel:Lio/ktor/utils/io/ByteReadChannel;

    .line 71
    invoke-static {v0}, Lio/ktor/utils/io/ByteReadChannelKt;->cancel(Lio/ktor/utils/io/ByteReadChannel;)Z

    iget-object v0, p0, Lio/ktor/utils/io/jvm/javaio/InputAdapter;->context:Lkotlinx/coroutines/CompletableJob;

    .line 72
    invoke-interface {v0}, Lkotlinx/coroutines/Job;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/ktor/utils/io/jvm/javaio/InputAdapter;->context:Lkotlinx/coroutines/CompletableJob;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 73
    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lio/ktor/utils/io/jvm/javaio/InputAdapter;->loop:Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1;

    .line 75
    invoke-virtual {v0}, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read()I
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/ktor/utils/io/jvm/javaio/InputAdapter;->single:[B

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-array v0, v1, [B

    iput-object v0, p0, Lio/ktor/utils/io/jvm/javaio/InputAdapter;->single:[B

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v2, p0, Lio/ktor/utils/io/jvm/javaio/InputAdapter;->loop:Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1;

    const/4 v3, 0x0

    .line 57
    invoke-virtual {v2, v0, v3, v1}, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->submitAndAwait([BII)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, -0x1

    if-ne v2, v4, :cond_1

    .line 58
    monitor-exit p0

    return v4

    :cond_1
    if-ne v2, v1, :cond_2

    .line 60
    :try_start_1
    aget-byte v0, v0, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/lit16 v0, v0, 0xff

    monitor-exit p0

    return v0

    .line 59
    :cond_2
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a single byte or EOF. Got "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 60
    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read([BII)I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/ktor/utils/io/jvm/javaio/InputAdapter;->loop:Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1;

    .line 65
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, p2, p3}, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->submitAndAwait([BII)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
