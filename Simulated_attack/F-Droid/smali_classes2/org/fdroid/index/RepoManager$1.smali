.class final Lorg/fdroid/index/RepoManager$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RepoManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/index/RepoManager;-><init>(Landroid/content/Context;Lorg/fdroid/database/FDroidDatabase;Lorg/fdroid/download/DownloaderFactory;Lorg/fdroid/download/HttpManager;Lorg/fdroid/index/RepoUriBuilder;Lkotlin/coroutines/CoroutineContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lorg/fdroid/index/RepoManager;


# direct methods
.method constructor <init>(Lorg/fdroid/index/RepoManager;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/fdroid/index/RepoManager$1;->this$0:Lorg/fdroid/index/RepoManager;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 0
    new-instance p1, Lorg/fdroid/index/RepoManager$1;

    iget-object v0, p0, Lorg/fdroid/index/RepoManager$1;->this$0:Lorg/fdroid/index/RepoManager;

    invoke-direct {p1, v0, p2}, Lorg/fdroid/index/RepoManager$1;-><init>(Lorg/fdroid/index/RepoManager;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/fdroid/index/RepoManager$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lorg/fdroid/index/RepoManager$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lorg/fdroid/index/RepoManager$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lorg/fdroid/index/RepoManager$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lorg/fdroid/index/RepoManager$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    .line 76
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/fdroid/index/RepoManager$1;->this$0:Lorg/fdroid/index/RepoManager;

    .line 77
    invoke-static {p1}, Lorg/fdroid/index/RepoManager;->access$get_repositoriesState$p(Lorg/fdroid/index/RepoManager;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iget-object v1, p0, Lorg/fdroid/index/RepoManager$1;->this$0:Lorg/fdroid/index/RepoManager;

    invoke-static {v1}, Lorg/fdroid/index/RepoManager;->access$getRepositoryDao$p(Lorg/fdroid/index/RepoManager;)Lorg/fdroid/database/RepositoryDaoInt;

    move-result-object v1

    invoke-interface {v1}, Lorg/fdroid/database/RepositoryDaoInt;->getRepositories()Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/fdroid/index/RepoManager$1;->this$0:Lorg/fdroid/index/RepoManager;

    .line 78
    invoke-static {p1}, Lorg/fdroid/index/RepoManager;->access$getRepoCountDownLatch$p(Lorg/fdroid/index/RepoManager;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 79
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    new-instance v1, Lorg/fdroid/index/RepoManager$1$1;

    iget-object v3, p0, Lorg/fdroid/index/RepoManager$1;->this$0:Lorg/fdroid/index/RepoManager;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lorg/fdroid/index/RepoManager$1$1;-><init>(Lorg/fdroid/index/RepoManager;Lkotlin/coroutines/Continuation;)V

    iput v2, p0, Lorg/fdroid/index/RepoManager$1;->label:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 86
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
