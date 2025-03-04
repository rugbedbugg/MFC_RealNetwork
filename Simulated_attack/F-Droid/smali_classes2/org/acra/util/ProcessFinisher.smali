.class public final Lorg/acra/util/ProcessFinisher;
.super Ljava/lang/Object;
.source "ProcessFinisher.kt"


# instance fields
.field private final config:Lorg/acra/config/CoreConfiguration;

.field private final context:Landroid/content/Context;

.field private final lastActivityManager:Lorg/acra/builder/LastActivityManager;


# direct methods
.method public static synthetic $r8$lambda$JusWxNEE4bgMVLvhUrWHUwNtD8c(Landroid/app/Activity;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/acra/util/ProcessFinisher;->finishLastActivity$lambda$2(Landroid/app/Activity;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;Lorg/acra/builder/LastActivityManager;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lastActivityManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/acra/util/ProcessFinisher;->context:Landroid/content/Context;

    iput-object p2, p0, Lorg/acra/util/ProcessFinisher;->config:Lorg/acra/config/CoreConfiguration;

    iput-object p3, p0, Lorg/acra/util/ProcessFinisher;->lastActivityManager:Lorg/acra/builder/LastActivityManager;

    return-void
.end method

.method private static final finishLastActivity$lambda$2(Landroid/app/Activity;)V
    .locals 4

    const-string v0, "$activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 7
    sget-boolean v0, Lorg/acra/ACRA;->DEV_LOGGING:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finished "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 7
    invoke-interface {v0, v1, p0}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private final killProcessAndExit()V
    .locals 2

    .line 91
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    const/16 v0, 0xa

    .line 92
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "System.exit returned normally, while it was supposed to halt JVM."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final stopServices()V
    .locals 8

    iget-object v0, p0, Lorg/acra/util/ProcessFinisher;->config:Lorg/acra/config/CoreConfiguration;

    .line 67
    invoke-virtual {v0}, Lorg/acra/config/CoreConfiguration;->getStopServicesOnCrash()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lorg/acra/util/ProcessFinisher;->context:Landroid/content/Context;

    .line 69
    invoke-static {v0}, Lorg/acra/util/SystemServices;->getActivityManager(Landroid/content/Context;)Landroid/app/ActivityManager;

    move-result-object v0

    const v1, 0x7fffffff

    .line 71
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    .line 72
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 73
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 74
    iget v3, v2, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    if-ne v3, v1, :cond_0

    iget-object v3, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getClassName(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "org.acra"

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v3, v4, v7, v5, v6}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Lorg/acra/util/SystemServices$ServiceNotReachedException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_0

    .line 76
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 77
    iget-object v4, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v4, p0, Lorg/acra/util/ProcessFinisher;->context:Landroid/content/Context;

    .line 78
    invoke-virtual {v4, v3}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/acra/util/SystemServices$ServiceNotReachedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 7
    :catch_1
    :try_start_2
    sget-boolean v3, Lorg/acra/ACRA;->DEV_LOGGING:Z

    if-eqz v3, :cond_0

    sget-object v3, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v4, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    .line 80
    iget-object v2, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to stop Service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Permission denied"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-interface {v3, v4, v2}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/acra/util/SystemServices$ServiceNotReachedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 27
    :goto_1
    sget-object v1, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Unable to stop services"

    invoke-interface {v1, v2, v3, v0}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method


# virtual methods
.method public final endApplication()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lorg/acra/util/ProcessFinisher;->stopServices()V

    .line 41
    invoke-direct {p0}, Lorg/acra/util/ProcessFinisher;->killProcessAndExit()V

    return-void
.end method

.method public final finishLastActivity(Ljava/lang/Thread;)V
    .locals 5

    .line 7
    sget-boolean v0, Lorg/acra/ACRA;->DEV_LOGGING:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Finishing activities prior to killing the Process"

    invoke-interface {v0, v1, v2}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lorg/acra/util/ProcessFinisher;->lastActivityManager:Lorg/acra/builder/LastActivityManager;

    .line 47
    invoke-virtual {v0}, Lorg/acra/builder/LastActivityManager;->getLastActivities()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 48
    new-instance v3, Lorg/acra/util/ProcessFinisher$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lorg/acra/util/ProcessFinisher$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;)V

    .line 52
    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v4

    if-ne p1, v4, :cond_1

    .line 53
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    iget-object p1, p0, Lorg/acra/util/ProcessFinisher;->lastActivityManager:Lorg/acra/builder/LastActivityManager;

    const/16 v0, 0x64

    .line 61
    invoke-virtual {p1, v0}, Lorg/acra/builder/LastActivityManager;->waitForAllActivitiesDestroy(I)V

    :cond_3
    iget-object p1, p0, Lorg/acra/util/ProcessFinisher;->lastActivityManager:Lorg/acra/builder/LastActivityManager;

    .line 63
    invoke-virtual {p1}, Lorg/acra/builder/LastActivityManager;->clearLastActivities()V

    return-void
.end method
