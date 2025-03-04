.class final Lorg/fdroid/index/RepoManager$addFetchedRepository$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RepoManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/index/RepoManager$addFetchedRepository$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $addedRepo:Lorg/fdroid/database/Repository;

.field label:I

.field final synthetic this$0:Lorg/fdroid/index/RepoManager;


# direct methods
.method constructor <init>(Lorg/fdroid/index/RepoManager;Lorg/fdroid/database/Repository;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/fdroid/index/RepoManager$addFetchedRepository$1$1;->this$0:Lorg/fdroid/index/RepoManager;

    iput-object p2, p0, Lorg/fdroid/index/RepoManager$addFetchedRepository$1$1;->$addedRepo:Lorg/fdroid/database/Repository;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 0
    new-instance p1, Lorg/fdroid/index/RepoManager$addFetchedRepository$1$1;

    iget-object v0, p0, Lorg/fdroid/index/RepoManager$addFetchedRepository$1$1;->this$0:Lorg/fdroid/index/RepoManager;

    iget-object v1, p0, Lorg/fdroid/index/RepoManager$addFetchedRepository$1$1;->$addedRepo:Lorg/fdroid/database/Repository;

    invoke-direct {p1, v0, v1, p2}, Lorg/fdroid/index/RepoManager$addFetchedRepository$1$1;-><init>(Lorg/fdroid/index/RepoManager;Lorg/fdroid/database/Repository;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/fdroid/index/RepoManager$addFetchedRepository$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lorg/fdroid/index/RepoManager$addFetchedRepository$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lorg/fdroid/index/RepoManager$addFetchedRepository$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lorg/fdroid/index/RepoManager$addFetchedRepository$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    iget v0, p0, Lorg/fdroid/index/RepoManager$addFetchedRepository$1$1;->label:I

    if-nez v0, :cond_0

    .line 149
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/fdroid/index/RepoManager$addFetchedRepository$1$1;->this$0:Lorg/fdroid/index/RepoManager;

    .line 150
    invoke-static {p1}, Lorg/fdroid/index/RepoManager;->access$get_repositoriesState$p(Lorg/fdroid/index/RepoManager;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iget-object v0, p0, Lorg/fdroid/index/RepoManager$addFetchedRepository$1$1;->this$0:Lorg/fdroid/index/RepoManager;

    invoke-static {v0}, Lorg/fdroid/index/RepoManager;->access$get_repositoriesState$p(Lorg/fdroid/index/RepoManager;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/fdroid/index/RepoManager$addFetchedRepository$1$1;->$addedRepo:Lorg/fdroid/database/Repository;

    .line 151
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    invoke-interface {p1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 153
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 149
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
