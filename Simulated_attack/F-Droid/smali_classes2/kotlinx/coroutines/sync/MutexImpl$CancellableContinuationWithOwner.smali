.class final Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner;
.super Ljava/lang/Object;
.source "Mutex.kt"

# interfaces
.implements Lkotlinx/coroutines/CancellableContinuation;
.implements Lkotlinx/coroutines/Waiter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/sync/MutexImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CancellableContinuationWithOwner"
.end annotation


# instance fields
.field public final cont:Lkotlinx/coroutines/CancellableContinuationImpl;

.field public final owner:Ljava/lang/Object;

.field final synthetic this$0:Lkotlinx/coroutines/sync/MutexImpl;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/sync/MutexImpl;Lkotlinx/coroutines/CancellableContinuationImpl;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner;->this$0:Lkotlinx/coroutines/sync/MutexImpl;

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner;->cont:Lkotlinx/coroutines/CancellableContinuationImpl;

    iput-object p3, p0, Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner;->owner:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public cancel(Ljava/lang/Throwable;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner;->cont:Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->cancel(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public completeResume(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner;->cont:Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->completeResume(Ljava/lang/Object;)V

    return-void
.end method

.method public getContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 0
    iget-object v0, p0, Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner;->cont:Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    return-object v0
.end method

.method public invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner;->cont:Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public invokeOnCancellation(Lkotlinx/coroutines/internal/Segment;I)V
    .locals 1

    .line 0
    iget-object v0, p0, Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner;->cont:Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-virtual {v0, p1, p2}, Lkotlinx/coroutines/CancellableContinuationImpl;->invokeOnCancellation(Lkotlinx/coroutines/internal/Segment;I)V

    return-void
.end method

.method public isCancelled()Z
    .locals 1

    .line 0
    iget-object v0, p0, Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner;->cont:Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic resume(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 244
    check-cast p1, Lkotlin/Unit;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner;->resume(Lkotlin/Unit;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public resume(Lkotlin/Unit;Lkotlin/jvm/functions/Function1;)V
    .locals 2

    .line 265
    invoke-static {}, Lkotlinx/coroutines/sync/MutexImpl;->access$getOwner$FU$p()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object p2

    iget-object v0, p0, Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner;->this$0:Lkotlinx/coroutines/sync/MutexImpl;

    iget-object v1, p0, Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner;->owner:Ljava/lang/Object;

    .line 266
    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p2, p0, Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner;->cont:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 267
    new-instance v0, Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner$resume$2;

    iget-object v1, p0, Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner;->this$0:Lkotlinx/coroutines/sync/MutexImpl;

    invoke-direct {v0, v1, p0}, Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner$resume$2;-><init>(Lkotlinx/coroutines/sync/MutexImpl;Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner;)V

    invoke-virtual {p2, p1, v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->resume(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public bridge synthetic resumeUndispatched(Lkotlinx/coroutines/CoroutineDispatcher;Ljava/lang/Object;)V
    .locals 0

    .line 244
    check-cast p2, Lkotlin/Unit;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner;->resumeUndispatched(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlin/Unit;)V

    return-void
.end method

.method public resumeUndispatched(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlin/Unit;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner;->cont:Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-virtual {v0, p1, p2}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeUndispatched(Lkotlinx/coroutines/CoroutineDispatcher;Ljava/lang/Object;)V

    return-void
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner;->cont:Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic tryResume(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 0

    .line 244
    check-cast p1, Lkotlin/Unit;

    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner;->tryResume(Lkotlin/Unit;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public tryResume(Lkotlin/Unit;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 2

    iget-object p3, p0, Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner;->this$0:Lkotlinx/coroutines/sync/MutexImpl;

    iget-object v0, p0, Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner;->cont:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 252
    new-instance v1, Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner$tryResume$token$1;

    invoke-direct {v1, p3, p0}, Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner$tryResume$token$1;-><init>(Lkotlinx/coroutines/sync/MutexImpl;Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner;)V

    invoke-virtual {v0, p1, p2, v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->tryResume(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 258
    invoke-static {}, Lkotlinx/coroutines/sync/MutexImpl;->access$getOwner$FU$p()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object p2

    iget-object p3, p0, Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner;->this$0:Lkotlinx/coroutines/sync/MutexImpl;

    iget-object v0, p0, Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner;->owner:Ljava/lang/Object;

    .line 259
    invoke-virtual {p2, p3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-object p1
.end method
