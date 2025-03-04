.class final Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2$result$channel$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DefaultTransform.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $body:Ljava/lang/Object;

.field final synthetic $response:Lio/ktor/client/statement/HttpResponse;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/Object;Lio/ktor/client/statement/HttpResponse;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2$result$channel$1;->$body:Ljava/lang/Object;

    iput-object p2, p0, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2$result$channel$1;->$response:Lio/ktor/client/statement/HttpResponse;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    .line 0
    new-instance v0, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2$result$channel$1;

    iget-object v1, p0, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2$result$channel$1;->$body:Ljava/lang/Object;

    iget-object v2, p0, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2$result$channel$1;->$response:Lio/ktor/client/statement/HttpResponse;

    invoke-direct {v0, v1, v2, p2}, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2$result$channel$1;-><init>(Ljava/lang/Object;Lio/ktor/client/statement/HttpResponse;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2$result$channel$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Lio/ktor/utils/io/WriterScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2$result$channel$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2$result$channel$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2$result$channel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lio/ktor/utils/io/WriterScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2$result$channel$1;->invoke(Lio/ktor/utils/io/WriterScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2$result$channel$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    .line 98
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2$result$channel$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lio/ktor/utils/io/WriterScope;

    :try_start_1
    iget-object v1, p0, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2$result$channel$1;->$body:Ljava/lang/Object;

    .line 100
    check-cast v1, Lio/ktor/utils/io/ByteReadChannel;

    invoke-interface {p1}, Lio/ktor/utils/io/WriterScope;->getChannel()Lio/ktor/utils/io/ByteWriteChannel;

    move-result-object p1

    iput v2, p0, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2$result$channel$1;->label:I

    const-wide v2, 0x7fffffffffffffffL

    invoke-static {v1, p1, v2, v3, p0}, Lio/ktor/utils/io/ByteReadChannelJVMKt;->copyTo(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    iget-object p1, p0, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2$result$channel$1;->$response:Lio/ktor/client/statement/HttpResponse;

    .line 108
    invoke-static {p1}, Lio/ktor/client/statement/HttpResponseKt;->complete(Lio/ktor/client/statement/HttpResponse;)V

    .line 110
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :goto_1
    :try_start_2
    iget-object v0, p0, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2$result$channel$1;->$response:Lio/ktor/client/statement/HttpResponse;

    const-string v1, "Receive failed"

    .line 105
    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel(Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    throw p1

    :catchall_1
    move-exception p1

    goto :goto_3

    :goto_2
    iget-object v0, p0, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2$result$channel$1;->$response:Lio/ktor/client/statement/HttpResponse;

    .line 102
    invoke-static {v0, p1}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;)V

    .line 103
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_3
    iget-object v0, p0, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2$result$channel$1;->$response:Lio/ktor/client/statement/HttpResponse;

    .line 108
    invoke-static {v0}, Lio/ktor/client/statement/HttpResponseKt;->complete(Lio/ktor/client/statement/HttpResponse;)V

    throw p1
.end method
