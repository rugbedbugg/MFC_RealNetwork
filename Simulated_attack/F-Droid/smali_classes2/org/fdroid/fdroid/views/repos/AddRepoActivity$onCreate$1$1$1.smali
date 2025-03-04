.class final Lorg/fdroid/fdroid/views/repos/AddRepoActivity$onCreate$1$1$1;
.super Ljava/lang/Object;
.source "AddRepoActivity.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/fdroid/views/repos/AddRepoActivity$onCreate$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u008a@\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "state",
        "Lorg/fdroid/repo/AddRepoState;",
        "emit",
        "(Lorg/fdroid/repo/AddRepoState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fdroid/fdroid/views/repos/AddRepoActivity;


# direct methods
.method constructor <init>(Lorg/fdroid/fdroid/views/repos/AddRepoActivity;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/fdroid/fdroid/views/repos/AddRepoActivity$onCreate$1$1$1;->this$0:Lorg/fdroid/fdroid/views/repos/AddRepoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 42
    check-cast p1, Lorg/fdroid/repo/AddRepoState;

    invoke-virtual {p0, p1, p2}, Lorg/fdroid/fdroid/views/repos/AddRepoActivity$onCreate$1$1$1;->emit(Lorg/fdroid/repo/AddRepoState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final emit(Lorg/fdroid/repo/AddRepoState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fdroid/repo/AddRepoState;",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 43
    instance-of p2, p1, Lorg/fdroid/repo/Added;

    if-eqz p2, :cond_0

    .line 45
    sget-object p2, Lorg/fdroid/fdroid/work/RepoUpdateWorker;->Companion:Lorg/fdroid/fdroid/work/RepoUpdateWorker$Companion;

    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/AddRepoActivity$onCreate$1$1$1;->this$0:Lorg/fdroid/fdroid/views/repos/AddRepoActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getApplicationContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/fdroid/repo/Added;

    invoke-virtual {p1}, Lorg/fdroid/repo/Added;->getRepo()Lorg/fdroid/database/Repository;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fdroid/database/Repository;->getRepoId()J

    move-result-wide v1

    invoke-virtual {p2, v0, v1, v2}, Lorg/fdroid/fdroid/work/RepoUpdateWorker$Companion;->updateNow(Landroid/content/Context;J)V

    .line 47
    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/AddRepoActivity$onCreate$1$1$1;->this$0:Lorg/fdroid/fdroid/views/repos/AddRepoActivity;

    const-class v1, Lorg/fdroid/fdroid/views/apps/AppListActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    invoke-virtual {p1}, Lorg/fdroid/repo/Added;->getRepo()Lorg/fdroid/database/Repository;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fdroid/database/Repository;->getRepoId()J

    move-result-wide v0

    const-string p1, "org.fdroid.fdroid.views.apps.AppListActivity.REPO_ID"

    invoke-virtual {p2, p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object p1, p0, Lorg/fdroid/fdroid/views/repos/AddRepoActivity$onCreate$1$1$1;->this$0:Lorg/fdroid/fdroid/views/repos/AddRepoActivity;

    .line 50
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/repos/AddRepoActivity$onCreate$1$1$1;->this$0:Lorg/fdroid/fdroid/views/repos/AddRepoActivity;

    .line 51
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 53
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
