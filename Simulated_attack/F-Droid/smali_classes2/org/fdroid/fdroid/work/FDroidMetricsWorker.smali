.class public Lorg/fdroid/fdroid/work/FDroidMetricsWorker;
.super Landroidx/work/Worker;
.source "FDroidMetricsWorker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fdroid/fdroid/work/FDroidMetricsWorker$RawEvent;,
        Lorg/fdroid/fdroid/work/FDroidMetricsWorker$MatomoEvent;,
        Lorg/fdroid/fdroid/work/FDroidMetricsWorker$CleanInsightsReport;
    }
.end annotation


# static fields
.field private static final EVENTS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/fdroid/fdroid/work/FDroidMetricsWorker$MatomoEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "FDroidMetricsWorker"

.field static weekFormatter:Ljava/text/SimpleDateFormat;


# direct methods
.method public static synthetic $r8$lambda$eBUr6-vRMXASJpO23McZbEYZgSw(Lorg/fdroid/fdroid/work/FDroidMetricsWorker$RawEvent;Lorg/fdroid/fdroid/work/FDroidMetricsWorker$RawEvent;)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/fdroid/fdroid/work/FDroidMetricsWorker;->lambda$parseInstallHistoryCsv$0(Lorg/fdroid/fdroid/work/FDroidMetricsWorker$RawEvent;Lorg/fdroid/fdroid/work/FDroidMetricsWorker$RawEvent;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$w-jHnBy4fyJBktJ-1NCQis0K2gg(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/fdroid/fdroid/work/FDroidMetricsWorker;->lambda$generateReport$1(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 78
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy ww"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lorg/fdroid/fdroid/work/FDroidMetricsWorker;->weekFormatter:Ljava/text/SimpleDateFormat;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/fdroid/fdroid/work/FDroidMetricsWorker;->EVENTS:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method

.method private static addFirstInstallEvent(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)V
    .locals 3

    .line 290
    iget-wide v0, p1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    const-string v2, "PackageInfo.firstInstall"

    invoke-static {p0, p1, v2, v0, v1}, Lorg/fdroid/fdroid/work/FDroidMetricsWorker;->addInstallerEvent(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;Ljava/lang/String;J)V

    return-void
.end method

.method private static addInstallerEvent(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;Ljava/lang/String;J)V
    .locals 2

    .line 299
    new-instance v0, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$MatomoEvent;

    invoke-direct {v0, p3, p4}, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$MatomoEvent;-><init>(J)V

    const-string p3, "APK"

    iput-object p3, v0, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$MatomoEvent;->category:Ljava/lang/String;

    iput-object p2, v0, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$MatomoEvent;->action:Ljava/lang/String;

    .line 302
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$MatomoEvent;->name:Ljava/lang/String;

    const-wide/16 p0, 0x1

    iput-wide p0, v0, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$MatomoEvent;->times:J

    sget-object p2, Lorg/fdroid/fdroid/work/FDroidMetricsWorker;->EVENTS:Ljava/util/ArrayList;

    .line 304
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$MatomoEvent;

    .line 305
    invoke-virtual {p3, v0}, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$MatomoEvent;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 306
    iget-wide v0, p3, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$MatomoEvent;->times:J

    add-long/2addr v0, p0

    iput-wide v0, p3, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$MatomoEvent;->times:J

    return-void

    :cond_1
    sget-object p0, Lorg/fdroid/fdroid/work/FDroidMetricsWorker;->EVENTS:Ljava/util/ArrayList;

    .line 310
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static addLastUpdateTimeEvent(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)V
    .locals 3

    .line 294
    iget-wide v0, p1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    const-string v2, "PackageInfo.lastUpdateTime"

    invoke-static {p0, p1, v2, v0, v1}, Lorg/fdroid/fdroid/work/FDroidMetricsWorker;->addInstallerEvent(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;Ljava/lang/String;J)V

    return-void
.end method

.method public static cancel(Landroid/content/Context;)V
    .locals 1

    .line 119
    invoke-static {p0}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object p0

    const-string v0, "FDroidMetricsWorker"

    invoke-virtual {p0, v0}, Landroidx/work/WorkManager;->cancelUniqueWork(Ljava/lang/String;)Landroidx/work/Operation;

    return-void
.end method

.method public static generateReport(Landroid/content/Context;)Ljava/lang/String;
    .locals 10

    .line 233
    invoke-static {}, Lorg/fdroid/fdroid/work/FDroidMetricsWorker;->getReportingWeekStart()J

    move-result-wide v0

    .line 234
    new-instance v2, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$CleanInsightsReport;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$CleanInsightsReport;-><init>(Lorg/fdroid/fdroid/work/FDroidMetricsWorker$CleanInsightsReport-IA;)V

    .line 235
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    .line 236
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v6

    .line 237
    new-instance v7, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    sget-object v7, Lorg/fdroid/fdroid/work/FDroidMetricsWorker;->EVENTS:Ljava/util/ArrayList;

    .line 239
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object v8

    invoke-virtual {v8}, Lorg/fdroid/fdroid/Preferences;->isPrivilegedInstallerEnabled()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const-string v9, "isPrivilegedInstallerEnabled"

    .line 238
    invoke-static {v0, v1, v9, v8}, Lorg/fdroid/fdroid/work/FDroidMetricsWorker;->getDeviceEvent(JLjava/lang/String;Ljava/lang/Object;)Lorg/fdroid/fdroid/work/FDroidMetricsWorker$MatomoEvent;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 240
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "Build.VERSION.SDK_INT"

    invoke-static {v0, v1, v9, v8}, Lorg/fdroid/fdroid/work/FDroidMetricsWorker;->getDeviceEvent(JLjava/lang/String;Ljava/lang/Object;)Lorg/fdroid/fdroid/work/FDroidMetricsWorker$MatomoEvent;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    sget-object v8, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    invoke-static {v8}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "Build.SUPPORTED_ABIS"

    invoke-static {v0, v1, v9, v8}, Lorg/fdroid/fdroid/work/FDroidMetricsWorker;->getDeviceEvent(JLjava/lang/String;Ljava/lang/Object;)Lorg/fdroid/fdroid/work/FDroidMetricsWorker$MatomoEvent;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageInfo;

    .line 244
    iget-wide v8, v7, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-static {v0, v1, v8, v9}, Lorg/fdroid/fdroid/work/FDroidMetricsWorker;->isTimestampInReportingWeek(JJ)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 245
    invoke-static {v4, v7}, Lorg/fdroid/fdroid/work/FDroidMetricsWorker;->addFirstInstallEvent(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)V

    .line 247
    :cond_1
    iget-wide v8, v7, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-static {v0, v1, v8, v9}, Lorg/fdroid/fdroid/work/FDroidMetricsWorker;->isTimestampInReportingWeek(JJ)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 248
    invoke-static {v4, v7}, Lorg/fdroid/fdroid/work/FDroidMetricsWorker;->addLastUpdateTimeEvent(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)V

    goto :goto_0

    :cond_2
    sget-object v4, Lorg/fdroid/fdroid/work/FDroidMetricsWorker;->EVENTS:Ljava/util/ArrayList;

    .line 251
    invoke-static {p0, v0, v1}, Lorg/fdroid/fdroid/work/FDroidMetricsWorker;->parseInstallHistoryCsv(Landroid/content/Context;J)Ljava/util/Collection;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-array p0, v5, [Lorg/fdroid/fdroid/work/FDroidMetricsWorker$MatomoEvent;

    .line 252
    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/fdroid/fdroid/work/FDroidMetricsWorker$MatomoEvent;

    iput-object p0, v2, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$CleanInsightsReport;->events:[Lorg/fdroid/fdroid/work/FDroidMetricsWorker$MatomoEvent;

    .line 255
    :try_start_0
    invoke-static {v2}, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$CleanInsightsReport;->-$$Nest$mgetJsonString(Lorg/fdroid/fdroid/work/FDroidMetricsWorker$CleanInsightsReport;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "FDroidMetricsWorker"

    const-string v1, "Error getting json string"

    .line 257
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v3
.end method

.method private static getDeviceEvent(JLjava/lang/String;Ljava/lang/Object;)Lorg/fdroid/fdroid/work/FDroidMetricsWorker$MatomoEvent;
    .locals 1

    .line 317
    new-instance v0, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$MatomoEvent;

    invoke-direct {v0, p0, p1}, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$MatomoEvent;-><init>(J)V

    const-string p0, "device"

    iput-object p0, v0, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$MatomoEvent;->category:Ljava/lang/String;

    iput-object p2, v0, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$MatomoEvent;->action:Ljava/lang/String;

    .line 320
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$MatomoEvent;->name:Ljava/lang/String;

    const-wide/16 p0, 0x1

    iput-wide p0, v0, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$MatomoEvent;->times:J

    return-object v0
.end method

.method static getReportingWeekStart()J
    .locals 2

    .line 171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/fdroid/fdroid/work/FDroidMetricsWorker;->getReportingWeekStart(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static getReportingWeekStart(J)J
    .locals 3

    .line 182
    :try_start_0
    new-instance v0, Ljava/util/Date;

    const-wide/32 v1, 0x240c8400

    sub-long/2addr p0, v1

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    sget-object p0, Lorg/fdroid/fdroid/work/FDroidMetricsWorker;->weekFormatter:Ljava/text/SimpleDateFormat;

    .line 183
    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method static isTimestampInReportingWeek(JJ)Z
    .locals 2

    .line 0
    const-wide/32 v0, 0x240c8400

    add-long/2addr v0, p0

    cmp-long p0, p0, p2

    if-gez p0, :cond_0

    cmp-long p0, p2, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$generateReport$1(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;)I
    .locals 0

    .line 237
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$parseInstallHistoryCsv$0(Lorg/fdroid/fdroid/work/FDroidMetricsWorker$RawEvent;Lorg/fdroid/fdroid/work/FDroidMetricsWorker$RawEvent;)I
    .locals 4

    .line 206
    iget-object v0, p0, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$RawEvent;->applicationId:Ljava/lang/String;

    iget-object v1, p1, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$RawEvent;->applicationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 210
    :cond_0
    iget-wide v0, p0, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$RawEvent;->versionCode:J

    iget-wide v2, p1, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$RawEvent;->versionCode:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    .line 214
    :cond_1
    iget-wide v0, p0, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$RawEvent;->timestamp:J

    iget-wide p0, p1, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$RawEvent;->timestamp:J

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method static parseInstallHistoryCsv(Landroid/content/Context;J)Ljava/util/Collection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J)",
            "Ljava/util/Collection<",
            "+",
            "Lorg/fdroid/fdroid/work/FDroidMetricsWorker$MatomoEvent;",
            ">;"
        }
    .end annotation

    const-string v0, ""

    const-string v1, "0"

    .line 196
    :try_start_0
    invoke-static {p0}, Lorg/fdroid/fdroid/installer/InstallHistoryService;->getInstallHistoryFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    .line 197
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-static {p0, v2}, Lorg/apache/commons/io/FileUtils;->readLines(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/util/List;

    move-result-object p0

    .line 198
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 199
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 200
    new-instance v4, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$RawEvent;

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$RawEvent;-><init>([Ljava/lang/String;)V

    iget-wide v5, v4, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$RawEvent;->timestamp:J

    .line 201
    invoke-static {p1, p2, v5, v6}, Lorg/fdroid/fdroid/work/FDroidMetricsWorker;->isTimestampInReportingWeek(JJ)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 202
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 205
    :cond_1
    new-instance p0, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$$ExternalSyntheticLambda1;

    invoke-direct {p0}, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v2, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 216
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 217
    new-instance p1, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$RawEvent;

    const/4 p2, 0x4

    new-array p2, p2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, p2, v3

    const/4 v3, 0x1

    aput-object v0, p2, v3

    const/4 v3, 0x2

    aput-object v1, p2, v3

    const/4 v1, 0x3

    aput-object v0, p2, v1

    invoke-direct {p1, p2}, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$RawEvent;-><init>([Ljava/lang/String;)V

    .line 218
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$RawEvent;

    .line 219
    invoke-virtual {p1, v0}, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$RawEvent;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 220
    new-instance p1, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$MatomoEvent;

    invoke-direct {p1, v0}, Lorg/fdroid/fdroid/work/FDroidMetricsWorker$MatomoEvent;-><init>(Lorg/fdroid/fdroid/work/FDroidMetricsWorker$RawEvent;)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    goto :goto_1

    :cond_3
    return-object p0

    .line 229
    :catch_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static schedule(Landroid/content/Context;)V
    .locals 6

    .line 99
    invoke-static {p0}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object p0

    .line 100
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 102
    new-instance v2, Landroidx/work/Constraints$Builder;

    invoke-direct {v2}, Landroidx/work/Constraints$Builder;-><init>()V

    const/4 v3, 0x1

    .line 103
    invoke-virtual {v2, v3}, Landroidx/work/Constraints$Builder;->setRequiresCharging(Z)Landroidx/work/Constraints$Builder;

    move-result-object v2

    .line 104
    invoke-virtual {v2, v3}, Landroidx/work/Constraints$Builder;->setRequiresBatteryNotLow(Z)Landroidx/work/Constraints$Builder;

    move-result-object v2

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-lt v4, v5, :cond_0

    .line 107
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1, v4}, Landroidx/work/Constraints$Builder;->setTriggerContentMaxDelay(JLjava/util/concurrent/TimeUnit;)Landroidx/work/Constraints$Builder;

    .line 108
    invoke-virtual {v2, v3}, Landroidx/work/Constraints$Builder;->setRequiresDeviceIdle(Z)Landroidx/work/Constraints$Builder;

    .line 110
    :cond_0
    new-instance v3, Landroidx/work/PeriodicWorkRequest$Builder;

    const-class v4, Lorg/fdroid/fdroid/work/FDroidMetricsWorker;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v3, v4, v0, v1, v5}, Landroidx/work/PeriodicWorkRequest$Builder;-><init>(Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)V

    .line 112
    invoke-virtual {v2}, Landroidx/work/Constraints$Builder;->build()Landroidx/work/Constraints;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroidx/work/WorkRequest$Builder;->setConstraints(Landroidx/work/Constraints;)Landroidx/work/WorkRequest$Builder;

    move-result-object v0

    check-cast v0, Landroidx/work/PeriodicWorkRequest$Builder;

    .line 113
    invoke-virtual {v0}, Landroidx/work/WorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    move-result-object v0

    check-cast v0, Landroidx/work/PeriodicWorkRequest;

    .line 114
    sget-object v1, Landroidx/work/ExistingPeriodicWorkPolicy;->REPLACE:Landroidx/work/ExistingPeriodicWorkPolicy;

    const-string v2, "FDroidMetricsWorker"

    invoke-virtual {p0, v2, v1, v0}, Landroidx/work/WorkManager;->enqueueUniquePeriodicWork(Ljava/lang/String;Landroidx/work/ExistingPeriodicWorkPolicy;Landroidx/work/PeriodicWorkRequest;)Landroidx/work/Operation;

    const-string p0, "Scheduled periodic work"

    .line 115
    invoke-static {v2, p0}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static toCleanInsightsTimestamp(J)J
    .locals 0

    .line 146
    invoke-static {p0, p1, p0, p1}, Lorg/fdroid/fdroid/work/FDroidMetricsWorker;->toCleanInsightsTimestamp(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method static toCleanInsightsTimestamp(JJ)J
    .locals 2

    sub-long p0, p2, p0

    const-wide/32 v0, 0x240c8400

    .line 156
    div-long/2addr p2, v0

    mul-long/2addr p2, v0

    add-long/2addr p2, p0

    const-wide/16 p0, 0x3e8

    .line 157
    div-long/2addr p2, p0

    return-wide p2
.end method


# virtual methods
.method public doWork()Landroidx/work/ListenableWorker$Result;
    .locals 4

    .line 126
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/fdroid/fdroid/work/FDroidMetricsWorker;->generateReport(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    :try_start_0
    new-instance v1, Lorg/fdroid/download/HttpPoster;

    sget-object v2, Lorg/fdroid/fdroid/net/DownloaderFactory;->HTTP_MANAGER:Lorg/fdroid/download/HttpManager;

    const-string v3, "https://metrics.cleaninsights.org/cleaninsights.php"

    invoke-direct {v1, v2, v3}, Lorg/fdroid/download/HttpPoster;-><init>(Lorg/fdroid/download/HttpManager;Ljava/lang/String;)V

    .line 131
    invoke-virtual {v1, v0}, Lorg/fdroid/download/HttpPoster;->post(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 133
    :cond_0
    :goto_0
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 135
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 138
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->retry()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    return-object v0
.end method
