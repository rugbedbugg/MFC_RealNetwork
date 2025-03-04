.class final Lorg/fdroid/download/HttpPoster$post$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "HttpPoster.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/download/HttpPoster;->post(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $json:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lorg/fdroid/download/HttpPoster;


# direct methods
.method constructor <init>(Lorg/fdroid/download/HttpPoster;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/fdroid/download/HttpPoster$post$1;->this$0:Lorg/fdroid/download/HttpPoster;

    iput-object p2, p0, Lorg/fdroid/download/HttpPoster$post$1;->$json:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 0
    new-instance p1, Lorg/fdroid/download/HttpPoster$post$1;

    iget-object v0, p0, Lorg/fdroid/download/HttpPoster$post$1;->this$0:Lorg/fdroid/download/HttpPoster;

    iget-object v1, p0, Lorg/fdroid/download/HttpPoster$post$1;->$json:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Lorg/fdroid/download/HttpPoster$post$1;-><init>(Lorg/fdroid/download/HttpPoster;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/fdroid/download/HttpPoster$post$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lorg/fdroid/download/HttpPoster$post$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lorg/fdroid/download/HttpPoster$post$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lorg/fdroid/download/HttpPoster$post$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lorg/fdroid/download/HttpPoster$post$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    .line 17
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lio/ktor/client/plugins/ResponseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_1
    iget-object p1, p0, Lorg/fdroid/download/HttpPoster$post$1;->this$0:Lorg/fdroid/download/HttpPoster;

    .line 19
    invoke-static {p1}, Lorg/fdroid/download/HttpPoster;->access$getHttpManager$p(Lorg/fdroid/download/HttpPoster;)Lorg/fdroid/download/HttpManager;

    move-result-object v3

    iget-object p1, p0, Lorg/fdroid/download/HttpPoster$post$1;->this$0:Lorg/fdroid/download/HttpPoster;

    invoke-static {p1}, Lorg/fdroid/download/HttpPoster;->access$getUrl$p(Lorg/fdroid/download/HttpPoster;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/fdroid/download/HttpPoster$post$1;->$json:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    iput v2, p0, Lorg/fdroid/download/HttpPoster$post$1;->label:I

    move-object v7, p0

    invoke-static/range {v3 .. v9}, Lorg/fdroid/download/HttpManager;->post$default(Lorg/fdroid/download/HttpManager;Ljava/lang/String;Ljava/lang/String;Ljava/net/Proxy;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Lio/ktor/client/plugins/ResponseException; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p1, v0, :cond_2

    return-object v0

    .line 23
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 21
    :goto_1
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
