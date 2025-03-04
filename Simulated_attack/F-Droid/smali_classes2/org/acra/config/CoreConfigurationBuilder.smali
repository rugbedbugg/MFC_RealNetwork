.class public final Lorg/acra/config/CoreConfigurationBuilder;
.super Ljava/lang/Object;
.source "CoreConfigurationDsl.kt"


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private _defaultsBitField0:I

.field private final additionalDropBoxTags$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final additionalSharedPreferences$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final alsoReportToAndroidFramework$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final applicationLogFile$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final applicationLogFileDir$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final applicationLogFileLines$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final attachmentUriProvider$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final attachmentUris$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final buildConfigClass$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final deleteUnapprovedReportsOnApplicationStart$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final dropboxCollectionMinutes$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final excludeMatchingSettingsKeys$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final excludeMatchingSharedPreferencesKeys$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final includeDropBoxSystemTags$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final logcatArguments$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final logcatFilterByPid$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final logcatReadNonBlocking$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final parallel$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final pluginConfigurations$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final pluginLoader$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final reportContent$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final reportFormat$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final reportSendFailureToast$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final reportSendSuccessToast$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final retryPolicyClass$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final sendReportsInDevMode$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final sharedPreferencesName$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final stopServicesOnCrash$delegate:Lkotlin/properties/ReadWriteProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v0, 0x1c

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 27
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "sharedPreferencesName"

    const-string v3, "getSharedPreferencesName()Ljava/lang/String;"

    const-class v4, Lorg/acra/config/CoreConfigurationBuilder;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    .line 33
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "includeDropBoxSystemTags"

    const-string v3, "getIncludeDropBoxSystemTags()Ljava/lang/Boolean;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 39
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "additionalDropBoxTags"

    const-string v3, "getAdditionalDropBoxTags()Ljava/util/List;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 45
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "dropboxCollectionMinutes"

    const-string v3, "getDropboxCollectionMinutes()Ljava/lang/Integer;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 51
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "logcatArguments"

    const-string v3, "getLogcatArguments()Ljava/util/List;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 57
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "reportContent"

    const-string v3, "getReportContent()Ljava/util/List;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 63
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "deleteUnapprovedReportsOnApplicationStart"

    const-string v3, "getDeleteUnapprovedReportsOnApplicationStart()Ljava/lang/Boolean;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 69
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "alsoReportToAndroidFramework"

    const-string v3, "getAlsoReportToAndroidFramework()Ljava/lang/Boolean;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 75
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "additionalSharedPreferences"

    const-string v3, "getAdditionalSharedPreferences()Ljava/util/List;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 81
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "logcatFilterByPid"

    const-string v3, "getLogcatFilterByPid()Ljava/lang/Boolean;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 87
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "logcatReadNonBlocking"

    const-string v3, "getLogcatReadNonBlocking()Ljava/lang/Boolean;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 93
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "sendReportsInDevMode"

    const-string v3, "getSendReportsInDevMode()Ljava/lang/Boolean;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 99
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "excludeMatchingSharedPreferencesKeys"

    const-string v3, "getExcludeMatchingSharedPreferencesKeys()Ljava/util/List;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 105
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "excludeMatchingSettingsKeys"

    const-string v3, "getExcludeMatchingSettingsKeys()Ljava/util/List;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 111
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "buildConfigClass"

    const-string v3, "getBuildConfigClass()Ljava/lang/Class;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 117
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "applicationLogFile"

    const-string v3, "getApplicationLogFile()Ljava/lang/String;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 123
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "applicationLogFileLines"

    const-string v3, "getApplicationLogFileLines()Ljava/lang/Integer;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 129
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "applicationLogFileDir"

    const-string v3, "getApplicationLogFileDir()Lorg/acra/file/Directory;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 135
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "retryPolicyClass"

    const-string v3, "getRetryPolicyClass()Ljava/lang/Class;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 141
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "stopServicesOnCrash"

    const-string v3, "getStopServicesOnCrash()Ljava/lang/Boolean;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 147
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "attachmentUris"

    const-string v3, "getAttachmentUris()Ljava/util/List;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 153
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "attachmentUriProvider"

    const-string v3, "getAttachmentUriProvider()Ljava/lang/Class;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 160
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "reportSendSuccessToast"

    const-string v3, "getReportSendSuccessToast()Ljava/lang/String;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 166
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "reportSendFailureToast"

    const-string v3, "getReportSendFailureToast()Ljava/lang/String;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 172
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "reportFormat"

    const-string v3, "getReportFormat()Lorg/acra/data/StringFormat;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 178
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "parallel"

    const-string v3, "getParallel()Ljava/lang/Boolean;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 184
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "pluginLoader"

    const-string v3, "getPluginLoader()Lorg/acra/plugins/PluginLoader;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 190
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "pluginConfigurations"

    const-string v3, "getPluginConfigurations()Ljava/util/List;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sput-object v0, Lorg/acra/config/CoreConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->_defaultsBitField0:I

    .line 27
    sget-object v0, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    .line 33
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;-><init>(Ljava/lang/Object;Lorg/acra/config/CoreConfigurationBuilder;)V

    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->sharedPreferencesName$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 33
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$2;

    invoke-direct {v0, v1, p0}, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$2;-><init>(Ljava/lang/Object;Lorg/acra/config/CoreConfigurationBuilder;)V

    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->includeDropBoxSystemTags$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 33
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$3;

    invoke-direct {v0, v1, p0}, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$3;-><init>(Ljava/lang/Object;Lorg/acra/config/CoreConfigurationBuilder;)V

    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->additionalDropBoxTags$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 33
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$4;

    invoke-direct {v0, v1, p0}, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$4;-><init>(Ljava/lang/Object;Lorg/acra/config/CoreConfigurationBuilder;)V

    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->dropboxCollectionMinutes$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 33
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$5;

    invoke-direct {v0, v1, p0}, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$5;-><init>(Ljava/lang/Object;Lorg/acra/config/CoreConfigurationBuilder;)V

    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->logcatArguments$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 33
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$6;

    invoke-direct {v0, v1, p0}, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$6;-><init>(Ljava/lang/Object;Lorg/acra/config/CoreConfigurationBuilder;)V

    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->reportContent$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 33
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$7;

    invoke-direct {v0, v1, p0}, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$7;-><init>(Ljava/lang/Object;Lorg/acra/config/CoreConfigurationBuilder;)V

    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->deleteUnapprovedReportsOnApplicationStart$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 33
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$8;

    invoke-direct {v0, v1, p0}, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$8;-><init>(Ljava/lang/Object;Lorg/acra/config/CoreConfigurationBuilder;)V

    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->alsoReportToAndroidFramework$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 33
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$9;

    invoke-direct {v0, v1, p0}, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$9;-><init>(Ljava/lang/Object;Lorg/acra/config/CoreConfigurationBuilder;)V

    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->additionalSharedPreferences$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 33
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$10;

    invoke-direct {v0, v1, p0}, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$10;-><init>(Ljava/lang/Object;Lorg/acra/config/CoreConfigurationBuilder;)V

    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->logcatFilterByPid$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 33
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$11;

    invoke-direct {v0, v1, p0}, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$11;-><init>(Ljava/lang/Object;Lorg/acra/config/CoreConfigurationBuilder;)V

    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->logcatReadNonBlocking$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 33
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$12;

    invoke-direct {v0, v1, p0}, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$12;-><init>(Ljava/lang/Object;Lorg/acra/config/CoreConfigurationBuilder;)V

    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->sendReportsInDevMode$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 33
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$13;

    invoke-direct {v0, v1, p0}, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$13;-><init>(Ljava/lang/Object;Lorg/acra/config/CoreConfigurationBuilder;)V

    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->excludeMatchingSharedPreferencesKeys$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 33
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$14;

    invoke-direct {v0, v1, p0}, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$14;-><init>(Ljava/lang/Object;Lorg/acra/config/CoreConfigurationBuilder;)V

    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->excludeMatchingSettingsKeys$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 33
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$15;

    invoke-direct {v0, v1, p0}, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$15;-><init>(Ljava/lang/Object;Lorg/acra/config/CoreConfigurationBuilder;)V

    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->buildConfigClass$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 33
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$16;

    invoke-direct {v0, v1, p0}, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$16;-><init>(Ljava/lang/Object;Lorg/acra/config/CoreConfigurationBuilder;)V

    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->applicationLogFile$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 33
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$17;

    invoke-direct {v0, v1, p0}, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$17;-><init>(Ljava/lang/Object;Lorg/acra/config/CoreConfigurationBuilder;)V

    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->applicationLogFileLines$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 33
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$18;

    invoke-direct {v0, v1, p0}, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$18;-><init>(Ljava/lang/Object;Lorg/acra/config/CoreConfigurationBuilder;)V

    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->applicationLogFileDir$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 33
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$19;

    invoke-direct {v0, v1, p0}, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$19;-><init>(Ljava/lang/Object;Lorg/acra/config/CoreConfigurationBuilder;)V

    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->retryPolicyClass$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 33
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$20;

    invoke-direct {v0, v1, p0}, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$20;-><init>(Ljava/lang/Object;Lorg/acra/config/CoreConfigurationBuilder;)V

    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->stopServicesOnCrash$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 33
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$21;

    invoke-direct {v0, v1, p0}, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$21;-><init>(Ljava/lang/Object;Lorg/acra/config/CoreConfigurationBuilder;)V

    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->attachmentUris$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 33
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$22;

    invoke-direct {v0, v1, p0}, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$22;-><init>(Ljava/lang/Object;Lorg/acra/config/CoreConfigurationBuilder;)V

    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->attachmentUriProvider$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 33
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$23;

    invoke-direct {v0, v1, p0}, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$23;-><init>(Ljava/lang/Object;Lorg/acra/config/CoreConfigurationBuilder;)V

    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->reportSendSuccessToast$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 33
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$24;

    invoke-direct {v0, v1, p0}, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$24;-><init>(Ljava/lang/Object;Lorg/acra/config/CoreConfigurationBuilder;)V

    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->reportSendFailureToast$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 33
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$25;

    invoke-direct {v0, v1, p0}, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$25;-><init>(Ljava/lang/Object;Lorg/acra/config/CoreConfigurationBuilder;)V

    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->reportFormat$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 33
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$26;

    invoke-direct {v0, v1, p0}, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$26;-><init>(Ljava/lang/Object;Lorg/acra/config/CoreConfigurationBuilder;)V

    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->parallel$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 33
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$27;

    invoke-direct {v0, v1, p0}, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$27;-><init>(Ljava/lang/Object;Lorg/acra/config/CoreConfigurationBuilder;)V

    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->pluginLoader$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 33
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$28;

    invoke-direct {v0, v1, p0}, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$28;-><init>(Ljava/lang/Object;Lorg/acra/config/CoreConfigurationBuilder;)V

    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->pluginConfigurations$delegate:Lkotlin/properties/ReadWriteProperty;

    return-void
.end method

.method public static final synthetic access$get_defaultsBitField0$p(Lorg/acra/config/CoreConfigurationBuilder;)I
    .locals 0

    .line 19
    iget p0, p0, Lorg/acra/config/CoreConfigurationBuilder;->_defaultsBitField0:I

    return p0
.end method

.method public static final synthetic access$set_defaultsBitField0$p(Lorg/acra/config/CoreConfigurationBuilder;I)V
    .locals 0

    .line 19
    iput p1, p0, Lorg/acra/config/CoreConfigurationBuilder;->_defaultsBitField0:I

    return-void
.end method


# virtual methods
.method public final build()Lorg/acra/config/CoreConfiguration;
    .locals 26

    const/16 v0, 0x1e

    new-array v1, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v4, v1, v5

    const/4 v6, 0x2

    const-class v7, Ljava/util/List;

    aput-object v7, v1, v6

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x3

    aput-object v8, v1, v9

    const/4 v10, 0x4

    aput-object v7, v1, v10

    const/4 v11, 0x5

    aput-object v7, v1, v11

    const/4 v12, 0x6

    aput-object v4, v1, v12

    const/4 v13, 0x7

    aput-object v4, v1, v13

    const/16 v14, 0x8

    aput-object v7, v1, v14

    const/16 v15, 0x9

    aput-object v4, v1, v15

    const/16 v16, 0xa

    aput-object v4, v1, v16

    const/16 v17, 0xb

    aput-object v4, v1, v17

    const/16 v18, 0xc

    aput-object v7, v1, v18

    const/16 v19, 0xd

    aput-object v7, v1, v19

    const/16 v20, 0xe

    const-class v21, Ljava/lang/Class;

    aput-object v21, v1, v20

    const/16 v22, 0xf

    aput-object v3, v1, v22

    const/16 v23, 0x10

    aput-object v8, v1, v23

    const-class v24, Lorg/acra/file/Directory;

    const/16 v25, 0x11

    aput-object v24, v1, v25

    const/16 v24, 0x12

    aput-object v21, v1, v24

    const/16 v24, 0x13

    aput-object v4, v1, v24

    const/16 v24, 0x14

    aput-object v7, v1, v24

    const/16 v24, 0x15

    aput-object v21, v1, v24

    const/16 v21, 0x16

    aput-object v3, v1, v21

    const/16 v21, 0x17

    aput-object v3, v1, v21

    const/16 v3, 0x18

    const-class v21, Lorg/acra/data/StringFormat;

    aput-object v21, v1, v3

    const/16 v3, 0x19

    aput-object v4, v1, v3

    const/16 v3, 0x1a

    const-class v4, Lorg/acra/plugins/PluginLoader;

    aput-object v4, v1, v3

    const/16 v3, 0x1b

    aput-object v7, v1, v3

    const/16 v3, 0x1c

    aput-object v8, v1, v3

    const/16 v3, 0x1d

    const-class v4, Lkotlin/jvm/internal/DefaultConstructorMarker;

    aput-object v4, v1, v3

    const-class v3, Lorg/acra/config/CoreConfiguration;

    .line 499
    invoke-virtual {v3, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    .line 507
    invoke-virtual/range {p0 .. p0}, Lorg/acra/config/CoreConfigurationBuilder;->getSharedPreferencesName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 508
    invoke-virtual/range {p0 .. p0}, Lorg/acra/config/CoreConfigurationBuilder;->getIncludeDropBoxSystemTags()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v5

    invoke-virtual/range {p0 .. p0}, Lorg/acra/config/CoreConfigurationBuilder;->getAdditionalDropBoxTags()Ljava/util/List;

    move-result-object v3

    aput-object v3, v0, v6

    invoke-virtual/range {p0 .. p0}, Lorg/acra/config/CoreConfigurationBuilder;->getDropboxCollectionMinutes()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v9

    .line 509
    invoke-virtual/range {p0 .. p0}, Lorg/acra/config/CoreConfigurationBuilder;->getLogcatArguments()Ljava/util/List;

    move-result-object v3

    aput-object v3, v0, v10

    invoke-virtual/range {p0 .. p0}, Lorg/acra/config/CoreConfigurationBuilder;->getReportContent()Ljava/util/List;

    move-result-object v3

    aput-object v3, v0, v11

    invoke-virtual/range {p0 .. p0}, Lorg/acra/config/CoreConfigurationBuilder;->getDeleteUnapprovedReportsOnApplicationStart()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v12

    .line 510
    invoke-virtual/range {p0 .. p0}, Lorg/acra/config/CoreConfigurationBuilder;->getAlsoReportToAndroidFramework()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_3

    :cond_3
    move v3, v2

    :goto_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v13

    invoke-virtual/range {p0 .. p0}, Lorg/acra/config/CoreConfigurationBuilder;->getAdditionalSharedPreferences()Ljava/util/List;

    move-result-object v3

    aput-object v3, v0, v14

    invoke-virtual/range {p0 .. p0}, Lorg/acra/config/CoreConfigurationBuilder;->getLogcatFilterByPid()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_4

    :cond_4
    move v3, v2

    .line 511
    :goto_4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v15

    invoke-virtual/range {p0 .. p0}, Lorg/acra/config/CoreConfigurationBuilder;->getLogcatReadNonBlocking()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_5

    :cond_5
    move v3, v2

    :goto_5
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v16

    invoke-virtual/range {p0 .. p0}, Lorg/acra/config/CoreConfigurationBuilder;->getSendReportsInDevMode()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_6

    :cond_6
    move v3, v2

    :goto_6
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v17

    .line 512
    invoke-virtual/range {p0 .. p0}, Lorg/acra/config/CoreConfigurationBuilder;->getExcludeMatchingSharedPreferencesKeys()Ljava/util/List;

    move-result-object v3

    aput-object v3, v0, v18

    invoke-virtual/range {p0 .. p0}, Lorg/acra/config/CoreConfigurationBuilder;->getExcludeMatchingSettingsKeys()Ljava/util/List;

    move-result-object v3

    aput-object v3, v0, v19

    invoke-virtual/range {p0 .. p0}, Lorg/acra/config/CoreConfigurationBuilder;->getBuildConfigClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v0, v20

    .line 513
    invoke-virtual/range {p0 .. p0}, Lorg/acra/config/CoreConfigurationBuilder;->getApplicationLogFile()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v22

    invoke-virtual/range {p0 .. p0}, Lorg/acra/config/CoreConfigurationBuilder;->getApplicationLogFileLines()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_7

    :cond_7
    move v3, v2

    :goto_7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v23

    invoke-virtual/range {p0 .. p0}, Lorg/acra/config/CoreConfigurationBuilder;->getApplicationLogFileDir()Lorg/acra/file/Directory;

    move-result-object v3

    aput-object v3, v0, v25

    const/16 v3, 0x12

    invoke-virtual/range {p0 .. p0}, Lorg/acra/config/CoreConfigurationBuilder;->getRetryPolicyClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v0, v3

    .line 514
    invoke-virtual/range {p0 .. p0}, Lorg/acra/config/CoreConfigurationBuilder;->getStopServicesOnCrash()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_8

    :cond_8
    move v3, v2

    :goto_8
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/16 v4, 0x13

    aput-object v3, v0, v4

    const/16 v3, 0x14

    invoke-virtual/range {p0 .. p0}, Lorg/acra/config/CoreConfigurationBuilder;->getAttachmentUris()Ljava/util/List;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x15

    invoke-virtual/range {p0 .. p0}, Lorg/acra/config/CoreConfigurationBuilder;->getAttachmentUriProvider()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x16

    invoke-virtual/range {p0 .. p0}, Lorg/acra/config/CoreConfigurationBuilder;->getReportSendSuccessToast()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x17

    .line 515
    invoke-virtual/range {p0 .. p0}, Lorg/acra/config/CoreConfigurationBuilder;->getReportSendFailureToast()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x18

    invoke-virtual/range {p0 .. p0}, Lorg/acra/config/CoreConfigurationBuilder;->getReportFormat()Lorg/acra/data/StringFormat;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-virtual/range {p0 .. p0}, Lorg/acra/config/CoreConfigurationBuilder;->getParallel()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :cond_9
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v3, 0x19

    aput-object v2, v0, v3

    const/16 v2, 0x1a

    invoke-virtual/range {p0 .. p0}, Lorg/acra/config/CoreConfigurationBuilder;->getPluginLoader()Lorg/acra/plugins/PluginLoader;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x1b

    invoke-virtual/range {p0 .. p0}, Lorg/acra/config/CoreConfigurationBuilder;->getPluginConfigurations()Ljava/util/List;

    move-result-object v3

    aput-object v3, v0, v2

    move-object/from16 v2, p0

    iget v3, v2, Lorg/acra/config/CoreConfigurationBuilder;->_defaultsBitField0:I

    .line 516
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x1c

    aput-object v3, v0, v4

    const/16 v3, 0x1d

    const/4 v4, 0x0

    aput-object v4, v0, v3

    .line 507
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "newInstance(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lorg/acra/config/CoreConfiguration;

    return-object v0
.end method

.method public final getAdditionalDropBoxTags()Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->additionalDropBoxTags$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/acra/config/CoreConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    .line 39
    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final getAdditionalSharedPreferences()Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->additionalSharedPreferences$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/acra/config/CoreConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x8

    .line 75
    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final getAlsoReportToAndroidFramework()Ljava/lang/Boolean;
    .locals 3

    iget-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->alsoReportToAndroidFramework$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/acra/config/CoreConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x7

    .line 69
    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getApplicationLogFile()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->applicationLogFile$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/acra/config/CoreConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xf

    .line 117
    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getApplicationLogFileDir()Lorg/acra/file/Directory;
    .locals 3

    iget-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->applicationLogFileDir$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/acra/config/CoreConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x11

    .line 129
    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/acra/file/Directory;

    return-object v0
.end method

.method public final getApplicationLogFileLines()Ljava/lang/Integer;
    .locals 3

    iget-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->applicationLogFileLines$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/acra/config/CoreConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x10

    .line 123
    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public final getAttachmentUriProvider()Ljava/lang/Class;
    .locals 3

    iget-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->attachmentUriProvider$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/acra/config/CoreConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x15

    .line 153
    aget-object v1, v1, v2

    .line 154
    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public final getAttachmentUris()Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->attachmentUris$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/acra/config/CoreConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x14

    .line 147
    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final getBuildConfigClass()Ljava/lang/Class;
    .locals 3

    iget-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->buildConfigClass$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/acra/config/CoreConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xe

    .line 111
    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public final getDeleteUnapprovedReportsOnApplicationStart()Ljava/lang/Boolean;
    .locals 3

    iget-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->deleteUnapprovedReportsOnApplicationStart$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/acra/config/CoreConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x6

    .line 63
    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getDropboxCollectionMinutes()Ljava/lang/Integer;
    .locals 3

    iget-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->dropboxCollectionMinutes$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/acra/config/CoreConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    .line 45
    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public final getExcludeMatchingSettingsKeys()Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->excludeMatchingSettingsKeys$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/acra/config/CoreConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xd

    .line 105
    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final getExcludeMatchingSharedPreferencesKeys()Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->excludeMatchingSharedPreferencesKeys$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/acra/config/CoreConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xc

    .line 99
    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final getIncludeDropBoxSystemTags()Ljava/lang/Boolean;
    .locals 3

    iget-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->includeDropBoxSystemTags$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/acra/config/CoreConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    .line 33
    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getLogcatArguments()Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->logcatArguments$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/acra/config/CoreConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    .line 51
    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final getLogcatFilterByPid()Ljava/lang/Boolean;
    .locals 3

    iget-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->logcatFilterByPid$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/acra/config/CoreConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x9

    .line 81
    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getLogcatReadNonBlocking()Ljava/lang/Boolean;
    .locals 3

    iget-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->logcatReadNonBlocking$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/acra/config/CoreConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xa

    .line 87
    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getParallel()Ljava/lang/Boolean;
    .locals 3

    iget-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->parallel$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/acra/config/CoreConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x19

    .line 178
    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getPluginConfigurations()Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->pluginConfigurations$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/acra/config/CoreConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x1b

    .line 190
    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final getPluginLoader()Lorg/acra/plugins/PluginLoader;
    .locals 3

    iget-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->pluginLoader$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/acra/config/CoreConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x1a

    .line 184
    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/acra/plugins/PluginLoader;

    return-object v0
.end method

.method public final getReportContent()Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->reportContent$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/acra/config/CoreConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    .line 57
    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final getReportFormat()Lorg/acra/data/StringFormat;
    .locals 3

    iget-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->reportFormat$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/acra/config/CoreConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x18

    .line 172
    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/acra/data/StringFormat;

    return-object v0
.end method

.method public final getReportSendFailureToast()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->reportSendFailureToast$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/acra/config/CoreConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x17

    .line 166
    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getReportSendSuccessToast()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->reportSendSuccessToast$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/acra/config/CoreConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x16

    .line 160
    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getRetryPolicyClass()Ljava/lang/Class;
    .locals 3

    iget-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->retryPolicyClass$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/acra/config/CoreConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x12

    .line 135
    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public final getSendReportsInDevMode()Ljava/lang/Boolean;
    .locals 3

    iget-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->sendReportsInDevMode$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/acra/config/CoreConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xb

    .line 93
    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getSharedPreferencesName()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->sharedPreferencesName$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/acra/config/CoreConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    .line 27
    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getStopServicesOnCrash()Ljava/lang/Boolean;
    .locals 3

    iget-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->stopServicesOnCrash$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/acra/config/CoreConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x13

    .line 141
    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public final setPluginConfigurations(Ljava/util/List;)V
    .locals 3

    iget-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->pluginConfigurations$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/acra/config/CoreConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x1b

    .line 190
    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setReportContent(Ljava/util/List;)V
    .locals 3

    iget-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->reportContent$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/acra/config/CoreConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    .line 57
    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final varargs withPluginConfigurations([Lorg/acra/config/Configuration;)Lorg/acra/config/CoreConfigurationBuilder;
    .locals 1

    const-string v0, "pluginConfigurations"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 494
    invoke-static {p1}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/acra/config/CoreConfigurationBuilder;->setPluginConfigurations(Ljava/util/List;)V

    return-object p0
.end method

.method public final varargs withReportContent([Lorg/acra/ReportField;)Lorg/acra/config/CoreConfigurationBuilder;
    .locals 1

    const-string v0, "reportContent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    invoke-static {p1}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/acra/config/CoreConfigurationBuilder;->setReportContent(Ljava/util/List;)V

    return-object p0
.end method
