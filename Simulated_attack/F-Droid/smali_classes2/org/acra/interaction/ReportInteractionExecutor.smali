.class public final Lorg/acra/interaction/ReportInteractionExecutor;
.super Ljava/lang/Object;
.source "ReportInteractionExecutor.kt"


# instance fields
.field private final config:Lorg/acra/config/CoreConfiguration;

.field private final context:Landroid/content/Context;

.field private final reportInteractions:Ljava/util/List;


# direct methods
.method public static synthetic $r8$lambda$XxbE04P1atFd9l_vyYmPLWgTl20(Lorg/acra/interaction/ReportInteraction;Lorg/acra/interaction/ReportInteractionExecutor;Ljava/io/File;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/acra/interaction/ReportInteractionExecutor;->performInteractions$lambda$2$lambda$1(Lorg/acra/interaction/ReportInteraction;Lorg/acra/interaction/ReportInteractionExecutor;Ljava/io/File;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/acra/interaction/ReportInteractionExecutor;->context:Landroid/content/Context;

    iput-object p2, p0, Lorg/acra/interaction/ReportInteractionExecutor;->config:Lorg/acra/config/CoreConfiguration;

    .line 35
    invoke-virtual {p2}, Lorg/acra/config/CoreConfiguration;->getPluginLoader()Lorg/acra/plugins/PluginLoader;

    move-result-object p1

    const-class v0, Lorg/acra/interaction/ReportInteraction;

    .line 30
    invoke-interface {p1, p2, v0}, Lorg/acra/plugins/PluginLoader;->loadEnabled(Lorg/acra/config/CoreConfiguration;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/acra/interaction/ReportInteractionExecutor;->reportInteractions:Ljava/util/List;

    return-void
.end method

.method private static final performInteractions$lambda$2$lambda$1(Lorg/acra/interaction/ReportInteraction;Lorg/acra/interaction/ReportInteractionExecutor;Ljava/io/File;)Ljava/lang/Boolean;
    .locals 5

    const-string v0, "$it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$reportFile"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget-boolean v0, Lorg/acra/ACRA;->DEV_LOGGING:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling ReportInteraction of class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-interface {v0, v1, v2}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_0
    iget-object v0, p1, Lorg/acra/interaction/ReportInteractionExecutor;->context:Landroid/content/Context;

    iget-object p1, p1, Lorg/acra/interaction/ReportInteractionExecutor;->config:Lorg/acra/config/CoreConfiguration;

    invoke-interface {p0, v0, p1, p2}, Lorg/acra/interaction/ReportInteraction;->performInteraction(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;Ljava/io/File;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final hasInteractions()Z
    .locals 1

    iget-object v0, p0, Lorg/acra/interaction/ReportInteractionExecutor;->reportInteractions:Ljava/util/List;

    .line 36
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final performInteractions(Ljava/io/File;)Z
    .locals 5

    const-string v0, "reportFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iget-object v1, p0, Lorg/acra/interaction/ReportInteractionExecutor;->reportInteractions:Ljava/util/List;

    .line 1549
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1621
    check-cast v3, Lorg/acra/interaction/ReportInteraction;

    .line 41
    new-instance v4, Lorg/acra/interaction/ReportInteractionExecutor$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3, p0, p1}, Lorg/acra/interaction/ReportInteractionExecutor$$ExternalSyntheticLambda0;-><init>(Lorg/acra/interaction/ReportInteraction;Lorg/acra/interaction/ReportInteractionExecutor;Ljava/io/File;)V

    invoke-interface {v0, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v3

    .line 1621
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 47
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    .line 50
    :cond_1
    :try_start_0
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "get(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr v0, v2

    goto :goto_2

    :catch_0
    move-exception v1

    .line 19
    sget-object v2, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v3, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Report interaction threw exception, will be ignored."

    invoke-interface {v2, v3, v4, v1}, Lorg/acra/log/ACRALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 57
    :catch_1
    :goto_2
    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_2
    return v0
.end method
