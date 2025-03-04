.class final Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel$setArchiveRepoEnabled$1$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RepoDetailsViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel$setArchiveRepoEnabled$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "org.fdroid.fdroid.views.repos.RepoDetailsViewModel$setArchiveRepoEnabled$1$2"
    f = "RepoDetailsViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel;


# direct methods
.method constructor <init>(Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel$setArchiveRepoEnabled$1$2;->this$0:Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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
    new-instance p1, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel$setArchiveRepoEnabled$1$2;

    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel$setArchiveRepoEnabled$1$2;->this$0:Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel;

    invoke-direct {p1, v0, p2}, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel$setArchiveRepoEnabled$1$2;-><init>(Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel$setArchiveRepoEnabled$1$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel$setArchiveRepoEnabled$1$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel$setArchiveRepoEnabled$1$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel$setArchiveRepoEnabled$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    iget v0, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel$setArchiveRepoEnabled$1$2;->label:I

    if-nez v0, :cond_0

    .line 68
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel$setArchiveRepoEnabled$1$2;->this$0:Lorg/fdroid/fdroid/views/repos/RepoDetailsViewModel;

    .line 69
    invoke-virtual {p1}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object p1

    sget v0, Lorg/fdroid/fdroid/R$string;->repo_archive_failed:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 70
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 71
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 68
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
