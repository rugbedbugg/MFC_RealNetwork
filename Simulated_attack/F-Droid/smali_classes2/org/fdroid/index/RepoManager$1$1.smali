.class final Lorg/fdroid/index/RepoManager$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RepoManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/index/RepoManager$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    iput-object p1, p0, Lorg/fdroid/index/RepoManager$1$1;->this$0:Lorg/fdroid/index/RepoManager;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 0
    new-instance p1, Lorg/fdroid/index/RepoManager$1$1;

    iget-object v0, p0, Lorg/fdroid/index/RepoManager$1$1;->this$0:Lorg/fdroid/index/RepoManager;

    invoke-direct {p1, v0, p2}, Lorg/fdroid/index/RepoManager$1$1;-><init>(Lorg/fdroid/index/RepoManager;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/fdroid/index/RepoManager$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lorg/fdroid/index/RepoManager$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lorg/fdroid/index/RepoManager$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lorg/fdroid/index/RepoManager$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    iget v0, p0, Lorg/fdroid/index/RepoManager$1$1;->label:I

    if-nez v0, :cond_0

    .line 79
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/fdroid/index/RepoManager$1$1;->this$0:Lorg/fdroid/index/RepoManager;

    .line 82
    invoke-static {p1}, Lorg/fdroid/index/RepoManager;->access$getDb$p(Lorg/fdroid/index/RepoManager;)Lorg/fdroid/database/FDroidDatabase;

    move-result-object p1

    invoke-interface {p1}, Lorg/fdroid/database/FDroidDatabase;->getRepositoryDao()Lorg/fdroid/database/RepositoryDao;

    move-result-object p1

    invoke-interface {p1}, Lorg/fdroid/database/RepositoryDao;->getLiveRepositories()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lorg/fdroid/index/RepoManager$1$1$1;

    iget-object v1, p0, Lorg/fdroid/index/RepoManager$1$1;->this$0:Lorg/fdroid/index/RepoManager;

    invoke-direct {v0, v1}, Lorg/fdroid/index/RepoManager$1$1$1;-><init>(Lorg/fdroid/index/RepoManager;)V

    new-instance v1, Lorg/fdroid/index/RepoManager$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v1, v0}, Lorg/fdroid/index/RepoManager$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    .line 85
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 79
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
