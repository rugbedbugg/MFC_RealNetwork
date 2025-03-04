.class public abstract Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;
.super Ljava/lang/Object;
.source "AbstractSharedFlow.kt"


# instance fields
.field private _subscriptionCount:Lkotlinx/coroutines/flow/internal/SubscriptionCountStateFlow;

.field private nCollectors:I

.field private nextIndex:I

.field private slots:[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getNCollectors(Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;)I
    .locals 0

    .line 21
    iget p0, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->nCollectors:I

    return p0
.end method

.method public static final synthetic access$getSlots(Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;)[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    .locals 0

    .line 21
    iget-object p0, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->slots:[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    return-object p0
.end method


# virtual methods
.method protected final allocateSlot()Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    .locals 4

    .line 20
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->slots:[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 47
    invoke-virtual {p0, v1}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->createSlotArray(I)[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->slots:[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget v2, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->nCollectors:I

    .line 48
    array-length v3, v0

    if-lt v2, v3, :cond_1

    .line 49
    array-length v2, v0

    mul-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "copyOf(this, newSize)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, [Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    iput-object v1, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->slots:[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    check-cast v0, [Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    :cond_1
    :goto_0
    iget v1, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->nextIndex:I

    .line 57
    :cond_2
    aget-object v2, v0, v1

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->createSlot()Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    move-result-object v2

    aput-object v2, v0, v1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 59
    array-length v3, v0

    if-lt v1, v3, :cond_4

    const/4 v1, 0x0

    :cond_4
    const-string v3, "null cannot be cast to non-null type kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot<kotlin.Any>"

    .line 60
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;->allocateLocked(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iput v1, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->nextIndex:I

    iget v0, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->nCollectors:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->nCollectors:I

    iget-object v0, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->_subscriptionCount:Lkotlinx/coroutines/flow/internal/SubscriptionCountStateFlow;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit p0

    if-eqz v0, :cond_5

    .line 68
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/flow/internal/SubscriptionCountStateFlow;->increment(I)Z

    :cond_5
    return-object v2

    .line 20
    :goto_1
    monitor-exit p0

    throw v0
.end method

.method protected abstract createSlot()Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
.end method

.method protected abstract createSlotArray(I)[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
.end method

.method protected final freeSlot(Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;)V
    .locals 6

    .line 20
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->nCollectors:I

    const/4 v1, -0x1

    add-int/2addr v0, v1

    iput v0, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->nCollectors:I

    iget-object v2, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->_subscriptionCount:Lkotlinx/coroutines/flow/internal/SubscriptionCountStateFlow;

    const/4 v3, 0x0

    if-nez v0, :cond_0

    iput v3, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->nextIndex:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot<kotlin.Any>"

    .line 81
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;->freeLocked(Ljava/lang/Object;)[Lkotlin/coroutines/Continuation;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit p0

    .line 88
    array-length v0, p1

    :goto_1
    if-ge v3, v0, :cond_2

    aget-object v4, p1, v3

    if-eqz v4, :cond_1

    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v5}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    .line 90
    invoke-virtual {v2, v1}, Lkotlinx/coroutines/flow/internal/SubscriptionCountStateFlow;->increment(I)Z

    :cond_3
    return-void

    .line 20
    :goto_2
    monitor-exit p0

    throw p1
.end method

.method protected final getNCollectors()I
    .locals 1

    .line 0
    iget v0, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->nCollectors:I

    return v0
.end method

.method protected final getSlots()[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    .locals 1

    .line 0
    iget-object v0, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->slots:[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    return-object v0
.end method

.method public final getSubscriptionCount()Lkotlinx/coroutines/flow/StateFlow;
    .locals 2

    .line 20
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->_subscriptionCount:Lkotlinx/coroutines/flow/internal/SubscriptionCountStateFlow;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lkotlinx/coroutines/flow/internal/SubscriptionCountStateFlow;

    iget v1, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->nCollectors:I

    invoke-direct {v0, v1}, Lkotlinx/coroutines/flow/internal/SubscriptionCountStateFlow;-><init>(I)V

    iput-object v0, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->_subscriptionCount:Lkotlinx/coroutines/flow/internal/SubscriptionCountStateFlow;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0

    throw v0
.end method
