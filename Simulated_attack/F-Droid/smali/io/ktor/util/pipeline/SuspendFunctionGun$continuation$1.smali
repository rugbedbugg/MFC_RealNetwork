.class public final Lio/ktor/util/pipeline/SuspendFunctionGun$continuation$1;
.super Ljava/lang/Object;
.source "SuspendFunctionGun.kt"

# interfaces
.implements Lkotlin/coroutines/Continuation;
.implements Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/util/pipeline/SuspendFunctionGun;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private currentIndex:I

.field final synthetic this$0:Lio/ktor/util/pipeline/SuspendFunctionGun;


# direct methods
.method constructor <init>(Lio/ktor/util/pipeline/SuspendFunctionGun;)V
    .locals 0

    iput-object p1, p0, Lio/ktor/util/pipeline/SuspendFunctionGun$continuation$1;->this$0:Lio/ktor/util/pipeline/SuspendFunctionGun;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, -0x80000000

    iput p1, p0, Lio/ktor/util/pipeline/SuspendFunctionGun$continuation$1;->currentIndex:I

    return-void
.end method

.method private final peekContinuation()Lkotlin/coroutines/Continuation;
    .locals 2

    iget v0, p0, Lio/ktor/util/pipeline/SuspendFunctionGun$continuation$1;->currentIndex:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/ktor/util/pipeline/SuspendFunctionGun$continuation$1;->this$0:Lio/ktor/util/pipeline/SuspendFunctionGun;

    .line 29
    invoke-static {v0}, Lio/ktor/util/pipeline/SuspendFunctionGun;->access$getLastSuspensionIndex$p(Lio/ktor/util/pipeline/SuspendFunctionGun;)I

    move-result v0

    iput v0, p0, Lio/ktor/util/pipeline/SuspendFunctionGun$continuation$1;->currentIndex:I

    :cond_0
    iget v0, p0, Lio/ktor/util/pipeline/SuspendFunctionGun$continuation$1;->currentIndex:I

    if-gez v0, :cond_1

    iput v1, p0, Lio/ktor/util/pipeline/SuspendFunctionGun$continuation$1;->currentIndex:I

    const/4 v0, 0x0

    return-object v0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lio/ktor/util/pipeline/SuspendFunctionGun$continuation$1;->this$0:Lio/ktor/util/pipeline/SuspendFunctionGun;

    .line 42
    invoke-static {v0}, Lio/ktor/util/pipeline/SuspendFunctionGun;->access$getSuspensions$p(Lio/ktor/util/pipeline/SuspendFunctionGun;)[Lkotlin/coroutines/Continuation;

    move-result-object v0

    iget v1, p0, Lio/ktor/util/pipeline/SuspendFunctionGun$continuation$1;->currentIndex:I

    aget-object v0, v0, v1

    if-nez v0, :cond_2

    sget-object v0, Lio/ktor/util/pipeline/StackWalkingFailedFrame;->INSTANCE:Lio/ktor/util/pipeline/StackWalkingFailedFrame;

    return-object v0

    :cond_2
    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lio/ktor/util/pipeline/SuspendFunctionGun$continuation$1;->currentIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 46
    :catchall_0
    sget-object v0, Lio/ktor/util/pipeline/StackWalkingFailedFrame;->INSTANCE:Lio/ktor/util/pipeline/StackWalkingFailedFrame;

    return-object v0
.end method


# virtual methods
.method public getCallerFrame()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;
    .locals 2

    .line 22
    invoke-direct {p0}, Lio/ktor/util/pipeline/SuspendFunctionGun$continuation$1;->peekContinuation()Lkotlin/coroutines/Continuation;

    move-result-object v0

    instance-of v1, v0, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    if-eqz v1, :cond_0

    check-cast v0, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getContext()Lkotlin/coroutines/CoroutineContext;
    .locals 2

    iget-object v0, p0, Lio/ktor/util/pipeline/SuspendFunctionGun$continuation$1;->this$0:Lio/ktor/util/pipeline/SuspendFunctionGun;

    .line 51
    invoke-static {v0}, Lio/ktor/util/pipeline/SuspendFunctionGun;->access$getSuspensions$p(Lio/ktor/util/pipeline/SuspendFunctionGun;)[Lkotlin/coroutines/Continuation;

    move-result-object v0

    iget-object v1, p0, Lio/ktor/util/pipeline/SuspendFunctionGun$continuation$1;->this$0:Lio/ktor/util/pipeline/SuspendFunctionGun;

    invoke-static {v1}, Lio/ktor/util/pipeline/SuspendFunctionGun;->access$getLastSuspensionIndex$p(Lio/ktor/util/pipeline/SuspendFunctionGun;)I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not started"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 1

    .line 54
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/ktor/util/pipeline/SuspendFunctionGun$continuation$1;->this$0:Lio/ktor/util/pipeline/SuspendFunctionGun;

    .line 55
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lio/ktor/util/pipeline/SuspendFunctionGun;->access$resumeRootWith(Lio/ktor/util/pipeline/SuspendFunctionGun;Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object p1, p0, Lio/ktor/util/pipeline/SuspendFunctionGun$continuation$1;->this$0:Lio/ktor/util/pipeline/SuspendFunctionGun;

    const/4 v0, 0x0

    .line 59
    invoke-static {p1, v0}, Lio/ktor/util/pipeline/SuspendFunctionGun;->access$loop(Lio/ktor/util/pipeline/SuspendFunctionGun;Z)Z

    return-void
.end method
