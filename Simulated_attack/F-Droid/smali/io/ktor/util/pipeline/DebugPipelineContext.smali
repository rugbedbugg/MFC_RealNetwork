.class public final Lio/ktor/util/pipeline/DebugPipelineContext;
.super Lio/ktor/util/pipeline/PipelineContext;
.source "DebugPipelineContext.kt"


# instance fields
.field private final coroutineContext:Lkotlin/coroutines/CoroutineContext;

.field private index:I

.field private final interceptors:Ljava/util/List;

.field private subject:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/util/List;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interceptors"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subject"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineContext"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p1}, Lio/ktor/util/pipeline/PipelineContext;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lio/ktor/util/pipeline/DebugPipelineContext;->interceptors:Ljava/util/List;

    iput-object p4, p0, Lio/ktor/util/pipeline/DebugPipelineContext;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    iput-object p3, p0, Lio/ktor/util/pipeline/DebugPipelineContext;->subject:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic access$proceedLoop(Lio/ktor/util/pipeline/DebugPipelineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lio/ktor/util/pipeline/DebugPipelineContext;->proceedLoop(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final proceedLoop(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p1, Lio/ktor/util/pipeline/DebugPipelineContext$proceedLoop$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/ktor/util/pipeline/DebugPipelineContext$proceedLoop$1;

    iget v1, v0, Lio/ktor/util/pipeline/DebugPipelineContext$proceedLoop$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lio/ktor/util/pipeline/DebugPipelineContext$proceedLoop$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/util/pipeline/DebugPipelineContext$proceedLoop$1;

    invoke-direct {v0, p0, p1}, Lio/ktor/util/pipeline/DebugPipelineContext$proceedLoop$1;-><init>(Lio/ktor/util/pipeline/DebugPipelineContext;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lio/ktor/util/pipeline/DebugPipelineContext$proceedLoop$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 66
    iget v2, v0, Lio/ktor/util/pipeline/DebugPipelineContext$proceedLoop$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v2, v0, Lio/ktor/util/pipeline/DebugPipelineContext$proceedLoop$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/util/pipeline/DebugPipelineContext;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 68
    :cond_3
    :goto_1
    iget p1, v2, Lio/ktor/util/pipeline/DebugPipelineContext;->index:I

    const/4 v4, -0x1

    if-ne p1, v4, :cond_4

    goto :goto_2

    .line 72
    :cond_4
    iget-object v4, v2, Lio/ktor/util/pipeline/DebugPipelineContext;->interceptors:Ljava/util/List;

    .line 73
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lt p1, v5, :cond_5

    .line 74
    invoke-virtual {v2}, Lio/ktor/util/pipeline/DebugPipelineContext;->finish()V

    .line 83
    :goto_2
    invoke-virtual {v2}, Lio/ktor/util/pipeline/DebugPipelineContext;->getSubject()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 77
    :cond_5
    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/jvm/functions/Function3;

    add-int/lit8 p1, p1, 0x1

    .line 78
    iput p1, v2, Lio/ktor/util/pipeline/DebugPipelineContext;->index:I

    const-string p1, "null cannot be cast to non-null type @[ExtensionFunctionType] kotlin.coroutines.SuspendFunction2<io.ktor.util.pipeline.PipelineContext<TSubject of io.ktor.util.pipeline.DebugPipelineContext, TContext of io.ktor.util.pipeline.DebugPipelineContext>, TSubject of io.ktor.util.pipeline.DebugPipelineContext, kotlin.Unit>{ io.ktor.util.pipeline.PipelineKt.PipelineInterceptor<TSubject of io.ktor.util.pipeline.DebugPipelineContext, TContext of io.ktor.util.pipeline.DebugPipelineContext> }"

    .line 80
    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lio/ktor/util/pipeline/DebugPipelineContext;->getSubject()Ljava/lang/Object;

    move-result-object p1

    iput-object v2, v0, Lio/ktor/util/pipeline/DebugPipelineContext$proceedLoop$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lio/ktor/util/pipeline/DebugPipelineContext$proceedLoop$1;->label:I

    invoke-interface {v4, v2, p1, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1
.end method


# virtual methods
.method public execute$ktor_utils(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lio/ktor/util/pipeline/DebugPipelineContext;->index:I

    .line 62
    invoke-virtual {p0, p1}, Lio/ktor/util/pipeline/DebugPipelineContext;->setSubject(Ljava/lang/Object;)V

    .line 63
    invoke-virtual {p0, p2}, Lio/ktor/util/pipeline/DebugPipelineContext;->proceed(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public finish()V
    .locals 1

    .line 0
    const/4 v0, -0x1

    iput v0, p0, Lio/ktor/util/pipeline/DebugPipelineContext;->index:I

    return-void
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/util/pipeline/DebugPipelineContext;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    return-object v0
.end method

.method public getSubject()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/util/pipeline/DebugPipelineContext;->subject:Ljava/lang/Object;

    return-object v0
.end method

.method public proceed(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lio/ktor/util/pipeline/DebugPipelineContext;->index:I

    if-gez v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lio/ktor/util/pipeline/DebugPipelineContext;->getSubject()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v1, p0, Lio/ktor/util/pipeline/DebugPipelineContext;->interceptors:Ljava/util/List;

    .line 52
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 53
    invoke-virtual {p0}, Lio/ktor/util/pipeline/DebugPipelineContext;->finish()V

    .line 54
    invoke-virtual {p0}, Lio/ktor/util/pipeline/DebugPipelineContext;->getSubject()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 57
    :cond_1
    invoke-direct {p0, p1}, Lio/ktor/util/pipeline/DebugPipelineContext;->proceedLoop(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public proceedWith(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lio/ktor/util/pipeline/DebugPipelineContext;->setSubject(Ljava/lang/Object;)V

    .line 42
    invoke-virtual {p0, p2}, Lio/ktor/util/pipeline/DebugPipelineContext;->proceed(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setSubject(Ljava/lang/Object;)V
    .locals 1

    .line 0
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/ktor/util/pipeline/DebugPipelineContext;->subject:Ljava/lang/Object;

    return-void
.end method
