.class public final Lorg/fdroid/repo/RepoAdder$fetchRepositoryInt$receiver$1;
.super Ljava/lang/Object;
.source "RepoAdder.kt"

# interfaces
.implements Lorg/fdroid/repo/RepoPreviewReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/repo/RepoAdder;->fetchRepositoryInt$database_release(Ljava/lang/String;Ljava/net/Proxy;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "org/fdroid/repo/RepoAdder$fetchRepositoryInt$receiver$1",
        "Lorg/fdroid/repo/RepoPreviewReceiver;",
        "onAppReceived",
        "",
        "app",
        "Lorg/fdroid/database/AppOverviewItem;",
        "onRepoReceived",
        "repo",
        "Lorg/fdroid/database/Repository;",
        "database_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $apps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/fdroid/database/AppOverviewItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $fetchResult:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef;"
        }
    .end annotation
.end field

.field final synthetic $fetchUrl:Ljava/lang/String;

.field final synthetic $receivedRepo:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/fdroid/repo/RepoAdder;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lorg/fdroid/repo/RepoAdder;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef;",
            "Lkotlin/jvm/internal/Ref$ObjectRef;",
            "Lorg/fdroid/repo/RepoAdder;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lorg/fdroid/database/AppOverviewItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/fdroid/repo/RepoAdder$fetchRepositoryInt$receiver$1;->$receivedRepo:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lorg/fdroid/repo/RepoAdder$fetchRepositoryInt$receiver$1;->$fetchResult:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lorg/fdroid/repo/RepoAdder$fetchRepositoryInt$receiver$1;->this$0:Lorg/fdroid/repo/RepoAdder;

    iput-object p4, p0, Lorg/fdroid/repo/RepoAdder$fetchRepositoryInt$receiver$1;->$fetchUrl:Ljava/lang/String;

    iput-object p5, p0, Lorg/fdroid/repo/RepoAdder$fetchRepositoryInt$receiver$1;->$apps:Ljava/util/ArrayList;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppReceived(Lorg/fdroid/database/AppOverviewItem;)V
    .locals 9

    const-string v0, "app"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fdroid/repo/RepoAdder$fetchRepositoryInt$receiver$1;->$apps:Ljava/util/ArrayList;

    .line 165
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/fdroid/repo/RepoAdder$fetchRepositoryInt$receiver$1;->this$0:Lorg/fdroid/repo/RepoAdder;

    .line 166
    invoke-virtual {p1}, Lorg/fdroid/repo/RepoAdder;->getAddRepoState$database_release()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    new-instance v8, Lorg/fdroid/repo/Fetching;

    iget-object v1, p0, Lorg/fdroid/repo/RepoAdder$fetchRepositoryInt$receiver$1;->$fetchUrl:Ljava/lang/String;

    iget-object v0, p0, Lorg/fdroid/repo/RepoAdder$fetchRepositoryInt$receiver$1;->$receivedRepo:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lorg/fdroid/database/Repository;

    iget-object v0, p0, Lorg/fdroid/repo/RepoAdder$fetchRepositoryInt$receiver$1;->$apps:Ljava/util/ArrayList;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    iget-object v0, p0, Lorg/fdroid/repo/RepoAdder$fetchRepositoryInt$receiver$1;->$fetchResult:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lorg/fdroid/repo/FetchResult;

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/fdroid/repo/Fetching;-><init>(Ljava/lang/String;Lorg/fdroid/database/Repository;Ljava/util/List;Lorg/fdroid/repo/FetchResult;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p1, v8}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onRepoReceived(Lorg/fdroid/database/Repository;)V
    .locals 9

    const-string v0, "repo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fdroid/repo/RepoAdder$fetchRepositoryInt$receiver$1;->$receivedRepo:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 153
    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 154
    invoke-static {}, Lorg/fdroid/repo/KnownReposKt;->getKnownRepos()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lorg/fdroid/database/Repository;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    invoke-static {}, Lorg/fdroid/repo/KnownReposKt;->getKnownRepos()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lorg/fdroid/database/Repository;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 156
    invoke-virtual {p1}, Lorg/fdroid/database/Repository;->getFingerprint()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/fdroid/index/SigningException;

    .line 157
    invoke-virtual {p1}, Lorg/fdroid/database/Repository;->getFingerprint()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Known fingerprint different from given one: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 156
    invoke-direct {v0, p1}, Lorg/fdroid/index/SigningException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/fdroid/repo/RepoAdder$fetchRepositoryInt$receiver$1;->$fetchResult:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, p0, Lorg/fdroid/repo/RepoAdder$fetchRepositoryInt$receiver$1;->this$0:Lorg/fdroid/repo/RepoAdder;

    iget-object v2, p0, Lorg/fdroid/repo/RepoAdder$fetchRepositoryInt$receiver$1;->$fetchUrl:Ljava/lang/String;

    .line 160
    invoke-static {v1, v2, p1}, Lorg/fdroid/repo/RepoAdder;->access$getFetchResult(Lorg/fdroid/repo/RepoAdder;Ljava/lang/String;Lorg/fdroid/database/Repository;)Lorg/fdroid/repo/FetchResult;

    move-result-object p1

    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object p1, p0, Lorg/fdroid/repo/RepoAdder$fetchRepositoryInt$receiver$1;->this$0:Lorg/fdroid/repo/RepoAdder;

    .line 161
    invoke-virtual {p1}, Lorg/fdroid/repo/RepoAdder;->getAddRepoState$database_release()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    new-instance v8, Lorg/fdroid/repo/Fetching;

    iget-object v1, p0, Lorg/fdroid/repo/RepoAdder$fetchRepositoryInt$receiver$1;->$fetchUrl:Ljava/lang/String;

    iget-object v0, p0, Lorg/fdroid/repo/RepoAdder$fetchRepositoryInt$receiver$1;->$receivedRepo:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lorg/fdroid/database/Repository;

    iget-object v0, p0, Lorg/fdroid/repo/RepoAdder$fetchRepositoryInt$receiver$1;->$apps:Ljava/util/ArrayList;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    iget-object v0, p0, Lorg/fdroid/repo/RepoAdder$fetchRepositoryInt$receiver$1;->$fetchResult:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lorg/fdroid/repo/FetchResult;

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/fdroid/repo/Fetching;-><init>(Ljava/lang/String;Lorg/fdroid/database/Repository;Ljava/util/List;Lorg/fdroid/repo/FetchResult;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p1, v8}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method
