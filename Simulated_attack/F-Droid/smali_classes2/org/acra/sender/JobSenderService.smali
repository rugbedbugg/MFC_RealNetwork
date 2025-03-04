.class public final Lorg/acra/sender/JobSenderService;
.super Landroid/app/job/JobService;
.source "JobSenderService.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "Lorg/acra/sender/JobSenderService;",
        "Landroid/app/job/JobService;",
        "()V",
        "onStartJob",
        "",
        "params",
        "Landroid/app/job/JobParameters;",
        "onStopJob",
        "acra-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic $r8$lambda$Niec5E-6c3wq5P9LtPpoz3Yei-I(Lorg/acra/sender/JobSenderService;Lorg/acra/config/CoreConfiguration;Landroid/os/PersistableBundle;Landroid/app/job/JobParameters;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/acra/sender/JobSenderService;->onStartJob$lambda$0(Lorg/acra/sender/JobSenderService;Lorg/acra/config/CoreConfiguration;Landroid/os/PersistableBundle;Landroid/app/job/JobParameters;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method private static final onStartJob$lambda$0(Lorg/acra/sender/JobSenderService;Lorg/acra/config/CoreConfiguration;Landroid/os/PersistableBundle;Landroid/app/job/JobParameters;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$extras"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$params"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance v0, Lorg/acra/sender/SendingConductor;

    invoke-direct {v0, p0, p1}, Lorg/acra/sender/SendingConductor;-><init>(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1, p2}, Landroid/os/Bundle;-><init>(Landroid/os/PersistableBundle;)V

    const/4 p2, 0x0

    invoke-virtual {v0, p2, p1}, Lorg/acra/sender/SendingConductor;->sendReports(ZLandroid/os/Bundle;)V

    .line 25
    invoke-virtual {p0, p3, p2}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 4

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    const-string v1, "getExtras(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    sget-object v1, Lorg/acra/util/IOUtils;->INSTANCE:Lorg/acra/util/IOUtils;

    const-string v2, "acraConfig"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lorg/acra/config/CoreConfiguration;

    invoke-virtual {v1, v3, v2}, Lorg/acra/util/IOUtils;->deserialize(Ljava/lang/Class;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lorg/acra/config/CoreConfiguration;

    if-eqz v1, :cond_0

    .line 23
    new-instance v2, Ljava/lang/Thread;

    .line 26
    new-instance v3, Lorg/acra/sender/JobSenderService$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1, v0, p1}, Lorg/acra/sender/JobSenderService$$ExternalSyntheticLambda0;-><init>(Lorg/acra/sender/JobSenderService;Lorg/acra/config/CoreConfiguration;Landroid/os/PersistableBundle;Landroid/app/job/JobParameters;)V

    .line 23
    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 26
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    .line 0
    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
