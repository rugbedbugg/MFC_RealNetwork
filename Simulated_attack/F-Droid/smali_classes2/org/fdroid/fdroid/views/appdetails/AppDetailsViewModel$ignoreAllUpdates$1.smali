.class final Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel$ignoreAllUpdates$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AppDetailsViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->ignoreAllUpdates()Lkotlinx/coroutines/Job;
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
    c = "org.fdroid.fdroid.views.appdetails.AppDetailsViewModel$ignoreAllUpdates$1"
    f = "AppDetailsViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;


# direct methods
.method constructor <init>(Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel$ignoreAllUpdates$1;->this$0:Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;

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
    new-instance p1, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel$ignoreAllUpdates$1;

    iget-object v0, p0, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel$ignoreAllUpdates$1;->this$0:Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;

    invoke-direct {p1, v0, p2}, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel$ignoreAllUpdates$1;-><init>(Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel$ignoreAllUpdates$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel$ignoreAllUpdates$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel$ignoreAllUpdates$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel$ignoreAllUpdates$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    iget v0, p0, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel$ignoreAllUpdates$1;->label:I

    if-nez v0, :cond_2

    .line 141
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel$ignoreAllUpdates$1;->this$0:Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;

    .line 142
    invoke-static {p1}, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->access$getAppPrefsLiveData$p(Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fdroid/database/AppPrefs;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel$ignoreAllUpdates$1;->this$0:Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;

    .line 143
    invoke-static {v0}, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;->access$getDb$p(Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;)Lorg/fdroid/database/FDroidDatabase;

    move-result-object v0

    invoke-interface {v0}, Lorg/fdroid/database/FDroidDatabase;->getAppPrefsDao()Lorg/fdroid/database/AppPrefsDao;

    move-result-object v0

    invoke-virtual {p1}, Lorg/fdroid/database/AppPrefs;->toggleIgnoreAllUpdates()Lorg/fdroid/database/AppPrefs;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/fdroid/database/AppPrefsDao;->update(Lorg/fdroid/database/AppPrefs;)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel$ignoreAllUpdates$1;->this$0:Lorg/fdroid/fdroid/views/appdetails/AppDetailsViewModel;

    .line 144
    invoke-virtual {p1}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->getInstance(Landroid/content/Context;)Lorg/fdroid/fdroid/AppUpdateStatusManager;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->checkForUpdates()V

    .line 145
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 142
    :cond_1
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 141
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
