.class public abstract Lkotlin/coroutines/jvm/internal/DebugProbesKt;
.super Ljava/lang/Object;
.source "DebugProbes.kt"


# direct methods
.method public static final probeCoroutineCreated(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 0
    const-string v0, "completion"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final probeCoroutineResumed(Lkotlin/coroutines/Continuation;)V
    .locals 1

    .line 0
    const-string v0, "frame"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static final probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V
    .locals 1

    .line 0
    const-string v0, "frame"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
