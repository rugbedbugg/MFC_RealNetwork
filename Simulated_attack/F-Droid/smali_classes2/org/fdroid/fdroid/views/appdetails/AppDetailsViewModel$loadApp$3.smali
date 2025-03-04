.class final Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel$loadApp$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AppDetailsViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->loadApp(Ljava/lang/String;)V
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
    c = "org.fdroid.fdroid.views.appdetails.AppDetailsViewModel$loadApp$3"
    f = "AppDetailsViewModel.kt"
    l = {
        0x42
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $packageName:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;


# direct methods
.method constructor <init>(Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel$loadApp$3;->this$0:Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;

    iput-object p2, p0, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel$loadApp$3;->$packageName:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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
    new-instance p1, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel$loadApp$3;

    iget-object v0, p0, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel$loadApp$3;->this$0:Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel$loadApp$3;->$packageName:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel$loadApp$3;-><init>(Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel$loadApp$3;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel$loadApp$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel$loadApp$3;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel$loadApp$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel$loadApp$3;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    .line 65
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel$loadApp$3;->this$0:Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel$loadApp$3;->$packageName:Ljava/lang/String;

    iput v2, p0, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel$loadApp$3;->label:I

    .line 66
    invoke-static {p1, v1, p0}, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->access$loadRepos(Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 67
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
