.class final Lkotlinx/coroutines/JobSupport$AwaitContinuation;
.super Lkotlinx/coroutines/CancellableContinuationImpl;
.source "JobSupport.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/JobSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AwaitContinuation"
.end annotation


# instance fields
.field private final job:Lkotlinx/coroutines/JobSupport;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/JobSupport;)V
    .locals 1

    const/4 v0, 0x1

    .line 1165
    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    iput-object p2, p0, Lkotlinx/coroutines/JobSupport$AwaitContinuation;->job:Lkotlinx/coroutines/JobSupport;

    return-void
.end method


# virtual methods
.method public getContinuationCancellationCause(Lkotlinx/coroutines/Job;)Ljava/lang/Throwable;
    .locals 2

    iget-object v0, p0, Lkotlinx/coroutines/JobSupport$AwaitContinuation;->job:Lkotlinx/coroutines/JobSupport;

    .line 1167
    invoke-virtual {v0}, Lkotlinx/coroutines/JobSupport;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v0

    .line 1172
    instance-of v1, v0, Lkotlinx/coroutines/JobSupport$Finishing;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/JobSupport$Finishing;

    invoke-virtual {v1}, Lkotlinx/coroutines/JobSupport$Finishing;->getRootCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 1173
    :cond_0
    instance-of v1, v0, Lkotlinx/coroutines/CompletedExceptionally;

    if-eqz v1, :cond_1

    check-cast v0, Lkotlinx/coroutines/CompletedExceptionally;

    iget-object p1, v0, Lkotlinx/coroutines/CompletedExceptionally;->cause:Ljava/lang/Throwable;

    return-object p1

    .line 1174
    :cond_1
    invoke-interface {p1}, Lkotlinx/coroutines/Job;->getCancellationException()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    return-object p1
.end method

.method protected nameString()Ljava/lang/String;
    .locals 1

    .line 0
    const-string v0, "AwaitContinuation"

    return-object v0
.end method
