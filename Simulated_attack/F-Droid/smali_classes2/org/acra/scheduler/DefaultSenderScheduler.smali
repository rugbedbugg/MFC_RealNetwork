.class public Lorg/acra/scheduler/DefaultSenderScheduler;
.super Ljava/lang/Object;
.source "DefaultSenderScheduler.kt"

# interfaces
.implements Lorg/acra/scheduler/SenderScheduler;


# instance fields
.field private final config:Lorg/acra/config/CoreConfiguration;

.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/acra/scheduler/DefaultSenderScheduler;->context:Landroid/content/Context;

    iput-object p2, p0, Lorg/acra/scheduler/DefaultSenderScheduler;->config:Lorg/acra/config/CoreConfiguration;

    return-void
.end method


# virtual methods
.method protected final configureExtras(Landroid/os/Bundle;)V
    .locals 1

    .line 0
    const-string v0, "extras"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method protected configureJob(Landroid/app/job/JobInfo$Builder;)V
    .locals 2

    const-string v0, "job"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 72
    invoke-virtual {p1, v0, v1}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    return-void
.end method

.method public scheduleReportSending(Z)V
    .locals 6

    .line 43
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 44
    sget-object v1, Lorg/acra/util/IOUtils;->INSTANCE:Lorg/acra/util/IOUtils;

    iget-object v2, p0, Lorg/acra/scheduler/DefaultSenderScheduler;->config:Lorg/acra/config/CoreConfiguration;

    invoke-virtual {v1, v2}, Lorg/acra/util/IOUtils;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "acraConfig"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "onlySendSilentReports"

    .line 45
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 46
    invoke-virtual {p0, v0}, Lorg/acra/scheduler/DefaultSenderScheduler;->configureExtras(Landroid/os/Bundle;)V

    .line 47
    sget-object p1, Lorg/acra/sender/ReportSender;->Companion:Lorg/acra/sender/ReportSender$Companion;

    iget-object v1, p0, Lorg/acra/scheduler/DefaultSenderScheduler;->context:Landroid/content/Context;

    iget-object v2, p0, Lorg/acra/scheduler/DefaultSenderScheduler;->config:Lorg/acra/config/CoreConfiguration;

    invoke-virtual {p1, v1, v2}, Lorg/acra/sender/ReportSender$Companion;->hasBackgroundSenders(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/acra/scheduler/DefaultSenderScheduler;->context:Landroid/content/Context;

    const-string v2, "jobscheduler"

    .line 49
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.app.job.JobScheduler"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/app/job/JobScheduler;

    .line 50
    new-instance v2, Landroid/app/job/JobInfo$Builder;

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lorg/acra/scheduler/DefaultSenderScheduler;->context:Landroid/content/Context;

    const-class v5, Lorg/acra/sender/JobSenderService;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    invoke-static {v0}, Lorg/acra/util/BundleKt;->toPersistableBundle(Landroid/os/Bundle;)Landroid/os/PersistableBundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    .line 51
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Lorg/acra/scheduler/DefaultSenderScheduler;->configureJob(Landroid/app/job/JobInfo$Builder;)V

    .line 52
    invoke-virtual {v2}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    :cond_0
    iget-object v1, p0, Lorg/acra/scheduler/DefaultSenderScheduler;->context:Landroid/content/Context;

    iget-object v2, p0, Lorg/acra/scheduler/DefaultSenderScheduler;->config:Lorg/acra/config/CoreConfiguration;

    .line 60
    invoke-virtual {p1, v1, v2}, Lorg/acra/sender/ReportSender$Companion;->hasForegroundSenders(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 61
    new-instance p1, Lorg/acra/sender/SendingConductor;

    iget-object v1, p0, Lorg/acra/scheduler/DefaultSenderScheduler;->context:Landroid/content/Context;

    iget-object v2, p0, Lorg/acra/scheduler/DefaultSenderScheduler;->config:Lorg/acra/config/CoreConfiguration;

    invoke-direct {p1, v1, v2}, Lorg/acra/sender/SendingConductor;-><init>(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lorg/acra/sender/SendingConductor;->sendReports(ZLandroid/os/Bundle;)V

    :cond_1
    return-void
.end method
