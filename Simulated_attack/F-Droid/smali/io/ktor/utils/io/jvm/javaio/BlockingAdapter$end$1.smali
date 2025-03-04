.class public final Lio/ktor/utils/io/jvm/javaio/BlockingAdapter$end$1;
.super Ljava/lang/Object;
.source "Blocking.kt"

# interfaces
.implements Lkotlin/coroutines/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;-><init>(Lkotlinx/coroutines/Job;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private final context:Lkotlin/coroutines/CoroutineContext;

.field final synthetic this$0:Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;


# direct methods
.method constructor <init>(Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;)V
    .locals 1

    iput-object p1, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter$end$1;->this$0:Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    invoke-virtual {p1}, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->getParent()Lkotlinx/coroutines/Job;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lio/ktor/utils/io/jvm/javaio/UnsafeBlockingTrampoline;->INSTANCE:Lio/ktor/utils/io/jvm/javaio/UnsafeBlockingTrampoline;

    invoke-virtual {p1}, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->getParent()Lkotlinx/coroutines/Job;

    move-result-object p1

    invoke-virtual {v0, p1}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Lio/ktor/utils/io/jvm/javaio/UnsafeBlockingTrampoline;->INSTANCE:Lio/ktor/utils/io/jvm/javaio/UnsafeBlockingTrampoline;

    :goto_0
    iput-object p1, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter$end$1;->context:Lkotlin/coroutines/CoroutineContext;

    return-void
.end method


# virtual methods
.method public getContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter$end$1;->context:Lkotlin/coroutines/CoroutineContext;

    return-object v0
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 5

    .line 146
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_0
    iget-object v1, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter$end$1;->this$0:Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;

    .line 318
    :cond_1
    iget-object v2, v1, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->state:Ljava/lang/Object;

    .line 150
    instance-of v3, v2, Ljava/lang/Thread;

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    instance-of v4, v2, Lkotlin/coroutines/Continuation;

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 320
    :goto_0
    sget-object v4, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v4, v1, v2, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v3, :cond_4

    .line 156
    invoke-static {}, Lio/ktor/utils/io/jvm/javaio/PollersKt;->getParkingImpl()Lio/ktor/utils/io/jvm/javaio/Parking;

    move-result-object v0

    invoke-interface {v0, v2}, Lio/ktor/utils/io/jvm/javaio/Parking;->unpark(Ljava/lang/Object;)V

    goto :goto_1

    .line 157
    :cond_4
    instance-of v0, v2, Lkotlin/coroutines/Continuation;

    if-eqz v0, :cond_5

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 158
    check-cast v2, Lkotlin/coroutines/Continuation;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 162
    :cond_5
    :goto_1
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_6

    iget-object p1, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter$end$1;->this$0:Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;

    .line 163
    invoke-virtual {p1}, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->getParent()Lkotlinx/coroutines/Job;

    move-result-object p1

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_6
    iget-object p1, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter$end$1;->this$0:Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;

    .line 166
    invoke-static {p1}, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->access$getDisposable$p(Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    :cond_7
    return-void
.end method
