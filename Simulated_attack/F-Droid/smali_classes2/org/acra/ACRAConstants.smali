.class public final Lorg/acra/ACRAConstants;
.super Ljava/lang/Object;
.source "ACRAConstants.kt"


# static fields
.field public static final DEFAULT_REPORT_FIELDS:Ljava/util/List;

.field public static final INSTANCE:Lorg/acra/ACRAConstants;

.field public static final SILENT_SUFFIX:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/acra/ACRAConstants;

    invoke-direct {v0}, Lorg/acra/ACRAConstants;-><init>()V

    sput-object v0, Lorg/acra/ACRAConstants;->INSTANCE:Lorg/acra/ACRAConstants;

    .line 38
    sget-object v0, Lorg/acra/ReportField;->IS_SILENT:Lorg/acra/ReportField;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/acra/ACRAConstants;->SILENT_SUFFIX:Ljava/lang/String;

    const/16 v1, 0x1d

    new-array v1, v1, [Lorg/acra/ReportField;

    const/4 v2, 0x0

    .line 56
    sget-object v3, Lorg/acra/ReportField;->REPORT_ID:Lorg/acra/ReportField;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lorg/acra/ReportField;->APP_VERSION_CODE:Lorg/acra/ReportField;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lorg/acra/ReportField;->APP_VERSION_NAME:Lorg/acra/ReportField;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lorg/acra/ReportField;->PACKAGE_NAME:Lorg/acra/ReportField;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Lorg/acra/ReportField;->FILE_PATH:Lorg/acra/ReportField;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    .line 57
    sget-object v3, Lorg/acra/ReportField;->PHONE_MODEL:Lorg/acra/ReportField;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lorg/acra/ReportField;->BRAND:Lorg/acra/ReportField;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lorg/acra/ReportField;->PRODUCT:Lorg/acra/ReportField;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lorg/acra/ReportField;->ANDROID_VERSION:Lorg/acra/ReportField;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lorg/acra/ReportField;->BUILD:Lorg/acra/ReportField;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, Lorg/acra/ReportField;->TOTAL_MEM_SIZE:Lorg/acra/ReportField;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    .line 58
    sget-object v3, Lorg/acra/ReportField;->AVAILABLE_MEM_SIZE:Lorg/acra/ReportField;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    sget-object v3, Lorg/acra/ReportField;->BUILD_CONFIG:Lorg/acra/ReportField;

    aput-object v3, v1, v2

    const/16 v2, 0xd

    sget-object v3, Lorg/acra/ReportField;->CUSTOM_DATA:Lorg/acra/ReportField;

    aput-object v3, v1, v2

    const/16 v2, 0xe

    aput-object v0, v1, v2

    const/16 v0, 0xf

    sget-object v2, Lorg/acra/ReportField;->STACK_TRACE:Lorg/acra/ReportField;

    aput-object v2, v1, v0

    const/16 v0, 0x10

    sget-object v2, Lorg/acra/ReportField;->INITIAL_CONFIGURATION:Lorg/acra/ReportField;

    aput-object v2, v1, v0

    const/16 v0, 0x11

    .line 59
    sget-object v2, Lorg/acra/ReportField;->CRASH_CONFIGURATION:Lorg/acra/ReportField;

    aput-object v2, v1, v0

    const/16 v0, 0x12

    sget-object v2, Lorg/acra/ReportField;->DISPLAY:Lorg/acra/ReportField;

    aput-object v2, v1, v0

    const/16 v0, 0x13

    sget-object v2, Lorg/acra/ReportField;->USER_COMMENT:Lorg/acra/ReportField;

    aput-object v2, v1, v0

    const/16 v0, 0x14

    sget-object v2, Lorg/acra/ReportField;->USER_EMAIL:Lorg/acra/ReportField;

    aput-object v2, v1, v0

    const/16 v0, 0x15

    sget-object v2, Lorg/acra/ReportField;->USER_APP_START_DATE:Lorg/acra/ReportField;

    aput-object v2, v1, v0

    const/16 v0, 0x16

    sget-object v2, Lorg/acra/ReportField;->USER_CRASH_DATE:Lorg/acra/ReportField;

    aput-object v2, v1, v0

    const/16 v0, 0x17

    .line 60
    sget-object v2, Lorg/acra/ReportField;->DUMPSYS_MEMINFO:Lorg/acra/ReportField;

    aput-object v2, v1, v0

    const/16 v0, 0x18

    sget-object v2, Lorg/acra/ReportField;->LOGCAT:Lorg/acra/ReportField;

    aput-object v2, v1, v0

    const/16 v0, 0x19

    sget-object v2, Lorg/acra/ReportField;->INSTALLATION_ID:Lorg/acra/ReportField;

    aput-object v2, v1, v0

    const/16 v0, 0x1a

    sget-object v2, Lorg/acra/ReportField;->DEVICE_FEATURES:Lorg/acra/ReportField;

    aput-object v2, v1, v0

    const/16 v0, 0x1b

    sget-object v2, Lorg/acra/ReportField;->ENVIRONMENT:Lorg/acra/ReportField;

    aput-object v2, v1, v0

    const/16 v0, 0x1c

    sget-object v2, Lorg/acra/ReportField;->SHARED_PREFERENCES:Lorg/acra/ReportField;

    aput-object v2, v1, v0

    .line 56
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/acra/ACRAConstants;->DEFAULT_REPORT_FIELDS:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
