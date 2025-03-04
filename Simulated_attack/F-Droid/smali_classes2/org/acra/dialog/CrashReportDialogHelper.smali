.class public final Lorg/acra/dialog/CrashReportDialogHelper;
.super Ljava/lang/Object;
.source "CrashReportDialogHelper.kt"


# instance fields
.field private final config:Lorg/acra/config/CoreConfiguration;

.field private final context:Landroid/content/Context;

.field private final reportData$delegate:Lkotlin/Lazy;

.field private final reportFile:Ljava/io/File;


# direct methods
.method public static synthetic $r8$lambda$G2okr-RWKjtS8dp-NrSuFjv3lmM(Lorg/acra/dialog/CrashReportDialogHelper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/acra/dialog/CrashReportDialogHelper;->sendCrash$lambda$5(Lorg/acra/dialog/CrashReportDialogHelper;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GtXcHcxtuo6pIypOm0ygpgmZvUw(Lorg/acra/dialog/CrashReportDialogHelper;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/acra/dialog/CrashReportDialogHelper;->cancelReports$lambda$1(Lorg/acra/dialog/CrashReportDialogHelper;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/acra/dialog/CrashReportDialogHelper;->context:Landroid/content/Context;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x0

    const-string v1, "REPORT_CONFIG"

    const/16 v2, 0x21

    if-lt p1, v2, :cond_0

    const-class v3, Lorg/acra/config/CoreConfiguration;

    .line 24
    invoke-static {p2, v1, v3}, Lorg/acra/dialog/CrashReportDialogHelper$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v1

    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    instance-of v3, v1, Lorg/acra/config/CoreConfiguration;

    if-nez v3, :cond_1

    move-object v1, v0

    :cond_1
    check-cast v1, Lorg/acra/config/CoreConfiguration;

    .line 63
    :goto_0
    check-cast v1, Lorg/acra/config/CoreConfiguration;

    const-string v3, "REPORT_FILE"

    if-lt p1, v2, :cond_2

    const-class p1, Ljava/io/File;

    .line 24
    invoke-static {p2, v3, p1}, Lorg/acra/dialog/CrashReportDialogHelper$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object p1

    goto :goto_2

    .line 27
    :cond_2
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    instance-of p2, p1, Ljava/io/File;

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    move-object v0, p1

    :goto_1
    move-object p1, v0

    check-cast p1, Ljava/io/File;

    .line 64
    :goto_2
    check-cast p1, Ljava/io/File;

    if-eqz v1, :cond_4

    if-eqz p1, :cond_4

    iput-object v1, p0, Lorg/acra/dialog/CrashReportDialogHelper;->config:Lorg/acra/config/CoreConfiguration;

    iput-object p1, p0, Lorg/acra/dialog/CrashReportDialogHelper;->reportFile:Ljava/io/File;

    .line 82
    new-instance p1, Lorg/acra/dialog/CrashReportDialogHelper$reportData$2;

    invoke-direct {p1, p0}, Lorg/acra/dialog/CrashReportDialogHelper$reportData$2;-><init>(Lorg/acra/dialog/CrashReportDialogHelper;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/acra/dialog/CrashReportDialogHelper;->reportData$delegate:Lkotlin/Lazy;

    return-void

    .line 23
    :cond_4
    sget-object p1, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object p2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-class v0, Lorg/acra/dialog/CrashReportDialogHelper;

    .line 69
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal or incomplete call of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-interface {p1, p2, v0}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public static final synthetic access$getReportFile$p(Lorg/acra/dialog/CrashReportDialogHelper;)Ljava/io/File;
    .locals 0

    .line 52
    iget-object p0, p0, Lorg/acra/dialog/CrashReportDialogHelper;->reportFile:Ljava/io/File;

    return-object p0
.end method

.method private static final cancelReports$lambda$1(Lorg/acra/dialog/CrashReportDialogHelper;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    new-instance v0, Lorg/acra/file/BulkReportDeleter;

    iget-object p0, p0, Lorg/acra/dialog/CrashReportDialogHelper;->context:Landroid/content/Context;

    invoke-direct {v0, p0}, Lorg/acra/file/BulkReportDeleter;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0, p0}, Lorg/acra/file/BulkReportDeleter;->deleteReports(ZI)V

    return-void
.end method

.method private static final sendCrash$lambda$5(Lorg/acra/dialog/CrashReportDialogHelper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v0, "User comment not added: "

    const-string v1, "this$0"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    :try_start_0
    sget-boolean v1, Lorg/acra/ACRA;->DEV_LOGGING:Z

    if-eqz v1, :cond_0

    sget-object v1, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    .line 106
    iget-object v3, p0, Lorg/acra/dialog/CrashReportDialogHelper;->reportFile:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Add user comment to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-interface {v1, v2, v3}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    .line 107
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/acra/dialog/CrashReportDialogHelper;->getReportData()Lorg/acra/data/CrashReportData;

    move-result-object v1

    .line 108
    sget-object v2, Lorg/acra/ReportField;->USER_COMMENT:Lorg/acra/ReportField;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, ""

    if-nez p1, :cond_1

    move-object p1, v3

    :cond_1
    :try_start_1
    invoke-virtual {v1, v2, p1}, Lorg/acra/data/CrashReportData;->put(Lorg/acra/ReportField;Ljava/lang/String;)V

    .line 109
    sget-object p1, Lorg/acra/ReportField;->USER_EMAIL:Lorg/acra/ReportField;

    if-nez p2, :cond_2

    move-object p2, v3

    :cond_2
    invoke-virtual {v1, p1, p2}, Lorg/acra/data/CrashReportData;->put(Lorg/acra/ReportField;Ljava/lang/String;)V

    .line 110
    new-instance p1, Lorg/acra/file/CrashReportPersister;

    invoke-direct {p1}, Lorg/acra/file/CrashReportPersister;-><init>()V

    iget-object p2, p0, Lorg/acra/dialog/CrashReportDialogHelper;->reportFile:Ljava/io/File;

    invoke-virtual {p1, v1, p2}, Lorg/acra/file/CrashReportPersister;->store(Lorg/acra/data/CrashReportData;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 19
    :goto_1
    sget-object p2, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    invoke-interface {p2, v1, v0, p1}, Lorg/acra/log/ACRALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 19
    :goto_2
    sget-object p2, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    invoke-interface {p2, v1, v0, p1}, Lorg/acra/log/ACRALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    :goto_3
    new-instance p1, Lorg/acra/scheduler/SchedulerStarter;

    iget-object p2, p0, Lorg/acra/dialog/CrashReportDialogHelper;->context:Landroid/content/Context;

    iget-object v0, p0, Lorg/acra/dialog/CrashReportDialogHelper;->config:Lorg/acra/config/CoreConfiguration;

    invoke-direct {p1, p2, v0}, Lorg/acra/scheduler/SchedulerStarter;-><init>(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;)V

    iget-object p0, p0, Lorg/acra/dialog/CrashReportDialogHelper;->reportFile:Ljava/io/File;

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Lorg/acra/scheduler/SchedulerStarter;->scheduleReports(Ljava/io/File;Z)V

    return-void
.end method


# virtual methods
.method public final cancelReports()V
    .locals 2

    .line 94
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/acra/dialog/CrashReportDialogHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/acra/dialog/CrashReportDialogHelper$$ExternalSyntheticLambda1;-><init>(Lorg/acra/dialog/CrashReportDialogHelper;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final getConfig()Lorg/acra/config/CoreConfiguration;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/acra/dialog/CrashReportDialogHelper;->config:Lorg/acra/config/CoreConfiguration;

    return-object v0
.end method

.method public final getReportData()Lorg/acra/data/CrashReportData;
    .locals 1

    iget-object v0, p0, Lorg/acra/dialog/CrashReportDialogHelper;->reportData$delegate:Lkotlin/Lazy;

    .line 82
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/acra/data/CrashReportData;

    return-object v0
.end method

.method public final sendCrash(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 104
    new-instance v0, Ljava/lang/Thread;

    .line 119
    new-instance v1, Lorg/acra/dialog/CrashReportDialogHelper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lorg/acra/dialog/CrashReportDialogHelper$$ExternalSyntheticLambda2;-><init>(Lorg/acra/dialog/CrashReportDialogHelper;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 119
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
