.class final Lorg/fdroid/index/RepoManager$reorderRepositories$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RepoManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/index/RepoManager;->reorderRepositories(Lorg/fdroid/database/Repository;Lorg/fdroid/database/Repository;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $repoTarget:Lorg/fdroid/database/Repository;

.field final synthetic $repoToReorder:Lorg/fdroid/database/Repository;

.field label:I

.field final synthetic this$0:Lorg/fdroid/index/RepoManager;


# direct methods
.method constructor <init>(Lorg/fdroid/index/RepoManager;Lorg/fdroid/database/Repository;Lorg/fdroid/database/Repository;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/fdroid/index/RepoManager$reorderRepositories$1;->this$0:Lorg/fdroid/index/RepoManager;

    iput-object p2, p0, Lorg/fdroid/index/RepoManager$reorderRepositories$1;->$repoToReorder:Lorg/fdroid/database/Repository;

    iput-object p3, p0, Lorg/fdroid/index/RepoManager$reorderRepositories$1;->$repoTarget:Lorg/fdroid/database/Repository;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    .line 0
    new-instance p1, Lorg/fdroid/index/RepoManager$reorderRepositories$1;

    iget-object v0, p0, Lorg/fdroid/index/RepoManager$reorderRepositories$1;->this$0:Lorg/fdroid/index/RepoManager;

    iget-object v1, p0, Lorg/fdroid/index/RepoManager$reorderRepositories$1;->$repoToReorder:Lorg/fdroid/database/Repository;

    iget-object v2, p0, Lorg/fdroid/index/RepoManager$reorderRepositories$1;->$repoTarget:Lorg/fdroid/database/Repository;

    invoke-direct {p1, v0, v1, v2, p2}, Lorg/fdroid/index/RepoManager$reorderRepositories$1;-><init>(Lorg/fdroid/index/RepoManager;Lorg/fdroid/database/Repository;Lorg/fdroid/database/Repository;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/fdroid/index/RepoManager$reorderRepositories$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lorg/fdroid/index/RepoManager$reorderRepositories$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lorg/fdroid/index/RepoManager$reorderRepositories$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lorg/fdroid/index/RepoManager$reorderRepositories$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    iget v0, p0, Lorg/fdroid/index/RepoManager$reorderRepositories$1;->label:I

    if-nez v0, :cond_0

    .line 195
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/fdroid/index/RepoManager$reorderRepositories$1;->this$0:Lorg/fdroid/index/RepoManager;

    .line 196
    invoke-static {p1}, Lorg/fdroid/index/RepoManager;->access$getRepositoryDao$p(Lorg/fdroid/index/RepoManager;)Lorg/fdroid/database/RepositoryDaoInt;

    move-result-object p1

    iget-object v0, p0, Lorg/fdroid/index/RepoManager$reorderRepositories$1;->$repoToReorder:Lorg/fdroid/database/Repository;

    iget-object v1, p0, Lorg/fdroid/index/RepoManager$reorderRepositories$1;->$repoTarget:Lorg/fdroid/database/Repository;

    invoke-interface {p1, v0, v1}, Lorg/fdroid/database/RepositoryDaoInt;->reorderRepositories(Lorg/fdroid/database/Repository;Lorg/fdroid/database/Repository;)V

    .line 197
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 195
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
