.class abstract Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;
.super Ljava/lang/Object;
.source "Blocking.kt"


# static fields
.field static final synthetic state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private final disposable:Lkotlinx/coroutines/DisposableHandle;

.field private final end:Lkotlin/coroutines/Continuation;

.field private length:I

.field private offset:I

.field private final parent:Lkotlinx/coroutines/Job;

.field volatile synthetic result:I

.field volatile synthetic state:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 0
    const-class v0, Ljava/lang/Object;

    const-string v1, "state"

    const-class v2, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/Job;)V
    .locals 3

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->parent:Lkotlinx/coroutines/Job;

    .line 141
    new-instance v0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter$end$1;

    invoke-direct {v0, p0}, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter$end$1;-><init>(Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;)V

    iput-object v0, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->end:Lkotlin/coroutines/Continuation;

    iput-object p0, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->state:Ljava/lang/Object;

    const/4 v1, 0x0

    iput v1, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->result:I

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 174
    new-instance v2, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter$disposable$1;

    invoke-direct {v2, p0}, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter$disposable$1;-><init>(Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;)V

    invoke-interface {p1, v2}, Lkotlinx/coroutines/Job;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    iput-object p1, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->disposable:Lkotlinx/coroutines/DisposableHandle;

    .line 186
    new-instance p1, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter$block$1;

    invoke-direct {p1, p0, v1}, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter$block$1;-><init>(Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x1

    .line 187
    invoke-static {p1, v1}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->state:Ljava/lang/Object;

    if-eq p1, p0, :cond_1

    return-void

    .line 188
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final synthetic access$getDisposable$p(Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;)Lkotlinx/coroutines/DisposableHandle;
    .locals 0

    .line 139
    iget-object p0, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->disposable:Lkotlinx/coroutines/DisposableHandle;

    return-object p0
.end method

.method public static final synthetic access$getEnd$p(Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;)Lkotlin/coroutines/Continuation;
    .locals 0

    .line 139
    iget-object p0, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->end:Lkotlin/coroutines/Continuation;

    return-object p0
.end method

.method public static final synthetic access$rendezvousBlock(Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 139
    invoke-direct {p0, p1}, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->rendezvousBlock(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final parkingLoop(Ljava/lang/Thread;)V
    .locals 4

    iget-object v0, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->state:Ljava/lang/Object;

    if-eq v0, p1, :cond_0

    return-void

    .line 247
    :cond_0
    invoke-static {}, Lio/ktor/utils/io/jvm/javaio/PollersKt;->isParkingAllowed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 248
    invoke-static {}, Lio/ktor/utils/io/jvm/javaio/BlockingKt;->access$getADAPTER_LOGGER()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Blocking network thread detected. \nIt can possible lead to a performance decline or even a deadlock.\nPlease make sure you\'re using blocking IO primitives like InputStream and OutputStream only in \nthe context of Dispatchers.IO:\n```\nwithContext(Dispatchers.IO) {\n    myInputStream.read()\n}\n```"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 264
    :cond_1
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/EventLoopKt;->processNextEventInCurrentThread()J

    move-result-wide v0

    iget-object v2, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->state:Ljava/lang/Object;

    if-ne v2, p1, :cond_2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 268
    invoke-static {}, Lio/ktor/utils/io/jvm/javaio/PollersKt;->getParkingImpl()Lio/ktor/utils/io/jvm/javaio/Parking;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lio/ktor/utils/io/jvm/javaio/Parking;->park(J)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private final rendezvousBlock(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->state:Ljava/lang/Object;

    .line 287
    instance-of v2, v1, Ljava/lang/Thread;

    if-eqz v2, :cond_0

    .line 289
    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    move-object v2, v1

    goto :goto_1

    .line 292
    :cond_0
    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v2

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    :goto_1
    sget-object v3, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 324
    invoke-static {v3, p0, v1, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v2, :cond_1

    .line 298
    invoke-static {}, Lio/ktor/utils/io/jvm/javaio/PollersKt;->getParkingImpl()Lio/ktor/utils/io/jvm/javaio/Parking;

    move-result-object p1

    invoke-interface {p1, v2}, Lio/ktor/utils/io/jvm/javaio/Parking;->unpark(Ljava/lang/Object;)V

    .line 301
    :cond_1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    move-object v0, v2

    goto :goto_0

    .line 293
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already suspended or in finished state"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected final finish(I)V
    .locals 0

    .line 0
    iput p1, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->result:I

    return-void
.end method

.method protected final getLength()I
    .locals 1

    .line 0
    iget v0, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->length:I

    return v0
.end method

.method protected final getOffset()I
    .locals 1

    .line 0
    iget v0, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->offset:I

    return v0
.end method

.method public final getParent()Lkotlinx/coroutines/Job;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->parent:Lkotlinx/coroutines/Job;

    return-object v0
.end method

.method protected abstract loop(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method

.method public final shutdown()V
    .locals 3

    iget-object v0, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->disposable:Lkotlinx/coroutines/DisposableHandle;

    if-eqz v0, :cond_0

    .line 194
    invoke-interface {v0}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    :cond_0
    iget-object v0, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->end:Lkotlin/coroutines/Continuation;

    .line 195
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v1, Ljava/util/concurrent/CancellationException;

    const-string v2, "Stream closed"

    invoke-direct {v1, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public final submitAndAwait(Ljava/lang/Object;)I
    .locals 5

    const-string v0, "jobToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    iget-object v2, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->state:Ljava/lang/Object;

    .line 211
    instance-of v3, v2, Lkotlin/coroutines/Continuation;

    if-eqz v3, :cond_1

    const-string v1, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any>"

    .line 213
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v2

    check-cast v1, Lkotlin/coroutines/Continuation;

    move-object v3, v0

    goto :goto_0

    .line 217
    :cond_1
    instance-of v3, v2, Lkotlin/Unit;

    if-eqz v3, :cond_2

    iget p1, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->result:I

    return p1

    .line 221
    :cond_2
    instance-of v3, v2, Ljava/lang/Throwable;

    if-nez v3, :cond_6

    .line 225
    instance-of v3, v2, Ljava/lang/Thread;

    if-nez v3, :cond_5

    .line 226
    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 227
    new-instance v3, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v3}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    :goto_0
    const-string v4, "when (value) {\n         \u2026Exception()\n            }"

    .line 225
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 320
    invoke-static {v4, p0, v2, v3}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 231
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v1, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    const-string p1, "thread"

    .line 233
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->parkingLoop(Ljava/lang/Thread;)V

    iget-object p1, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->state:Ljava/lang/Object;

    .line 236
    instance-of v0, p1, Ljava/lang/Throwable;

    if-nez v0, :cond_3

    iget p1, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->result:I

    return p1

    .line 237
    :cond_3
    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 226
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Not yet started"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 225
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "There is already thread owning adapter"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 222
    :cond_6
    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method public final submitAndAwait([BII)I
    .locals 1

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput p2, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->offset:I

    iput p3, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->length:I

    .line 201
    invoke-virtual {p0, p1}, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->submitAndAwait(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
