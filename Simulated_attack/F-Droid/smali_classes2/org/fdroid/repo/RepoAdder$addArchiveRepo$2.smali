.class final Lorg/fdroid/repo/RepoAdder$addArchiveRepo$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RepoAdder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/repo/RepoAdder;->addArchiveRepo$database_release(Lorg/fdroid/database/Repository;Ljava/net/Proxy;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $proxy:Ljava/net/Proxy;

.field final synthetic $repo:Lorg/fdroid/database/Repository;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lorg/fdroid/repo/RepoAdder;


# direct methods
.method constructor <init>(Lorg/fdroid/database/Repository;Lorg/fdroid/repo/RepoAdder;Ljava/net/Proxy;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/fdroid/repo/RepoAdder$addArchiveRepo$2;->$repo:Lorg/fdroid/database/Repository;

    iput-object p2, p0, Lorg/fdroid/repo/RepoAdder$addArchiveRepo$2;->this$0:Lorg/fdroid/repo/RepoAdder;

    iput-object p3, p0, Lorg/fdroid/repo/RepoAdder$addArchiveRepo$2;->$proxy:Ljava/net/Proxy;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4

    .line 0
    new-instance v0, Lorg/fdroid/repo/RepoAdder$addArchiveRepo$2;

    iget-object v1, p0, Lorg/fdroid/repo/RepoAdder$addArchiveRepo$2;->$repo:Lorg/fdroid/database/Repository;

    iget-object v2, p0, Lorg/fdroid/repo/RepoAdder$addArchiveRepo$2;->this$0:Lorg/fdroid/repo/RepoAdder;

    iget-object v3, p0, Lorg/fdroid/repo/RepoAdder$addArchiveRepo$2;->$proxy:Ljava/net/Proxy;

    invoke-direct {v0, v1, v2, v3, p2}, Lorg/fdroid/repo/RepoAdder$addArchiveRepo$2;-><init>(Lorg/fdroid/database/Repository;Lorg/fdroid/repo/RepoAdder;Ljava/net/Proxy;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lorg/fdroid/repo/RepoAdder$addArchiveRepo$2;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/fdroid/repo/RepoAdder$addArchiveRepo$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lorg/fdroid/repo/RepoAdder$addArchiveRepo$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lorg/fdroid/repo/RepoAdder$addArchiveRepo$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lorg/fdroid/repo/RepoAdder$addArchiveRepo$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lorg/fdroid/repo/RepoAdder$addArchiveRepo$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lorg/fdroid/repo/RepoAdder$addArchiveRepo$2;->L$0:Ljava/lang/Object;

    .line 335
    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/fdroid/repo/RepoAdder$addArchiveRepo$2;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iget-object v1, p0, Lorg/fdroid/repo/RepoAdder$addArchiveRepo$2;->$repo:Lorg/fdroid/database/Repository;

    .line 336
    invoke-virtual {v1}, Lorg/fdroid/database/Repository;->isArchiveRepo()Z

    move-result v1

    if-nez v1, :cond_3

    .line 338
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v3, p0, Lorg/fdroid/repo/RepoAdder$addArchiveRepo$2;->$repo:Lorg/fdroid/database/Repository;

    .line 339
    invoke-virtual {v3}, Lorg/fdroid/database/Repository;->getAddress()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lkotlin/text/Regex;

    const-string v5, "repo/?$"

    invoke-direct {v4, v5}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v5, "archive"

    invoke-virtual {v4, v3, v5}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 342
    new-instance v10, Lorg/fdroid/repo/RepoAdder$addArchiveRepo$2$receiver$1;

    iget-object v4, p0, Lorg/fdroid/repo/RepoAdder$addArchiveRepo$2;->this$0:Lorg/fdroid/repo/RepoAdder;

    iget-object v5, p0, Lorg/fdroid/repo/RepoAdder$addArchiveRepo$2;->$repo:Lorg/fdroid/database/Repository;

    invoke-direct {v10, v4, p1, v5, v1}, Lorg/fdroid/repo/RepoAdder$addArchiveRepo$2$receiver$1;-><init>(Lorg/fdroid/repo/RepoAdder;Lkotlinx/coroutines/CoroutineScope;Lorg/fdroid/database/Repository;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 367
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v4, p0, Lorg/fdroid/repo/RepoAdder$addArchiveRepo$2;->this$0:Lorg/fdroid/repo/RepoAdder;

    .line 368
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/fdroid/repo/RepoAdder$addArchiveRepo$2;->$repo:Lorg/fdroid/database/Repository;

    invoke-virtual {p1}, Lorg/fdroid/database/Repository;->getFingerprint()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/fdroid/repo/RepoAdder$addArchiveRepo$2;->$proxy:Ljava/net/Proxy;

    iget-object p1, p0, Lorg/fdroid/repo/RepoAdder$addArchiveRepo$2;->$repo:Lorg/fdroid/database/Repository;

    invoke-virtual {p1}, Lorg/fdroid/database/Repository;->getUsername()Ljava/lang/String;

    move-result-object v8

    iget-object p1, p0, Lorg/fdroid/repo/RepoAdder$addArchiveRepo$2;->$repo:Lorg/fdroid/database/Repository;

    invoke-virtual {p1}, Lorg/fdroid/database/Repository;->getPassword()Ljava/lang/String;

    move-result-object v9

    iput-object v1, p0, Lorg/fdroid/repo/RepoAdder$addArchiveRepo$2;->L$0:Ljava/lang/Object;

    iput v2, p0, Lorg/fdroid/repo/RepoAdder$addArchiveRepo$2;->label:I

    move-object v11, p0

    invoke-static/range {v4 .. v11}, Lorg/fdroid/repo/RepoAdder;->access$fetchRepo(Lorg/fdroid/repo/RepoAdder;Landroid/net/Uri;Ljava/lang/String;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;Lorg/fdroid/repo/RepoPreviewReceiver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, v1

    .line 369
    :goto_0
    iget-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-object p1

    .line 336
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    iget-object v0, p0, Lorg/fdroid/repo/RepoAdder$addArchiveRepo$2;->$repo:Lorg/fdroid/database/Repository;

    invoke-virtual {v0}, Lorg/fdroid/database/Repository;->getAddress()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Repo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is already an archive repo."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
