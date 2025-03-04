.class public abstract Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
.super Ljava/lang/Object;
.source "AbstractSharedFlow.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract allocateLocked(Ljava/lang/Object;)Z
.end method

.method public abstract freeLocked(Ljava/lang/Object;)[Lkotlin/coroutines/Continuation;
.end method
