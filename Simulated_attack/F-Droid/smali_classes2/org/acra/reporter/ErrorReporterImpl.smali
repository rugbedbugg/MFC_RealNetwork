.class public final Lorg/acra/reporter/ErrorReporterImpl;
.super Ljava/lang/Object;
.source "ErrorReporterImpl.kt"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lorg/acra/ErrorReporter;


# instance fields
.field private final context:Landroid/app/Application;

.field private final customData:Ljava/util/Map;

.field private final defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final reportExecutor:Lorg/acra/builder/ReportExecutor;

.field private final schedulerStarter:Lorg/acra/scheduler/SchedulerStarter;

.field private final supportedAndroidVersion:Z


# direct methods
.method public constructor <init>(Landroid/app/Application;Lorg/acra/config/CoreConfiguration;ZZZ)V
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/acra/reporter/ErrorReporterImpl;->context:Landroid/app/Application;

    iput-boolean p4, p0, Lorg/acra/reporter/ErrorReporterImpl;->supportedAndroidVersion:Z

    .line 62
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    iput-object p4, p0, Lorg/acra/reporter/ErrorReporterImpl;->customData:Ljava/util/Map;

    .line 160
    new-instance v3, Lorg/acra/data/CrashReportDataFactory;

    invoke-direct {v3, p1, p2}, Lorg/acra/data/CrashReportDataFactory;-><init>(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;)V

    .line 161
    invoke-virtual {v3}, Lorg/acra/data/CrashReportDataFactory;->collectStartUp()V

    .line 162
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v4

    iput-object v4, p0, Lorg/acra/reporter/ErrorReporterImpl;->defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 163
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 164
    new-instance v7, Lorg/acra/builder/LastActivityManager;

    invoke-direct {v7, p1}, Lorg/acra/builder/LastActivityManager;-><init>(Landroid/app/Application;)V

    .line 165
    new-instance v5, Lorg/acra/util/ProcessFinisher;

    invoke-direct {v5, p1, p2, v7}, Lorg/acra/util/ProcessFinisher;-><init>(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;Lorg/acra/builder/LastActivityManager;)V

    .line 166
    new-instance p4, Lorg/acra/scheduler/SchedulerStarter;

    invoke-direct {p4, p1, p2}, Lorg/acra/scheduler/SchedulerStarter;-><init>(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;)V

    iput-object p4, p0, Lorg/acra/reporter/ErrorReporterImpl;->schedulerStarter:Lorg/acra/scheduler/SchedulerStarter;

    .line 167
    new-instance v8, Lorg/acra/builder/ReportExecutor;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lorg/acra/builder/ReportExecutor;-><init>(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;Lorg/acra/data/CrashReportDataFactory;Ljava/lang/Thread$UncaughtExceptionHandler;Lorg/acra/util/ProcessFinisher;Lorg/acra/scheduler/SchedulerStarter;Lorg/acra/builder/LastActivityManager;)V

    iput-object v8, p0, Lorg/acra/reporter/ErrorReporterImpl;->reportExecutor:Lorg/acra/builder/ReportExecutor;

    .line 168
    invoke-virtual {v8, p3}, Lorg/acra/builder/ReportExecutor;->setEnabled(Z)V

    if-eqz p5, :cond_0

    .line 172
    new-instance p5, Lorg/acra/startup/StartupProcessorExecutor;

    invoke-direct {p5, p1, p2, p4}, Lorg/acra/startup/StartupProcessorExecutor;-><init>(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;Lorg/acra/scheduler/SchedulerStarter;)V

    invoke-virtual {p5, p3}, Lorg/acra/startup/StartupProcessorExecutor;->processReports(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public handleException(Ljava/lang/Throwable;Z)V
    .locals 2

    .line 131
    new-instance v0, Lorg/acra/builder/ReportBuilder;

    invoke-direct {v0}, Lorg/acra/builder/ReportBuilder;-><init>()V

    .line 132
    invoke-virtual {v0, p1}, Lorg/acra/builder/ReportBuilder;->exception(Ljava/lang/Throwable;)Lorg/acra/builder/ReportBuilder;

    move-result-object p1

    iget-object v1, p0, Lorg/acra/reporter/ErrorReporterImpl;->customData:Ljava/util/Map;

    .line 133
    invoke-virtual {p1, v1}, Lorg/acra/builder/ReportBuilder;->customData(Ljava/util/Map;)Lorg/acra/builder/ReportBuilder;

    if-eqz p2, :cond_0

    .line 135
    invoke-virtual {v0}, Lorg/acra/builder/ReportBuilder;->endApplication()Lorg/acra/builder/ReportBuilder;

    :cond_0
    iget-object p1, p0, Lorg/acra/reporter/ErrorReporterImpl;->reportExecutor:Lorg/acra/builder/ReportExecutor;

    .line 137
    invoke-virtual {v0, p1}, Lorg/acra/builder/ReportBuilder;->build(Lorg/acra/builder/ReportExecutor;)V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    const-string v0, "sharedPreferences"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "acra.disable"

    .line 148
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "acra.enable"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 149
    :cond_0
    sget-object p2, Lorg/acra/prefs/SharedPreferencesFactory;->Companion:Lorg/acra/prefs/SharedPreferencesFactory$Companion;

    invoke-virtual {p2, p1}, Lorg/acra/prefs/SharedPreferencesFactory$Companion;->shouldEnableACRA(Landroid/content/SharedPreferences;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/acra/reporter/ErrorReporterImpl;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 6

    iget-boolean v0, p0, Lorg/acra/reporter/ErrorReporterImpl;->supportedAndroidVersion:Z

    if-eqz v0, :cond_1

    .line 11
    sget-object v0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string v2, "enabled"

    goto :goto_0

    :cond_0
    const-string v2, "disabled"

    :goto_0
    iget-object v3, p0, Lorg/acra/reporter/ErrorReporterImpl;->context:Landroid/app/Application;

    .line 123
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACRA is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-interface {v0, v1, v2}, Lorg/acra/log/ACRALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/acra/reporter/ErrorReporterImpl;->reportExecutor:Lorg/acra/builder/ReportExecutor;

    .line 124
    invoke-virtual {v0, p1}, Lorg/acra/builder/ReportExecutor;->setEnabled(Z)V

    goto :goto_1

    .line 15
    :cond_1
    sget-object p1, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "ACRA requires ICS or greater. ACRA is disabled and will NOT catch crashes or send messages."

    invoke-interface {p1, v0, v1}, Lorg/acra/log/ACRALog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 6

    const-string v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "e"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/acra/reporter/ErrorReporterImpl;->reportExecutor:Lorg/acra/builder/ReportExecutor;

    .line 91
    invoke-virtual {v0}, Lorg/acra/builder/ReportExecutor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/acra/reporter/ErrorReporterImpl;->reportExecutor:Lorg/acra/builder/ReportExecutor;

    .line 92
    invoke-virtual {v0, p1, p2}, Lorg/acra/builder/ReportExecutor;->handReportToDefaultExceptionHandler(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void

    .line 27
    :cond_0
    :try_start_0
    sget-object v0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    .line 96
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/acra/reporter/ErrorReporterImpl;->context:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACRA caught a "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 27
    invoke-interface {v0, v1, v2, p2}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7
    sget-boolean v0, Lorg/acra/ACRA;->DEV_LOGGING:Z

    if-eqz v0, :cond_1

    sget-object v0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    const-string v2, "Building report"

    invoke-interface {v0, v1, v2}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 100
    :cond_1
    :goto_0
    new-instance v0, Lorg/acra/builder/ReportBuilder;

    invoke-direct {v0}, Lorg/acra/builder/ReportBuilder;-><init>()V

    .line 101
    invoke-virtual {v0, p1}, Lorg/acra/builder/ReportBuilder;->uncaughtExceptionThread(Ljava/lang/Thread;)Lorg/acra/builder/ReportBuilder;

    move-result-object v0

    .line 102
    invoke-virtual {v0, p2}, Lorg/acra/builder/ReportBuilder;->exception(Ljava/lang/Throwable;)Lorg/acra/builder/ReportBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/acra/reporter/ErrorReporterImpl;->customData:Ljava/util/Map;

    .line 103
    invoke-virtual {v0, v1}, Lorg/acra/builder/ReportBuilder;->customData(Ljava/util/Map;)Lorg/acra/builder/ReportBuilder;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lorg/acra/builder/ReportBuilder;->endApplication()Lorg/acra/builder/ReportBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/acra/reporter/ErrorReporterImpl;->reportExecutor:Lorg/acra/builder/ReportExecutor;

    .line 105
    invoke-virtual {v0, v1}, Lorg/acra/builder/ReportBuilder;->build(Lorg/acra/builder/ReportExecutor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 27
    :goto_1
    sget-object v1, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v3, "ACRA failed to capture the error - handing off to native error reporter"

    invoke-interface {v1, v2, v3, v0}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lorg/acra/reporter/ErrorReporterImpl;->reportExecutor:Lorg/acra/builder/ReportExecutor;

    .line 109
    invoke-virtual {v0, p1, p2}, Lorg/acra/builder/ReportExecutor;->handReportToDefaultExceptionHandler(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public final unregister()V
    .locals 1

    iget-object v0, p0, Lorg/acra/reporter/ErrorReporterImpl;->defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 154
    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method
