.class public Lorg/acra/collector/SimpleValuesCollector;
.super Lorg/acra/collector/BaseReportFieldCollector;
.source "SimpleValuesCollector.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/acra/collector/SimpleValuesCollector$Companion;,
        Lorg/acra/collector/SimpleValuesCollector$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0017\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u0005\u00a2\u0006\u0002\u0010\u0002J0\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0007\u001a\u00020\u0008H\u0012J(\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u000cH\u0016\u00a8\u0006\u0014"
    }
    d2 = {
        "Lorg/acra/collector/SimpleValuesCollector;",
        "Lorg/acra/collector/BaseReportFieldCollector;",
        "()V",
        "collect",
        "",
        "reportField",
        "Lorg/acra/ReportField;",
        "context",
        "Landroid/content/Context;",
        "config",
        "Lorg/acra/config/CoreConfiguration;",
        "reportBuilder",
        "Lorg/acra/builder/ReportBuilder;",
        "target",
        "Lorg/acra/data/CrashReportData;",
        "getApplicationFilePath",
        "",
        "shouldCollect",
        "",
        "Companion",
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


# static fields
.field public static final Companion:Lorg/acra/collector/SimpleValuesCollector$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lorg/acra/collector/SimpleValuesCollector$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/acra/collector/SimpleValuesCollector$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/acra/collector/SimpleValuesCollector;->Companion:Lorg/acra/collector/SimpleValuesCollector$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Lorg/acra/ReportField;

    const/4 v1, 0x0

    .line 37
    sget-object v2, Lorg/acra/ReportField;->IS_SILENT:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/acra/ReportField;->REPORT_ID:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/acra/ReportField;->INSTALLATION_ID:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 38
    sget-object v2, Lorg/acra/ReportField;->PACKAGE_NAME:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lorg/acra/ReportField;->PHONE_MODEL:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lorg/acra/ReportField;->ANDROID_VERSION:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 39
    sget-object v2, Lorg/acra/ReportField;->BRAND:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/acra/ReportField;->PRODUCT:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/acra/ReportField;->FILE_PATH:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/acra/ReportField;->USER_IP:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    .line 37
    invoke-direct {p0, v0}, Lorg/acra/collector/BaseReportFieldCollector;-><init>([Lorg/acra/ReportField;)V

    return-void
.end method

.method private getApplicationFilePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string v0, "getAbsolutePath(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public collect(Lorg/acra/ReportField;Landroid/content/Context;Lorg/acra/config/CoreConfiguration;Lorg/acra/builder/ReportBuilder;Lorg/acra/data/CrashReportData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "reportField"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "reportBuilder"

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "target"

    invoke-static {p5, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    sget-object p3, Lorg/acra/collector/SimpleValuesCollector$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p3, p1

    packed-switch p1, :pswitch_data_0

    .line 53
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 52
    :pswitch_0
    sget-object p1, Lorg/acra/ReportField;->USER_IP:Lorg/acra/ReportField;

    sget-object p2, Lorg/acra/collector/SimpleValuesCollector;->Companion:Lorg/acra/collector/SimpleValuesCollector$Companion;

    invoke-static {p2}, Lorg/acra/collector/SimpleValuesCollector$Companion;->access$getLocalIpAddress(Lorg/acra/collector/SimpleValuesCollector$Companion;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5, p1, p2}, Lorg/acra/data/CrashReportData;->put(Lorg/acra/ReportField;Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :pswitch_1
    sget-object p1, Lorg/acra/ReportField;->FILE_PATH:Lorg/acra/ReportField;

    invoke-direct {p0, p2}, Lorg/acra/collector/SimpleValuesCollector;->getApplicationFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5, p1, p2}, Lorg/acra/data/CrashReportData;->put(Lorg/acra/ReportField;Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :pswitch_2
    sget-object p1, Lorg/acra/ReportField;->PRODUCT:Lorg/acra/ReportField;

    sget-object p2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {p5, p1, p2}, Lorg/acra/data/CrashReportData;->put(Lorg/acra/ReportField;Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :pswitch_3
    sget-object p1, Lorg/acra/ReportField;->BRAND:Lorg/acra/ReportField;

    sget-object p2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {p5, p1, p2}, Lorg/acra/data/CrashReportData;->put(Lorg/acra/ReportField;Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :pswitch_4
    sget-object p1, Lorg/acra/ReportField;->ANDROID_VERSION:Lorg/acra/ReportField;

    sget-object p2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p5, p1, p2}, Lorg/acra/data/CrashReportData;->put(Lorg/acra/ReportField;Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :pswitch_5
    sget-object p1, Lorg/acra/ReportField;->PHONE_MODEL:Lorg/acra/ReportField;

    sget-object p2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p5, p1, p2}, Lorg/acra/data/CrashReportData;->put(Lorg/acra/ReportField;Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :pswitch_6
    sget-object p1, Lorg/acra/ReportField;->PACKAGE_NAME:Lorg/acra/ReportField;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5, p1, p2}, Lorg/acra/data/CrashReportData;->put(Lorg/acra/ReportField;Ljava/lang/String;)V

    goto :goto_0

    .line 45
    :pswitch_7
    sget-object p1, Lorg/acra/ReportField;->INSTALLATION_ID:Lorg/acra/ReportField;

    invoke-static {p2}, Lorg/acra/util/Installation;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5, p1, p2}, Lorg/acra/data/CrashReportData;->put(Lorg/acra/ReportField;Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :pswitch_8
    sget-object p1, Lorg/acra/ReportField;->REPORT_ID:Lorg/acra/ReportField;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5, p1, p2}, Lorg/acra/data/CrashReportData;->put(Lorg/acra/ReportField;Ljava/lang/String;)V

    goto :goto_0

    .line 43
    :pswitch_9
    sget-object p1, Lorg/acra/ReportField;->IS_SILENT:Lorg/acra/ReportField;

    invoke-virtual {p4}, Lorg/acra/builder/ReportBuilder;->isSendSilently()Z

    move-result p2

    invoke-virtual {p5, p1, p2}, Lorg/acra/data/CrashReportData;->put(Lorg/acra/ReportField;Z)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic enabled(Lorg/acra/config/CoreConfiguration;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/acra/plugins/Plugin$-CC;->$default$enabled(Lorg/acra/plugins/Plugin;Lorg/acra/config/CoreConfiguration;)Z

    move-result p1

    return p1
.end method

.method public shouldCollect(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;Lorg/acra/ReportField;Lorg/acra/builder/ReportBuilder;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "collect"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reportBuilder"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    sget-object v0, Lorg/acra/ReportField;->IS_SILENT:Lorg/acra/ReportField;

    if-eq p3, v0, :cond_1

    sget-object v0, Lorg/acra/ReportField;->REPORT_ID:Lorg/acra/ReportField;

    if-eq p3, v0, :cond_1

    invoke-super {p0, p1, p2, p3, p4}, Lorg/acra/collector/BaseReportFieldCollector;->shouldCollect(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;Lorg/acra/ReportField;Lorg/acra/builder/ReportBuilder;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
