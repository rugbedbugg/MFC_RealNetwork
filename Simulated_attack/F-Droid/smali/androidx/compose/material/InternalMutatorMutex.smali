.class public final Landroidx/compose/material/InternalMutatorMutex;
.super Ljava/lang/Object;
.source "InternalMutatorMutex.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material/InternalMutatorMutex$Mutator;
    }
.end annotation


# instance fields
.field private final currentMutator:Ljava/util/concurrent/atomic/AtomicReference;

.field private final mutex:Lkotlinx/coroutines/sync/Mutex;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/compose/material/InternalMutatorMutex;->currentMutator:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 60
    invoke-static {v0, v2, v1}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/material/InternalMutatorMutex;->mutex:Lkotlinx/coroutines/sync/Mutex;

    return-void
.end method

.method public static final synthetic access$getCurrentMutator$p(Landroidx/compose/material/InternalMutatorMutex;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 51
    iget-object p0, p0, Landroidx/compose/material/InternalMutatorMutex;->currentMutator:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method public static final synthetic access$getMutex$p(Landroidx/compose/material/InternalMutatorMutex;)Lkotlinx/coroutines/sync/Mutex;
    .locals 0

    .line 51
    iget-object p0, p0, Landroidx/compose/material/InternalMutatorMutex;->mutex:Lkotlinx/coroutines/sync/Mutex;

    return-object p0
.end method

.method public static final synthetic access$tryMutateOrCancel(Landroidx/compose/material/InternalMutatorMutex;Landroidx/compose/material/InternalMutatorMutex$Mutator;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Landroidx/compose/material/InternalMutatorMutex;->tryMutateOrCancel(Landroidx/compose/material/InternalMutatorMutex$Mutator;)V

    return-void
.end method

.method private final tryMutateOrCancel(Landroidx/compose/material/InternalMutatorMutex$Mutator;)V
    .locals 2

    :cond_0
    iget-object v0, p0, Landroidx/compose/material/InternalMutatorMutex;->currentMutator:Ljava/util/concurrent/atomic/AtomicReference;

    .line 64
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/material/InternalMutatorMutex$Mutator;

    if-eqz v0, :cond_2

    .line 65
    invoke-virtual {p1, v0}, Landroidx/compose/material/InternalMutatorMutex$Mutator;->canInterrupt(Landroidx/compose/material/InternalMutatorMutex$Mutator;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 70
    :cond_1
    new-instance p1, Ljava/util/concurrent/CancellationException;

    const-string v0, "Current mutation had a higher priority"

    invoke-direct {p1, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    iget-object v1, p0, Landroidx/compose/material/InternalMutatorMutex;->currentMutator:Ljava/util/concurrent/atomic/AtomicReference;

    .line 66
    invoke-static {v1, v0, p1}, Landroidx/compose/animation/core/MutatorMutex$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_3

    .line 67
    invoke-virtual {v0}, Landroidx/compose/material/InternalMutatorMutex$Mutator;->cancel()V

    :cond_3
    return-void
.end method


# virtual methods
.method public final mutate(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 92
    new-instance v0, Landroidx/compose/material/InternalMutatorMutex$mutate$2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, p2, v1}, Landroidx/compose/material/InternalMutatorMutex$mutate$2;-><init>(Landroidx/compose/foundation/MutatePriority;Landroidx/compose/material/InternalMutatorMutex;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, p3}, Lkotlinx/coroutines/CoroutineScopeKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final tryMutate(Lkotlin/jvm/functions/Function0;)Z
    .locals 3

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/material/InternalMutatorMutex;->mutex:Lkotlinx/coroutines/sync/Mutex;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 160
    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/sync/Mutex$DefaultImpls;->tryLock$default(Lkotlinx/coroutines/sync/Mutex;Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Landroidx/compose/material/InternalMutatorMutex;->mutex:Lkotlinx/coroutines/sync/Mutex;

    .line 165
    invoke-static {p1, v1, v2, v1}, Lkotlinx/coroutines/sync/Mutex$DefaultImpls;->unlock$default(Lkotlinx/coroutines/sync/Mutex;Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Landroidx/compose/material/InternalMutatorMutex;->mutex:Lkotlinx/coroutines/sync/Mutex;

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/sync/Mutex$DefaultImpls;->unlock$default(Lkotlinx/coroutines/sync/Mutex;Ljava/lang/Object;ILjava/lang/Object;)V

    throw p1

    :cond_0
    :goto_0
    return v0
.end method
