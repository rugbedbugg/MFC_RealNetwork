.class final Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel$setArchiveRepoEnabled$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RepoDetailsViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel;->setArchiveRepoEnabled(Lorg/fdroid/database/Repository;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"
    }
    d2 = {
        "Lkotlinx/coroutines/CoroutineScope;",
        "",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "org.fdroid.fdroid.views.repos.RepoDetailsViewModel$setArchiveRepoEnabled$1"
    f = "RepoDetailsViewModel.kt"
    l = {
        0x3c,
        0x3e,
        0x44
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $enabled:Z

.field final synthetic $repo:Lorg/fdroid/database/Repository;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel;


# direct methods
.method constructor <init>(Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel;Lorg/fdroid/database/Repository;ZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel;",
            "Lorg/fdroid/database/Repository;",
            "Z",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel$setArchiveRepoEnabled$1;->this$0:Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel;

    iput-object p2, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel$setArchiveRepoEnabled$1;->$repo:Lorg/fdroid/database/Repository;

    iput-boolean p3, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel$setArchiveRepoEnabled$1;->$enabled:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Lkotlin/coroutines/Continuation;"
        }
    .end annotation

    .line 0
    new-instance v0, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel$setArchiveRepoEnabled$1;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel$setArchiveRepoEnabled$1;->this$0:Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel;

    iget-object v2, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel$setArchiveRepoEnabled$1;->$repo:Lorg/fdroid/database/Repository;

    iget-boolean v3, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel$setArchiveRepoEnabled$1;->$enabled:Z

    invoke-direct {v0, v1, v2, v3, p2}, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel$setArchiveRepoEnabled$1;-><init>(Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel;Lorg/fdroid/database/Repository;ZLkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel$setArchiveRepoEnabled$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel$setArchiveRepoEnabled$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel$setArchiveRepoEnabled$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel$setArchiveRepoEnabled$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel$setArchiveRepoEnabled$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel$setArchiveRepoEnabled$1;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    .line 58
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel$setArchiveRepoEnabled$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel$setArchiveRepoEnabled$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel$setArchiveRepoEnabled$1;->L$0:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    :try_start_2
    iget-object p1, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel$setArchiveRepoEnabled$1;->this$0:Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel;

    .line 60
    invoke-static {p1}, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel;->access$getRepoManager$p(Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel;)Lorg/fdroid/index/RepoManager;

    move-result-object p1

    iget-object v6, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel$setArchiveRepoEnabled$1;->$repo:Lorg/fdroid/database/Repository;

    iget-boolean v7, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel$setArchiveRepoEnabled$1;->$enabled:Z

    invoke-static {}, Linfo/guardianproject/netcipher/NetCipher;->getProxy()Ljava/net/Proxy;

    move-result-object v8

    iput-object v1, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel$setArchiveRepoEnabled$1;->L$0:Ljava/lang/Object;

    iput v4, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel$setArchiveRepoEnabled$1;->label:I

    invoke-virtual {p1, v6, v7, v8, p0}, Lorg/fdroid/index/RepoManager;->setArchiveRepoEnabled(Lorg/fdroid/database/Repository;ZLjava/net/Proxy;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 58
    :cond_4
    :goto_0
    check-cast p1, Ljava/lang/Long;

    iget-object v6, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel$setArchiveRepoEnabled$1;->this$0:Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel;

    .line 61
    invoke-static {v6}, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel;->access$get_state$p(Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v6

    iget-object v7, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel$setArchiveRepoEnabled$1;->this$0:Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel;

    invoke-static {v7}, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel;->access$get_state$p(Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v7

    invoke-interface {v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/fdroid/fdroid/views/repos/RepoDetailsState;

    if-eqz v7, :cond_5

    iget-boolean v8, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel$setArchiveRepoEnabled$1;->$enabled:Z

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v7, v5, v8, v4, v5}, Lorg/fdroid/fdroid/views/repos/RepoDetailsState;->copy$default(Lorg/fdroid/fdroid/views/repos/RepoDetailsState;Lorg/fdroid/database/Repository;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/fdroid/fdroid/views/repos/RepoDetailsState;

    move-result-object v7

    goto :goto_1

    :cond_5
    move-object v7, v5

    :goto_1
    invoke-interface {v6, v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-boolean v6, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel$setArchiveRepoEnabled$1;->$enabled:Z

    if-eqz v6, :cond_7

    if-eqz p1, :cond_7

    .line 62
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v6

    new-instance v7, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel$setArchiveRepoEnabled$1$1;

    iget-object v8, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel$setArchiveRepoEnabled$1;->this$0:Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel;

    invoke-direct {v7, v8, p1, v5}, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel$setArchiveRepoEnabled$1$1;-><init>(Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel;Ljava/lang/Long;Lkotlin/coroutines/Continuation;)V

    iput-object v1, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel$setArchiveRepoEnabled$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel$setArchiveRepoEnabled$1;->label:I

    invoke-static {v6, v7, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-ne p1, v0, :cond_7

    return-object v0

    .line 66
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Error toggling archive repo: "

    invoke-static {v1, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel$setArchiveRepoEnabled$1;->this$0:Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel;

    .line 67
    invoke-static {p1}, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel;->access$get_state$p(Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iget-object v1, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel$setArchiveRepoEnabled$1;->this$0:Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel;

    invoke-static {v1}, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel;->access$get_state$p(Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fdroid/fdroid/views/repos/RepoDetailsState;

    if-eqz v1, :cond_6

    iget-object v3, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel$setArchiveRepoEnabled$1;->this$0:Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel;

    iget-object v6, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel$setArchiveRepoEnabled$1;->$repo:Lorg/fdroid/database/Repository;

    invoke-static {v3, v6}, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel;->access$isArchiveEnabled(Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel;Lorg/fdroid/database/Repository;)Z

    move-result v3

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v5, v3, v4, v5}, Lorg/fdroid/fdroid/views/repos/RepoDetailsState;->copy$default(Lorg/fdroid/fdroid/views/repos/RepoDetailsState;Lorg/fdroid/database/Repository;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/fdroid/fdroid/views/repos/RepoDetailsState;

    move-result-object v1

    goto :goto_3

    :cond_6
    move-object v1, v5

    :goto_3
    invoke-interface {p1, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 68
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    new-instance v1, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel$setArchiveRepoEnabled$1$2;

    iget-object v3, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel$setArchiveRepoEnabled$1;->this$0:Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel;

    invoke-direct {v1, v3, v5}, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel$setArchiveRepoEnabled$1$2;-><init>(Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel;Lkotlin/coroutines/Continuation;)V

    iput-object v5, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel$setArchiveRepoEnabled$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel$setArchiveRepoEnabled$1;->label:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    .line 73
    :cond_7
    :goto_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
