.class final Lorg/fdroid/index/RepoManager$setArchiveRepoEnabled$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "RepoManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/index/RepoManager;->setArchiveRepoEnabled(Lorg/fdroid/database/Repository;ZLjava/net/Proxy;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lorg/fdroid/index/RepoManager;


# direct methods
.method constructor <init>(Lorg/fdroid/index/RepoManager;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/fdroid/index/RepoManager$setArchiveRepoEnabled$1;->this$0:Lorg/fdroid/index/RepoManager;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iput-object p1, p0, Lorg/fdroid/index/RepoManager$setArchiveRepoEnabled$1;->result:Ljava/lang/Object;

    iget p1, p0, Lorg/fdroid/index/RepoManager$setArchiveRepoEnabled$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lorg/fdroid/index/RepoManager$setArchiveRepoEnabled$1;->label:I

    iget-object p1, p0, Lorg/fdroid/index/RepoManager$setArchiveRepoEnabled$1;->this$0:Lorg/fdroid/index/RepoManager;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v0, p0}, Lorg/fdroid/index/RepoManager;->setArchiveRepoEnabled(Lorg/fdroid/database/Repository;ZLjava/net/Proxy;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
