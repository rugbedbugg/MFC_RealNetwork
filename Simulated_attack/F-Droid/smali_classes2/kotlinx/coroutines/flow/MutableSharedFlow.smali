.class public interface abstract Lkotlinx/coroutines/flow/MutableSharedFlow;
.super Ljava/lang/Object;
.source "SharedFlow.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/SharedFlow;
.implements Lkotlinx/coroutines/flow/FlowCollector;


# virtual methods
.method public abstract emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method

.method public abstract getSubscriptionCount()Lkotlinx/coroutines/flow/StateFlow;
.end method

.method public abstract resetReplayCache()V
.end method

.method public abstract tryEmit(Ljava/lang/Object;)Z
.end method
