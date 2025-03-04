.class public final Lio/ktor/util/pipeline/SuspendFunctionGun;
.super Lio/ktor/util/pipeline/PipelineContext;
.source "SuspendFunctionGun.kt"


# instance fields
.field private final blocks:Ljava/util/List;

.field private final continuation:Lkotlin/coroutines/Continuation;

.field private index:I

.field private lastSuspensionIndex:I

.field private subject:Ljava/lang/Object;

.field private final suspensions:[Lkotlin/coroutines/Continuation;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/List;)V
    .locals 1

    const-string v0, "initial"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blocks"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p2}, Lio/ktor/util/pipeline/PipelineContext;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lio/ktor/util/pipeline/SuspendFunctionGun;->blocks:Ljava/util/List;

    .line 21
    new-instance p2, Lio/ktor/util/pipeline/SuspendFunctionGun$continuation$1;

    invoke-direct {p2, p0}, Lio/ktor/util/pipeline/SuspendFunctionGun$continuation$1;-><init>(Lio/ktor/util/pipeline/SuspendFunctionGun;)V

    iput-object p2, p0, Lio/ktor/util/pipeline/SuspendFunctionGun;->continuation:Lkotlin/coroutines/Continuation;

    iput-object p1, p0, Lio/ktor/util/pipeline/SuspendFunctionGun;->subject:Ljava/lang/Object;

    .line 65
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lkotlin/coroutines/Continuation;

    iput-object p1, p0, Lio/ktor/util/pipeline/SuspendFunctionGun;->suspensions:[Lkotlin/coroutines/Continuation;

    const/4 p1, -0x1

    iput p1, p0, Lio/ktor/util/pipeline/SuspendFunctionGun;->lastSuspensionIndex:I

    return-void
.end method

.method public static final synthetic access$getLastSuspensionIndex$p(Lio/ktor/util/pipeline/SuspendFunctionGun;)I
    .locals 0

    .line 11
    iget p0, p0, Lio/ktor/util/pipeline/SuspendFunctionGun;->lastSuspensionIndex:I

    return p0
.end method

.method public static final synthetic access$getSuspensions$p(Lio/ktor/util/pipeline/SuspendFunctionGun;)[Lkotlin/coroutines/Continuation;
    .locals 0

    .line 11
    iget-object p0, p0, Lio/ktor/util/pipeline/SuspendFunctionGun;->suspensions:[Lkotlin/coroutines/Continuation;

    return-object p0
.end method

.method public static final synthetic access$loop(Lio/ktor/util/pipeline/SuspendFunctionGun;Z)Z
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lio/ktor/util/pipeline/SuspendFunctionGun;->loop(Z)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$resumeRootWith(Lio/ktor/util/pipeline/SuspendFunctionGun;Ljava/lang/Object;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lio/ktor/util/pipeline/SuspendFunctionGun;->resumeRootWith(Ljava/lang/Object;)V

    return-void
.end method

.method private final addContinuation(Lkotlin/coroutines/Continuation;)V
    .locals 2

    iget-object v0, p0, Lio/ktor/util/pipeline/SuspendFunctionGun;->suspensions:[Lkotlin/coroutines/Continuation;

    iget v1, p0, Lio/ktor/util/pipeline/SuspendFunctionGun;->lastSuspensionIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/ktor/util/pipeline/SuspendFunctionGun;->lastSuspensionIndex:I

    .line 148
    aput-object p1, v0, v1

    return-void
.end method

.method private final discardLastRootContinuation()V
    .locals 3

    iget v0, p0, Lio/ktor/util/pipeline/SuspendFunctionGun;->lastSuspensionIndex:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lio/ktor/util/pipeline/SuspendFunctionGun;->suspensions:[Lkotlin/coroutines/Continuation;

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lio/ktor/util/pipeline/SuspendFunctionGun;->lastSuspensionIndex:I

    const/4 v2, 0x0

    .line 144
    aput-object v2, v1, v0

    return-void

    .line 143
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No more continuations to resume"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final loop(Z)Z
    .locals 4

    :cond_0
    iget v0, p0, Lio/ktor/util/pipeline/SuspendFunctionGun;->index:I

    iget-object v1, p0, Lio/ktor/util/pipeline/SuspendFunctionGun;->blocks:Ljava/util/List;

    .line 107
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    if-nez p1, :cond_1

    .line 109
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {p0}, Lio/ktor/util/pipeline/SuspendFunctionGun;->getSubject()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/ktor/util/pipeline/SuspendFunctionGun;->resumeRootWith(Ljava/lang/Object;)V

    return v2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lio/ktor/util/pipeline/SuspendFunctionGun;->index:I

    iget-object v1, p0, Lio/ktor/util/pipeline/SuspendFunctionGun;->blocks:Ljava/util/List;

    .line 117
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function3;

    .line 120
    :try_start_0
    invoke-virtual {p0}, Lio/ktor/util/pipeline/SuspendFunctionGun;->getSubject()Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Lio/ktor/util/pipeline/SuspendFunctionGun;->continuation:Lkotlin/coroutines/Continuation;

    invoke-interface {v0, p0, v1, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 121
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    return v2

    :catchall_0
    move-exception p1

    .line 123
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/ktor/util/pipeline/SuspendFunctionGun;->resumeRootWith(Ljava/lang/Object;)V

    return v2
.end method

.method private final resumeRootWith(Ljava/lang/Object;)V
    .locals 4

    iget v0, p0, Lio/ktor/util/pipeline/SuspendFunctionGun;->lastSuspensionIndex:I

    if-ltz v0, :cond_1

    iget-object v1, p0, Lio/ktor/util/pipeline/SuspendFunctionGun;->suspensions:[Lkotlin/coroutines/Continuation;

    .line 131
    aget-object v0, v1, v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lio/ktor/util/pipeline/SuspendFunctionGun;->suspensions:[Lkotlin/coroutines/Continuation;

    iget v2, p0, Lio/ktor/util/pipeline/SuspendFunctionGun;->lastSuspensionIndex:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lio/ktor/util/pipeline/SuspendFunctionGun;->lastSuspensionIndex:I

    const/4 v3, 0x0

    .line 132
    aput-object v3, v1, v2

    .line 134
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 135
    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    .line 137
    :cond_0
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1, v0}, Lio/ktor/util/pipeline/StackTraceRecoverKt;->recoverStackTraceBridge(Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)Ljava/lang/Throwable;

    move-result-object p1

    .line 138
    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 130
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No more continuations to resume"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public execute$ktor_utils(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lio/ktor/util/pipeline/SuspendFunctionGun;->index:I

    iget-object v0, p0, Lio/ktor/util/pipeline/SuspendFunctionGun;->blocks:Ljava/util/List;

    .line 93
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 94
    :cond_0
    invoke-virtual {p0, p1}, Lio/ktor/util/pipeline/SuspendFunctionGun;->setSubject(Ljava/lang/Object;)V

    iget p1, p0, Lio/ktor/util/pipeline/SuspendFunctionGun;->lastSuspensionIndex:I

    if-gez p1, :cond_1

    .line 98
    invoke-virtual {p0, p2}, Lio/ktor/util/pipeline/SuspendFunctionGun;->proceed(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 96
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already started"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    iget-object v0, p0, Lio/ktor/util/pipeline/SuspendFunctionGun;->continuation:Lkotlin/coroutines/Continuation;

    .line 17
    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    return-object v0
.end method

.method public getSubject()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/util/pipeline/SuspendFunctionGun;->subject:Ljava/lang/Object;

    return-object v0
.end method

.method public proceed(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lio/ktor/util/pipeline/SuspendFunctionGun;->index:I

    iget-object v1, p0, Lio/ktor/util/pipeline/SuspendFunctionGun;->blocks:Ljava/util/List;

    .line 74
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lio/ktor/util/pipeline/SuspendFunctionGun;->getSubject()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 76
    :cond_0
    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/ktor/util/pipeline/SuspendFunctionGun;->addContinuation(Lkotlin/coroutines/Continuation;)V

    const/4 v0, 0x1

    .line 78
    invoke-direct {p0, v0}, Lio/ktor/util/pipeline/SuspendFunctionGun;->loop(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    invoke-direct {p0}, Lio/ktor/util/pipeline/SuspendFunctionGun;->discardLastRootContinuation()V

    .line 80
    invoke-virtual {p0}, Lio/ktor/util/pipeline/SuspendFunctionGun;->getSubject()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 83
    :cond_1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 73
    :goto_0
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_2

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_2
    return-object v0
.end method

.method public proceedWith(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 87
    invoke-virtual {p0, p1}, Lio/ktor/util/pipeline/SuspendFunctionGun;->setSubject(Ljava/lang/Object;)V

    .line 88
    invoke-virtual {p0, p2}, Lio/ktor/util/pipeline/SuspendFunctionGun;->proceed(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setSubject(Ljava/lang/Object;)V
    .locals 1

    .line 0
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/ktor/util/pipeline/SuspendFunctionGun;->subject:Ljava/lang/Object;

    return-void
.end method
