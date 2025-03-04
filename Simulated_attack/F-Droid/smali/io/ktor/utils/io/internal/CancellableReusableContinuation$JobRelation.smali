.class final Lio/ktor/utils/io/internal/CancellableReusableContinuation$JobRelation;
.super Ljava/lang/Object;
.source "CancellableReusableContinuation.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/utils/io/internal/CancellableReusableContinuation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "JobRelation"
.end annotation


# instance fields
.field private handler:Lkotlinx/coroutines/DisposableHandle;

.field private final job:Lkotlinx/coroutines/Job;

.field final synthetic this$0:Lio/ktor/utils/io/internal/CancellableReusableContinuation;


# direct methods
.method public constructor <init>(Lio/ktor/utils/io/internal/CancellableReusableContinuation;Lkotlinx/coroutines/Job;)V
    .locals 7

    const-string v0, "job"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/ktor/utils/io/internal/CancellableReusableContinuation$JobRelation;->this$0:Lio/ktor/utils/io/internal/CancellableReusableContinuation;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/ktor/utils/io/internal/CancellableReusableContinuation$JobRelation;->job:Lkotlinx/coroutines/Job;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p2

    move-object v4, p0

    .line 113
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/Job$DefaultImpls;->invokeOnCompletion$default(Lkotlinx/coroutines/Job;ZZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object p1

    .line 115
    invoke-interface {p2}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result p2

    if-eqz p2, :cond_0

    iput-object p1, p0, Lio/ktor/utils/io/internal/CancellableReusableContinuation$JobRelation;->handler:Lkotlinx/coroutines/DisposableHandle;

    :cond_0
    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 2

    iget-object v0, p0, Lio/ktor/utils/io/internal/CancellableReusableContinuation$JobRelation;->handler:Lkotlinx/coroutines/DisposableHandle;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lio/ktor/utils/io/internal/CancellableReusableContinuation$JobRelation;->handler:Lkotlinx/coroutines/DisposableHandle;

    .line 132
    invoke-interface {v0}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    :cond_0
    return-void
.end method

.method public final getJob()Lkotlinx/coroutines/Job;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/utils/io/internal/CancellableReusableContinuation$JobRelation;->job:Lkotlinx/coroutines/Job;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 108
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lio/ktor/utils/io/internal/CancellableReusableContinuation$JobRelation;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public invoke(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lio/ktor/utils/io/internal/CancellableReusableContinuation$JobRelation;->this$0:Lio/ktor/utils/io/internal/CancellableReusableContinuation;

    .line 121
    invoke-static {v0, p0}, Lio/ktor/utils/io/internal/CancellableReusableContinuation;->access$notParent(Lio/ktor/utils/io/internal/CancellableReusableContinuation;Lio/ktor/utils/io/internal/CancellableReusableContinuation$JobRelation;)V

    .line 122
    invoke-virtual {p0}, Lio/ktor/utils/io/internal/CancellableReusableContinuation$JobRelation;->dispose()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lio/ktor/utils/io/internal/CancellableReusableContinuation$JobRelation;->this$0:Lio/ktor/utils/io/internal/CancellableReusableContinuation;

    iget-object v1, p0, Lio/ktor/utils/io/internal/CancellableReusableContinuation$JobRelation;->job:Lkotlinx/coroutines/Job;

    .line 125
    invoke-static {v0, v1, p1}, Lio/ktor/utils/io/internal/CancellableReusableContinuation;->access$resumeWithExceptionContinuationOnly(Lio/ktor/utils/io/internal/CancellableReusableContinuation;Lkotlinx/coroutines/Job;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
