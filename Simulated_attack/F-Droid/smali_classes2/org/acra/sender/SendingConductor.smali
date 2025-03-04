.class public final Lorg/acra/sender/SendingConductor;
.super Ljava/lang/Object;
.source "SendingConductor.kt"


# instance fields
.field private final config:Lorg/acra/config/CoreConfiguration;

.field private final context:Landroid/content/Context;

.field private final locator:Lorg/acra/file/ReportLocator;


# direct methods
.method public static synthetic $r8$lambda$i7l6VCPoGirYazARRSQHaudJgqQ(Lorg/acra/sender/SendingConductor;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/acra/sender/SendingConductor;->sendReports$lambda$4(Lorg/acra/sender/SendingConductor;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/acra/sender/SendingConductor;->context:Landroid/content/Context;

    iput-object p2, p0, Lorg/acra/sender/SendingConductor;->config:Lorg/acra/config/CoreConfiguration;

    .line 22
    new-instance p2, Lorg/acra/file/ReportLocator;

    invoke-direct {p2, p1}, Lorg/acra/file/ReportLocator;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/acra/sender/SendingConductor;->locator:Lorg/acra/file/ReportLocator;

    return-void
.end method

.method private static final sendReports$lambda$4(Lorg/acra/sender/SendingConductor;Ljava/lang/String;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object p0, p0, Lorg/acra/sender/SendingConductor;->context:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/acra/util/ToastSender;->sendToast(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final sendReports(ZLandroid/os/Bundle;)V
    .locals 9

    const-string v0, "extras"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget-boolean v0, Lorg/acra/ACRA;->DEV_LOGGING:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "About to start sending reports from SenderService"

    invoke-interface {v0, v1, v2}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :cond_0
    :try_start_0
    sget-object v0, Lorg/acra/sender/ReportSender;->Companion:Lorg/acra/sender/ReportSender$Companion;

    iget-object v1, p0, Lorg/acra/sender/SendingConductor;->context:Landroid/content/Context;

    iget-object v2, p0, Lorg/acra/sender/SendingConductor;->config:Lorg/acra/config/CoreConfiguration;

    invoke-virtual {v0, v1, v2}, Lorg/acra/sender/ReportSender$Companion;->loadSenders(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;)Ljava/util/List;

    move-result-object v0

    .line 766
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lorg/acra/sender/ReportSender;

    .line 27
    invoke-interface {v3}, Lorg/acra/sender/ReportSender;->requiresForeground()Z

    move-result v3

    if-ne v3, p1, :cond_1

    .line 857
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_6

    .line 27
    :cond_2
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 28
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7
    sget-boolean v0, Lorg/acra/ACRA;->DEV_LOGGING:Z

    if-eqz v0, :cond_3

    sget-object v0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "No ReportSenders configured - adding NullSender"

    invoke-interface {v0, v1, v2}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :cond_3
    new-instance v0, Lorg/acra/sender/NullSender;

    invoke-direct {v0}, Lorg/acra/sender/NullSender;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v0, p0, Lorg/acra/sender/SendingConductor;->locator:Lorg/acra/file/ReportLocator;

    .line 34
    invoke-virtual {v0}, Lorg/acra/file/ReportLocator;->getApprovedReports()[Ljava/io/File;

    move-result-object v0

    .line 35
    new-instance v1, Lorg/acra/sender/ReportDistributor;

    iget-object v2, p0, Lorg/acra/sender/SendingConductor;->context:Landroid/content/Context;

    iget-object v3, p0, Lorg/acra/sender/SendingConductor;->config:Lorg/acra/config/CoreConfiguration;

    invoke-direct {v1, v2, v3, p1, p2}, Lorg/acra/sender/ReportDistributor;-><init>(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;Ljava/util/List;Landroid/os/Bundle;)V

    .line 39
    new-instance p1, Lorg/acra/file/CrashReportFileNameParser;

    invoke-direct {p1}, Lorg/acra/file/CrashReportFileNameParser;-><init>()V

    .line 41
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_1
    if-ge v3, v2, :cond_8

    aget-object v6, v0, v3

    .line 42
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "getName(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Lorg/acra/file/CrashReportFileNameParser;->isSilent(Ljava/lang/String;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    const-string v8, "onlySendSilentReports"

    .line 43
    invoke-virtual {p2, v8}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    if-eqz v7, :cond_5

    goto :goto_2

    :cond_5
    or-int/2addr v5, v7

    const/4 v7, 0x5

    if-lt v4, v7, :cond_6

    goto :goto_3

    .line 50
    :cond_6
    invoke-virtual {v1, v6}, Lorg/acra/sender/ReportDistributor;->distribute(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_7

    add-int/lit8 v4, v4, 0x1

    :cond_7
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_8
    :goto_3
    if-lez v4, :cond_9

    iget-object p1, p0, Lorg/acra/sender/SendingConductor;->config:Lorg/acra/config/CoreConfiguration;

    .line 54
    invoke-virtual {p1}, Lorg/acra/config/CoreConfiguration;->getReportSendSuccessToast()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_9
    iget-object p1, p0, Lorg/acra/sender/SendingConductor;->config:Lorg/acra/config/CoreConfiguration;

    invoke-virtual {p1}, Lorg/acra/config/CoreConfiguration;->getReportSendFailureToast()Ljava/lang/String;

    move-result-object p1

    :goto_4
    if-eqz v5, :cond_d

    if-eqz p1, :cond_d

    .line 55
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_a

    goto :goto_7

    .line 7
    :cond_a
    sget-boolean p2, Lorg/acra/ACRA;->DEV_LOGGING:Z

    if-eqz p2, :cond_c

    sget-object p2, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    if-lez v4, :cond_b

    const-string v1, "success"

    goto :goto_5

    :cond_b
    const-string v1, "failure"

    .line 56
    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "About to show "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " toast"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-interface {p2, v0, v1}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_c
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lorg/acra/sender/SendingConductor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/acra/sender/SendingConductor$$ExternalSyntheticLambda0;-><init>(Lorg/acra/sender/SendingConductor;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    .line 27
    :goto_6
    sget-object p2, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, ""

    invoke-interface {p2, v0, v1, p1}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7
    :cond_d
    :goto_7
    sget-boolean p1, Lorg/acra/ACRA;->DEV_LOGGING:Z

    if-eqz p1, :cond_e

    sget-object p1, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object p2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Finished sending reports from SenderService"

    invoke-interface {p1, p2, v0}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    return-void
.end method
