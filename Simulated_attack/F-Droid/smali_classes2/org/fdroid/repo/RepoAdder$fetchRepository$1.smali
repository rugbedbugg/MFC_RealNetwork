.class final Lorg/fdroid/repo/RepoAdder$fetchRepository$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RepoAdder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/repo/RepoAdder;->fetchRepository$database_release(Ljava/lang/String;Ljava/net/Proxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $proxy:Ljava/net/Proxy;

.field final synthetic $url:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lorg/fdroid/repo/RepoAdder;


# direct methods
.method constructor <init>(Lorg/fdroid/repo/RepoAdder;Ljava/lang/String;Ljava/net/Proxy;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/fdroid/repo/RepoAdder$fetchRepository$1;->this$0:Lorg/fdroid/repo/RepoAdder;

    iput-object p2, p0, Lorg/fdroid/repo/RepoAdder$fetchRepository$1;->$url:Ljava/lang/String;

    iput-object p3, p0, Lorg/fdroid/repo/RepoAdder$fetchRepository$1;->$proxy:Ljava/net/Proxy;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    .line 0
    new-instance p1, Lorg/fdroid/repo/RepoAdder$fetchRepository$1;

    iget-object v0, p0, Lorg/fdroid/repo/RepoAdder$fetchRepository$1;->this$0:Lorg/fdroid/repo/RepoAdder;

    iget-object v1, p0, Lorg/fdroid/repo/RepoAdder$fetchRepository$1;->$url:Ljava/lang/String;

    iget-object v2, p0, Lorg/fdroid/repo/RepoAdder$fetchRepository$1;->$proxy:Ljava/net/Proxy;

    invoke-direct {p1, v0, v1, v2, p2}, Lorg/fdroid/repo/RepoAdder$fetchRepository$1;-><init>(Lorg/fdroid/repo/RepoAdder;Ljava/lang/String;Ljava/net/Proxy;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/fdroid/repo/RepoAdder$fetchRepository$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lorg/fdroid/repo/RepoAdder$fetchRepository$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lorg/fdroid/repo/RepoAdder$fetchRepository$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lorg/fdroid/repo/RepoAdder$fetchRepository$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lorg/fdroid/repo/RepoAdder$fetchRepository$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    .line 115
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/fdroid/repo/RepoAdder$fetchRepository$1;->this$0:Lorg/fdroid/repo/RepoAdder;

    iget-object v1, p0, Lorg/fdroid/repo/RepoAdder$fetchRepository$1;->$url:Ljava/lang/String;

    iget-object v3, p0, Lorg/fdroid/repo/RepoAdder$fetchRepository$1;->$proxy:Ljava/net/Proxy;

    iput v2, p0, Lorg/fdroid/repo/RepoAdder$fetchRepository$1;->label:I

    .line 116
    invoke-virtual {p1, v1, v3, p0}, Lorg/fdroid/repo/RepoAdder;->fetchRepositoryInt$database_release(Ljava/lang/String;Ljava/net/Proxy;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 117
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
