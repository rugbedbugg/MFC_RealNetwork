.class public final Lorg/fdroid/repo/RepoAdder$addArchiveRepo$2$receiver$1;
.super Ljava/lang/Object;
.source "RepoAdder.kt"

# interfaces
.implements Lorg/fdroid/repo/RepoPreviewReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/repo/RepoAdder$addArchiveRepo$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "org/fdroid/repo/RepoAdder$addArchiveRepo$2$receiver$1",
        "Lorg/fdroid/repo/RepoPreviewReceiver;",
        "onAppReceived",
        "",
        "app",
        "Lorg/fdroid/database/AppOverviewItem;",
        "onRepoReceived",
        "archiveRepo",
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
.field final synthetic $$this$withContext:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $archiveRepoId:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef;"
        }
    .end annotation
.end field

.field final synthetic $repo:Lorg/fdroid/database/Repository;

.field final synthetic this$0:Lorg/fdroid/repo/RepoAdder;


# direct methods
.method public static synthetic $r8$lambda$qVKBxfWyt1h7YW9ObnExgGXM7m8(Lorg/fdroid/repo/RepoAdder;Lorg/fdroid/database/NewRepository;Lorg/fdroid/database/Repository;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/fdroid/repo/RepoAdder$addArchiveRepo$2$receiver$1;->onRepoReceived$lambda$0(Lorg/fdroid/repo/RepoAdder;Lorg/fdroid/database/NewRepository;Lorg/fdroid/database/Repository;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    return-void
.end method

.method constructor <init>(Lorg/fdroid/repo/RepoAdder;Lkotlinx/coroutines/CoroutineScope;Lorg/fdroid/database/Repository;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fdroid/repo/RepoAdder;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lorg/fdroid/database/Repository;",
            "Lkotlin/jvm/internal/Ref$ObjectRef;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lorg/fdroid/repo/RepoAdder$addArchiveRepo$2$receiver$1;->this$0:Lorg/fdroid/repo/RepoAdder;

    iput-object p2, p0, Lorg/fdroid/repo/RepoAdder$addArchiveRepo$2$receiver$1;->$$this$withContext:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Lorg/fdroid/repo/RepoAdder$addArchiveRepo$2$receiver$1;->$repo:Lorg/fdroid/database/Repository;

    iput-object p4, p0, Lorg/fdroid/repo/RepoAdder$addArchiveRepo$2$receiver$1;->$archiveRepoId:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final onRepoReceived$lambda$0(Lorg/fdroid/repo/RepoAdder;Lorg/fdroid/database/NewRepository;Lorg/fdroid/database/Repository;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$newRepo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$repo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$archiveRepoId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 356
    invoke-static {p0}, Lorg/fdroid/repo/RepoAdder;->access$getRepositoryDao$p(Lorg/fdroid/repo/RepoAdder;)Lorg/fdroid/database/RepositoryDaoInt;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/fdroid/database/RepositoryDaoInt;->insert(Lorg/fdroid/database/NewRepository;)J

    move-result-wide v0

    .line 357
    invoke-static {p0}, Lorg/fdroid/repo/RepoAdder;->access$getRepositoryDao$p(Lorg/fdroid/repo/RepoAdder;)Lorg/fdroid/database/RepositoryDaoInt;

    move-result-object p0

    invoke-virtual {p2}, Lorg/fdroid/database/Repository;->getWeight()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p0, v0, v1, p1}, Lorg/fdroid/database/RepositoryDaoInt;->setWeight(JI)V

    .line 358
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iput-object p0, p3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onAppReceived(Lorg/fdroid/database/AppOverviewItem;)V
    .locals 1

    .line 0
    const-string v0, "app"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onRepoReceived(Lorg/fdroid/database/Repository;)V
    .locals 9

    const-string v0, "archiveRepo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 346
    new-instance v0, Lorg/fdroid/database/NewRepository;

    .line 347
    invoke-virtual {p1}, Lorg/fdroid/database/Repository;->getRepository$database_release()Lorg/fdroid/database/CoreRepository;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fdroid/database/CoreRepository;->getName()Ljava/util/Map;

    move-result-object v2

    .line 348
    invoke-virtual {p1}, Lorg/fdroid/database/Repository;->getRepository$database_release()Lorg/fdroid/database/CoreRepository;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fdroid/database/CoreRepository;->getIcon()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v1

    :cond_0
    move-object v3, v1

    .line 349
    invoke-virtual {p1}, Lorg/fdroid/database/Repository;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 350
    invoke-virtual {p1}, Lorg/fdroid/database/Repository;->getFormatVersion()Lorg/fdroid/index/IndexFormatVersion;

    move-result-object v5

    .line 351
    invoke-virtual {p1}, Lorg/fdroid/database/Repository;->getCertificate()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 352
    invoke-virtual {p1}, Lorg/fdroid/database/Repository;->getUsername()Ljava/lang/String;

    move-result-object v7

    .line 353
    invoke-virtual {p1}, Lorg/fdroid/database/Repository;->getPassword()Ljava/lang/String;

    move-result-object v8

    move-object v1, v0

    .line 346
    invoke-direct/range {v1 .. v8}, Lorg/fdroid/database/NewRepository;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lorg/fdroid/index/IndexFormatVersion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/fdroid/repo/RepoAdder$addArchiveRepo$2$receiver$1;->this$0:Lorg/fdroid/repo/RepoAdder;

    .line 355
    invoke-static {p1}, Lorg/fdroid/repo/RepoAdder;->access$getDb$p(Lorg/fdroid/repo/RepoAdder;)Lorg/fdroid/database/FDroidDatabase;

    move-result-object p1

    iget-object v1, p0, Lorg/fdroid/repo/RepoAdder$addArchiveRepo$2$receiver$1;->this$0:Lorg/fdroid/repo/RepoAdder;

    iget-object v2, p0, Lorg/fdroid/repo/RepoAdder$addArchiveRepo$2$receiver$1;->$repo:Lorg/fdroid/database/Repository;

    iget-object v3, p0, Lorg/fdroid/repo/RepoAdder$addArchiveRepo$2$receiver$1;->$archiveRepoId:Lkotlin/jvm/internal/Ref$ObjectRef;

    new-instance v4, Lorg/fdroid/repo/RepoAdder$addArchiveRepo$2$receiver$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1, v0, v2, v3}, Lorg/fdroid/repo/RepoAdder$addArchiveRepo$2$receiver$1$$ExternalSyntheticLambda0;-><init>(Lorg/fdroid/repo/RepoAdder;Lorg/fdroid/database/NewRepository;Lorg/fdroid/database/Repository;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-interface {p1, v4}, Lorg/fdroid/database/FDroidDatabase;->runInTransaction(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lorg/fdroid/repo/RepoAdder$addArchiveRepo$2$receiver$1;->$$this$withContext:Lkotlinx/coroutines/CoroutineScope;

    const-string v0, "expected"

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 360
    invoke-static {p1, v0, v2, v1, v2}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel$default(Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void

    .line 351
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Repo had no certificate"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
