.class public final Lorg/acra/startup/StartupProcessorExecutor;
.super Ljava/lang/Object;
.source "StartupProcessorExecutor.kt"


# instance fields
.field private final config:Lorg/acra/config/CoreConfiguration;

.field private final context:Landroid/content/Context;

.field private final fileNameParser:Lorg/acra/file/CrashReportFileNameParser;

.field private final reportLocator:Lorg/acra/file/ReportLocator;

.field private final schedulerStarter:Lorg/acra/scheduler/SchedulerStarter;


# direct methods
.method public static synthetic $r8$lambda$LK61ILz0qM6dPNH2J6guur40K2U(Lorg/acra/startup/StartupProcessorExecutor;Ljava/util/Calendar;Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/acra/startup/StartupProcessorExecutor;->processReports$lambda$6$lambda$5(Lorg/acra/startup/StartupProcessorExecutor;Ljava/util/Calendar;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$z7hQmSVEW7iMSuVuR2Rf5o3HZyg(Lorg/acra/startup/StartupProcessorExecutor;Ljava/util/Calendar;Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/acra/startup/StartupProcessorExecutor;->processReports$lambda$6(Lorg/acra/startup/StartupProcessorExecutor;Ljava/util/Calendar;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;Lorg/acra/scheduler/SchedulerStarter;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulerStarter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/acra/startup/StartupProcessorExecutor;->context:Landroid/content/Context;

    iput-object p2, p0, Lorg/acra/startup/StartupProcessorExecutor;->config:Lorg/acra/config/CoreConfiguration;

    iput-object p3, p0, Lorg/acra/startup/StartupProcessorExecutor;->schedulerStarter:Lorg/acra/scheduler/SchedulerStarter;

    .line 34
    new-instance p2, Lorg/acra/file/ReportLocator;

    invoke-direct {p2, p1}, Lorg/acra/file/ReportLocator;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/acra/startup/StartupProcessorExecutor;->reportLocator:Lorg/acra/file/ReportLocator;

    .line 35
    new-instance p1, Lorg/acra/file/CrashReportFileNameParser;

    invoke-direct {p1}, Lorg/acra/file/CrashReportFileNameParser;-><init>()V

    iput-object p1, p0, Lorg/acra/startup/StartupProcessorExecutor;->fileNameParser:Lorg/acra/file/CrashReportFileNameParser;

    return-void
.end method

.method private static final processReports$lambda$6(Lorg/acra/startup/StartupProcessorExecutor;Ljava/util/Calendar;Z)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    new-instance v0, Ljava/lang/Thread;

    .line 62
    new-instance v1, Lorg/acra/startup/StartupProcessorExecutor$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lorg/acra/startup/StartupProcessorExecutor$$ExternalSyntheticLambda1;-><init>(Lorg/acra/startup/StartupProcessorExecutor;Ljava/util/Calendar;Z)V

    .line 41
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 62
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static final processReports$lambda$6$lambda$5(Lorg/acra/startup/StartupProcessorExecutor;Ljava/util/Calendar;Z)V
    .locals 9

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lorg/acra/startup/StartupProcessorExecutor;->reportLocator:Lorg/acra/file/ReportLocator;

    invoke-virtual {v0}, Lorg/acra/file/ReportLocator;->getUnapprovedReports()[Ljava/io/File;

    move-result-object v0

    .line 11065
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 11400
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v0, v4

    .line 42
    new-instance v6, Lorg/acra/startup/Report;

    invoke-direct {v6, v5, v3}, Lorg/acra/startup/Report;-><init>(Ljava/io/File;Z)V

    .line 11401
    invoke-interface {v1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 42
    :cond_0
    iget-object v0, p0, Lorg/acra/startup/StartupProcessorExecutor;->reportLocator:Lorg/acra/file/ReportLocator;

    invoke-virtual {v0}, Lorg/acra/file/ReportLocator;->getApprovedReports()[Ljava/io/File;

    move-result-object v0

    .line 11065
    new-instance v2, Ljava/util/ArrayList;

    array-length v4, v0

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 11400
    array-length v4, v0

    move v5, v3

    :goto_1
    const/4 v6, 0x1

    if-ge v5, v4, :cond_1

    aget-object v7, v0, v5

    .line 42
    new-instance v8, Lorg/acra/startup/Report;

    invoke-direct {v8, v7, v6}, Lorg/acra/startup/Report;-><init>(Ljava/io/File;Z)V

    .line 11401
    invoke-interface {v2, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 42
    :cond_1
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 43
    iget-object v1, p0, Lorg/acra/startup/StartupProcessorExecutor;->config:Lorg/acra/config/CoreConfiguration;

    invoke-virtual {v1}, Lorg/acra/config/CoreConfiguration;->getPluginLoader()Lorg/acra/plugins/PluginLoader;

    move-result-object v1

    iget-object v2, p0, Lorg/acra/startup/StartupProcessorExecutor;->config:Lorg/acra/config/CoreConfiguration;

    const-class v4, Lorg/acra/startup/StartupProcessor;

    .line 30
    invoke-interface {v1, v2, v4}, Lorg/acra/plugins/PluginLoader;->loadEnabled(Lorg/acra/config/CoreConfiguration;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 1855
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/acra/startup/StartupProcessor;

    .line 43
    iget-object v4, p0, Lorg/acra/startup/StartupProcessorExecutor;->context:Landroid/content/Context;

    iget-object v5, p0, Lorg/acra/startup/StartupProcessorExecutor;->config:Lorg/acra/config/CoreConfiguration;

    invoke-interface {v2, v4, v5, v0}, Lorg/acra/startup/StartupProcessor;->processReports(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;Ljava/util/List;)V

    goto :goto_2

    .line 45
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v3

    :cond_3
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/acra/startup/Report;

    .line 47
    iget-object v4, p0, Lorg/acra/startup/StartupProcessorExecutor;->fileNameParser:Lorg/acra/file/CrashReportFileNameParser;

    invoke-virtual {v2}, Lorg/acra/startup/Report;->getFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v7, "getName(...)"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lorg/acra/file/CrashReportFileNameParser;->getTimestamp(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 49
    invoke-virtual {v2}, Lorg/acra/startup/Report;->getDelete()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v2}, Lorg/acra/startup/Report;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_3

    .line 15
    sget-object v4, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v5, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    .line 49
    invoke-virtual {v2}, Lorg/acra/startup/Report;->getFile()Ljava/io/File;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not delete report "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-interface {v4, v5, v2}, Lorg/acra/log/ACRALog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 50
    :cond_4
    invoke-virtual {v2}, Lorg/acra/startup/Report;->getApproved()Z

    move-result v4

    if-eqz v4, :cond_5

    move v1, v6

    goto :goto_3

    .line 51
    :cond_5
    invoke-virtual {v2}, Lorg/acra/startup/Report;->getApprove()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz p2, :cond_3

    .line 52
    new-instance v4, Lorg/acra/interaction/ReportInteractionExecutor;

    iget-object v5, p0, Lorg/acra/startup/StartupProcessorExecutor;->context:Landroid/content/Context;

    iget-object v7, p0, Lorg/acra/startup/StartupProcessorExecutor;->config:Lorg/acra/config/CoreConfiguration;

    invoke-direct {v4, v5, v7}, Lorg/acra/interaction/ReportInteractionExecutor;-><init>(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;)V

    invoke-virtual {v2}, Lorg/acra/startup/Report;->getFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/acra/interaction/ReportInteractionExecutor;->performInteractions(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 53
    iget-object v4, p0, Lorg/acra/startup/StartupProcessorExecutor;->schedulerStarter:Lorg/acra/scheduler/SchedulerStarter;

    invoke-virtual {v2}, Lorg/acra/startup/Report;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v4, v2, v3}, Lorg/acra/scheduler/SchedulerStarter;->scheduleReports(Ljava/io/File;Z)V

    goto :goto_3

    :cond_6
    if-eqz v1, :cond_7

    if-eqz p2, :cond_7

    .line 60
    iget-object p0, p0, Lorg/acra/startup/StartupProcessorExecutor;->schedulerStarter:Lorg/acra/scheduler/SchedulerStarter;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v3}, Lorg/acra/scheduler/SchedulerStarter;->scheduleReports(Ljava/io/File;Z)V

    :cond_7
    return-void
.end method


# virtual methods
.method public final processReports(Z)V
    .locals 3

    .line 38
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xc

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 40
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lorg/acra/startup/StartupProcessorExecutor;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lorg/acra/startup/StartupProcessorExecutor$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, p1}, Lorg/acra/startup/StartupProcessorExecutor$$ExternalSyntheticLambda0;-><init>(Lorg/acra/startup/StartupProcessorExecutor;Ljava/util/Calendar;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
