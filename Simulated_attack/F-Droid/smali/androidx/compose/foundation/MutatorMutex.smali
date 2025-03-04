.class public final Landroidx/compose/foundation/MutatorMutex;
.super Ljava/lang/Object;
.source "MutatorMutex.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/MutatorMutex$Mutator;
    }
.end annotation


# instance fields
.field private final currentMutator:Ljava/util/concurrent/atomic/AtomicReference;

.field private final mutex:Lkotlinx/coroutines/sync/Mutex;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/compose/foundation/MutatorMutex;->currentMutator:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 93
    invoke-static {v0, v2, v1}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/MutatorMutex;->mutex:Lkotlinx/coroutines/sync/Mutex;

    return-void
.end method

.method public static final synthetic access$getCurrentMutator$p(Landroidx/compose/foundation/MutatorMutex;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 84
    iget-object p0, p0, Landroidx/compose/foundation/MutatorMutex;->currentMutator:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method public static final synthetic access$getMutex$p(Landroidx/compose/foundation/MutatorMutex;)Lkotlinx/coroutines/sync/Mutex;
    .locals 0

    .line 84
    iget-object p0, p0, Landroidx/compose/foundation/MutatorMutex;->mutex:Lkotlinx/coroutines/sync/Mutex;

    return-object p0
.end method

.method public static final synthetic access$tryMutateOrCancel(Landroidx/compose/foundation/MutatorMutex;Landroidx/compose/foundation/MutatorMutex$Mutator;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Landroidx/compose/foundation/MutatorMutex;->tryMutateOrCancel(Landroidx/compose/foundation/MutatorMutex$Mutator;)V

    return-void
.end method

.method private final tryMutateOrCancel(Landroidx/compose/foundation/MutatorMutex$Mutator;)V
    .locals 2

    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/MutatorMutex;->currentMutator:Ljava/util/concurrent/atomic/AtomicReference;

    .line 97
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/MutatorMutex$Mutator;

    if-eqz v0, :cond_2

    .line 98
    invoke-virtual {p1, v0}, Landroidx/compose/foundation/MutatorMutex$Mutator;->canInterrupt(Landroidx/compose/foundation/MutatorMutex$Mutator;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 103
    :cond_1
    new-instance p1, Ljava/util/concurrent/CancellationException;

    const-string v0, "Current mutation had a higher priority"

    invoke-direct {p1, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    iget-object v1, p0, Landroidx/compose/foundation/MutatorMutex;->currentMutator:Ljava/util/concurrent/atomic/AtomicReference;

    .line 99
    invoke-static {v1, v0, p1}, Landroidx/compose/animation/core/MutatorMutex$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_3

    .line 100
    invoke-virtual {v0}, Landroidx/compose/foundation/MutatorMutex$Mutator;->cancel()V

    :cond_3
    return-void
.end method


# virtual methods
.method public final mutateWith(Ljava/lang/Object;Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    .line 166
    new-instance v6, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p2

    move-object v2, p0

    move-object v3, p3

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;-><init>(Landroidx/compose/foundation/MutatePriority;Landroidx/compose/foundation/MutatorMutex;Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    invoke-static {v6, p4}, Lkotlinx/coroutines/CoroutineScopeKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
