.class public final Lio/ktor/utils/io/internal/CancellableReusableContinuation;
.super Ljava/lang/Object;
.source "CancellableReusableContinuation.kt"

# interfaces
.implements Lkotlin/coroutines/Continuation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/utils/io/internal/CancellableReusableContinuation$JobRelation;
    }
.end annotation


# static fields
.field private static final synthetic jobCancellationHandler$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final synthetic state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic jobCancellationHandler:Ljava/lang/Object;

.field private volatile synthetic state:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 0
    const-string v0, "state"

    const-class v1, Lio/ktor/utils/io/internal/CancellableReusableContinuation;

    const-class v2, Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/ktor/utils/io/internal/CancellableReusableContinuation;->state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "jobCancellationHandler"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/ktor/utils/io/internal/CancellableReusableContinuation;->jobCancellationHandler$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/ktor/utils/io/internal/CancellableReusableContinuation;->state:Ljava/lang/Object;

    iput-object v0, p0, Lio/ktor/utils/io/internal/CancellableReusableContinuation;->jobCancellationHandler:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic access$notParent(Lio/ktor/utils/io/internal/CancellableReusableContinuation;Lio/ktor/utils/io/internal/CancellableReusableContinuation$JobRelation;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lio/ktor/utils/io/internal/CancellableReusableContinuation;->notParent(Lio/ktor/utils/io/internal/CancellableReusableContinuation$JobRelation;)V

    return-void
.end method

.method public static final synthetic access$resumeWithExceptionContinuationOnly(Lio/ktor/utils/io/internal/CancellableReusableContinuation;Lkotlinx/coroutines/Job;Ljava/lang/Throwable;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lio/ktor/utils/io/internal/CancellableReusableContinuation;->resumeWithExceptionContinuationOnly(Lkotlinx/coroutines/Job;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final notParent(Lio/ktor/utils/io/internal/CancellableReusableContinuation$JobRelation;)V
    .locals 2

    sget-object v0, Lio/ktor/utils/io/internal/CancellableReusableContinuation;->jobCancellationHandler$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    .line 75
    invoke-static {v0, p0, p1, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method private final parent(Lkotlin/coroutines/CoroutineContext;)V
    .locals 4

    .line 53
    sget-object v0, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    invoke-interface {p1, v0}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/Job;

    iget-object v0, p0, Lio/ktor/utils/io/internal/CancellableReusableContinuation;->jobCancellationHandler:Ljava/lang/Object;

    .line 54
    check-cast v0, Lio/ktor/utils/io/internal/CancellableReusableContinuation$JobRelation;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/ktor/utils/io/internal/CancellableReusableContinuation$JobRelation;->getJob()Lkotlinx/coroutines/Job;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    if-nez p1, :cond_2

    sget-object p1, Lio/ktor/utils/io/internal/CancellableReusableContinuation;->jobCancellationHandler$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 57
    invoke-virtual {p1, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/ktor/utils/io/internal/CancellableReusableContinuation$JobRelation;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lio/ktor/utils/io/internal/CancellableReusableContinuation$JobRelation;->dispose()V

    goto :goto_2

    .line 59
    :cond_2
    new-instance v0, Lio/ktor/utils/io/internal/CancellableReusableContinuation$JobRelation;

    invoke-direct {v0, p0, p1}, Lio/ktor/utils/io/internal/CancellableReusableContinuation$JobRelation;-><init>(Lio/ktor/utils/io/internal/CancellableReusableContinuation;Lkotlinx/coroutines/Job;)V

    :cond_3
    iget-object v1, p0, Lio/ktor/utils/io/internal/CancellableReusableContinuation;->jobCancellationHandler:Ljava/lang/Object;

    .line 140
    move-object v2, v1

    check-cast v2, Lio/ktor/utils/io/internal/CancellableReusableContinuation$JobRelation;

    if-nez v2, :cond_4

    goto :goto_1

    .line 63
    :cond_4
    invoke-virtual {v2}, Lio/ktor/utils/io/internal/CancellableReusableContinuation$JobRelation;->getJob()Lkotlinx/coroutines/Job;

    move-result-object v3

    if-ne v3, p1, :cond_5

    .line 64
    invoke-virtual {v0}, Lio/ktor/utils/io/internal/CancellableReusableContinuation$JobRelation;->dispose()V

    return-void

    :cond_5
    :goto_1
    sget-object v3, Lio/ktor/utils/io/internal/CancellableReusableContinuation;->jobCancellationHandler$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 141
    invoke-static {v3, p0, v1, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v2, :cond_6

    .line 70
    invoke-virtual {v2}, Lio/ktor/utils/io/internal/CancellableReusableContinuation$JobRelation;->dispose()V

    :cond_6
    :goto_2
    return-void
.end method

.method private final resumeWithExceptionContinuationOnly(Lkotlinx/coroutines/Job;Ljava/lang/Throwable;)V
    .locals 4

    :cond_0
    iget-object v0, p0, Lio/ktor/utils/io/internal/CancellableReusableContinuation;->state:Ljava/lang/Object;

    .line 100
    instance-of v1, v0, Lkotlin/coroutines/Continuation;

    if-nez v1, :cond_1

    return-void

    .line 101
    :cond_1
    move-object v1, v0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-interface {v1}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    sget-object v3, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    invoke-interface {v2, v3}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v2

    if-eq v2, p1, :cond_2

    return-void

    :cond_2
    const/4 v2, 0x0

    sget-object v3, Lio/ktor/utils/io/internal/CancellableReusableContinuation;->state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 149
    invoke-static {v3, p0, v0, v2}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p1, "null cannot be cast to non-null type kotlin.coroutines.Continuation<T of io.ktor.utils.io.internal.CancellableReusableContinuation>"

    .line 99
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v1, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final close(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    sget-object p1, Lio/ktor/utils/io/internal/CancellableReusableContinuation;->jobCancellationHandler$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v0, 0x0

    .line 20
    invoke-virtual {p1, p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/ktor/utils/io/internal/CancellableReusableContinuation$JobRelation;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lio/ktor/utils/io/internal/CancellableReusableContinuation$JobRelation;->dispose()V

    :cond_0
    return-void
.end method

.method public final close(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "cause"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    sget-object p1, Lio/ktor/utils/io/internal/CancellableReusableContinuation;->jobCancellationHandler$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v0, 0x0

    .line 25
    invoke-virtual {p1, p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/ktor/utils/io/internal/CancellableReusableContinuation$JobRelation;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lio/ktor/utils/io/internal/CancellableReusableContinuation$JobRelation;->dispose()V

    :cond_0
    return-void
.end method

.method public final completeSuspendBlock(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    const-string v0, "actual"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lio/ktor/utils/io/internal/CancellableReusableContinuation;->state:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    sget-object v0, Lio/ktor/utils/io/internal/CancellableReusableContinuation;->state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 38
    invoke-static {v0, p0, v1, p1}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    invoke-interface {p1}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/ktor/utils/io/internal/CancellableReusableContinuation;->parent(Lkotlin/coroutines/CoroutineContext;)V

    .line 40
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    sget-object v2, Lio/ktor/utils/io/internal/CancellableReusableContinuation;->state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 43
    invoke-static {v2, p0, v0, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    instance-of p1, v0, Ljava/lang/Throwable;

    if-nez p1, :cond_2

    const-string p1, "null cannot be cast to non-null type T of io.ktor.utils.io.internal.CancellableReusableContinuation"

    .line 46
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 44
    :cond_2
    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public getContext()Lkotlin/coroutines/CoroutineContext;
    .locals 2

    iget-object v0, p0, Lio/ktor/utils/io/internal/CancellableReusableContinuation;->state:Ljava/lang/Object;

    .line 79
    instance-of v1, v0, Lkotlin/coroutines/Continuation;

    if-eqz v1, :cond_0

    check-cast v0, Lkotlin/coroutines/Continuation;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    :cond_2
    return-object v0
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 3

    :cond_0
    iget-object v0, p0, Lio/ktor/utils/io/internal/CancellableReusableContinuation;->state:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 84
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p1

    goto :goto_0

    .line 85
    :cond_1
    instance-of v1, v0, Lkotlin/coroutines/Continuation;

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    :cond_2
    :goto_0
    sget-object v2, Lio/ktor/utils/io/internal/CancellableReusableContinuation;->state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 145
    invoke-static {v2, p0, v0, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    instance-of v1, v0, Lkotlin/coroutines/Continuation;

    if-eqz v1, :cond_3

    .line 92
    check-cast v0, Lkotlin/coroutines/Continuation;

    .line 93
    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method
