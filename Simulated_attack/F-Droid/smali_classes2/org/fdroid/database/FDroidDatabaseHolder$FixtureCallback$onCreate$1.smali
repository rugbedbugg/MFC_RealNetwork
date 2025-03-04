.class final Lorg/fdroid/database/FDroidDatabaseHolder$FixtureCallback$onCreate$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "FDroidDatabaseHolder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/database/FDroidDatabaseHolder$FixtureCallback;->onCreate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lorg/fdroid/database/FDroidDatabaseHolder$FixtureCallback;


# direct methods
.method constructor <init>(Lorg/fdroid/database/FDroidDatabaseHolder$FixtureCallback;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/fdroid/database/FDroidDatabaseHolder$FixtureCallback$onCreate$1;->this$0:Lorg/fdroid/database/FDroidDatabaseHolder$FixtureCallback;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 0
    new-instance p1, Lorg/fdroid/database/FDroidDatabaseHolder$FixtureCallback$onCreate$1;

    iget-object v0, p0, Lorg/fdroid/database/FDroidDatabaseHolder$FixtureCallback$onCreate$1;->this$0:Lorg/fdroid/database/FDroidDatabaseHolder$FixtureCallback;

    invoke-direct {p1, v0, p2}, Lorg/fdroid/database/FDroidDatabaseHolder$FixtureCallback$onCreate$1;-><init>(Lorg/fdroid/database/FDroidDatabaseHolder$FixtureCallback;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/fdroid/database/FDroidDatabaseHolder$FixtureCallback$onCreate$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lorg/fdroid/database/FDroidDatabaseHolder$FixtureCallback$onCreate$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lorg/fdroid/database/FDroidDatabaseHolder$FixtureCallback$onCreate$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lorg/fdroid/database/FDroidDatabaseHolder$FixtureCallback$onCreate$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    iget v0, p0, Lorg/fdroid/database/FDroidDatabaseHolder$FixtureCallback$onCreate$1;->label:I

    if-nez v0, :cond_1

    .line 79
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 80
    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 81
    invoke-static {}, Lorg/fdroid/database/FDroidDatabaseHolder;->access$getLock$p()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 82
    :try_start_0
    invoke-static {}, Lorg/fdroid/database/FDroidDatabaseHolder;->access$getINSTANCE$p()Lorg/fdroid/database/FDroidDatabaseInt;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object v1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 83
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    monitor-exit v0

    iget-object v0, p0, Lorg/fdroid/database/FDroidDatabaseHolder$FixtureCallback$onCreate$1;->this$0:Lorg/fdroid/database/FDroidDatabaseHolder$FixtureCallback;

    .line 84
    invoke-static {v0}, Lorg/fdroid/database/FDroidDatabaseHolder$FixtureCallback;->access$getFixture$p(Lorg/fdroid/database/FDroidDatabaseHolder$FixtureCallback;)Lorg/fdroid/database/FDroidFixture;

    move-result-object v0

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lorg/fdroid/database/FDroidDatabase;

    invoke-interface {v0, p1}, Lorg/fdroid/database/FDroidFixture;->prePopulateDb(Lorg/fdroid/database/FDroidDatabase;)V

    .line 85
    sget-object p1, Lorg/fdroid/database/FDroidDatabaseHolder;->INSTANCE:Lorg/fdroid/database/FDroidDatabaseHolder;

    invoke-virtual {p1}, Lorg/fdroid/database/FDroidDatabaseHolder;->getTAG$database_release()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Loaded fixtures"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 82
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "DB not yet initialized"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    :goto_0
    monitor-exit v0

    throw p1

    .line 79
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
