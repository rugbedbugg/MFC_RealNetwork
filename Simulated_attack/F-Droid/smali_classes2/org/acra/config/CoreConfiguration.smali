.class public final Lorg/acra/config/CoreConfiguration;
.super Ljava/lang/Object;
.source "CoreConfiguration.kt"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/acra/config/Configuration;


# instance fields
.field private final additionalDropBoxTags:Ljava/util/List;

.field private final additionalSharedPreferences:Ljava/util/List;

.field private final alsoReportToAndroidFramework:Z

.field private final applicationLogFile:Ljava/lang/String;

.field private final applicationLogFileDir:Lorg/acra/file/Directory;

.field private final applicationLogFileLines:I

.field private final attachmentUriProvider:Ljava/lang/Class;

.field private final attachmentUris:Ljava/util/List;

.field private final buildConfigClass:Ljava/lang/Class;

.field private final deleteUnapprovedReportsOnApplicationStart:Z

.field private final dropboxCollectionMinutes:I

.field private final excludeMatchingSettingsKeys:Ljava/util/List;

.field private final excludeMatchingSharedPreferencesKeys:Ljava/util/List;

.field private final includeDropBoxSystemTags:Z

.field private final logcatArguments:Ljava/util/List;

.field private final logcatFilterByPid:Z

.field private final logcatReadNonBlocking:Z

.field private final parallel:Z

.field private final pluginConfigurations:Ljava/util/List;

.field private final pluginLoader:Lorg/acra/plugins/PluginLoader;

.field private final reportContent:Ljava/util/List;

.field private final reportFormat:Lorg/acra/data/StringFormat;

.field private final reportSendFailureToast:Ljava/lang/String;

.field private final reportSendSuccessToast:Ljava/lang/String;

.field private final retryPolicyClass:Ljava/lang/Class;

.field private final sendReportsInDevMode:Z

.field private final sharedPreferencesName:Ljava/lang/String;

.field private final stopServicesOnCrash:Z


# direct methods
.method public constructor <init>()V
    .locals 31

    .line 0
    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const v29, 0xfffffff

    const/16 v30, 0x0

    invoke-direct/range {v0 .. v30}, Lorg/acra/config/CoreConfiguration;-><init>(Ljava/lang/String;ZLjava/util/List;ILjava/util/List;Ljava/util/List;ZZLjava/util/List;ZZZLjava/util/List;Ljava/util/List;Ljava/lang/Class;Ljava/lang/String;ILorg/acra/file/Directory;Ljava/lang/Class;ZLjava/util/List;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Lorg/acra/data/StringFormat;ZLorg/acra/plugins/PluginLoader;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/util/List;ILjava/util/List;Ljava/util/List;ZZLjava/util/List;ZZZLjava/util/List;Ljava/util/List;Ljava/lang/Class;Ljava/lang/String;ILorg/acra/file/Directory;Ljava/lang/Class;ZLjava/util/List;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Lorg/acra/data/StringFormat;ZLorg/acra/plugins/PluginLoader;Ljava/util/List;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lorg/acra/ReportField;",
            ">;ZZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "I",
            "Lorg/acra/file/Directory;",
            "Ljava/lang/Class<",
            "+",
            "Lorg/acra/config/RetryPolicy;",
            ">;Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lorg/acra/attachment/AttachmentUriProvider;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/acra/data/StringFormat;",
            "Z",
            "Lorg/acra/plugins/PluginLoader;",
            "Ljava/util/List<",
            "+",
            "Lorg/acra/config/Configuration;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p9

    move-object/from16 v5, p13

    move-object/from16 v6, p14

    move-object/from16 v7, p18

    move-object/from16 v8, p19

    move-object/from16 v9, p21

    move-object/from16 v10, p22

    move-object/from16 v11, p25

    move-object/from16 v12, p27

    move-object/from16 v13, p28

    const-string v14, "additionalDropBoxTags"

    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "logcatArguments"

    invoke-static {v2, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "reportContent"

    invoke-static {v3, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "additionalSharedPreferences"

    invoke-static {v4, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "excludeMatchingSharedPreferencesKeys"

    invoke-static {v5, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "excludeMatchingSettingsKeys"

    invoke-static {v6, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "applicationLogFileDir"

    invoke-static {v7, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "retryPolicyClass"

    invoke-static {v8, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "attachmentUris"

    invoke-static {v9, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "attachmentUriProvider"

    invoke-static {v10, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "reportFormat"

    invoke-static {v11, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "pluginLoader"

    invoke-static {v12, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "pluginConfigurations"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v14, p1

    iput-object v14, v0, Lorg/acra/config/CoreConfiguration;->sharedPreferencesName:Ljava/lang/String;

    move/from16 v14, p2

    iput-boolean v14, v0, Lorg/acra/config/CoreConfiguration;->includeDropBoxSystemTags:Z

    iput-object v1, v0, Lorg/acra/config/CoreConfiguration;->additionalDropBoxTags:Ljava/util/List;

    move/from16 v1, p4

    iput v1, v0, Lorg/acra/config/CoreConfiguration;->dropboxCollectionMinutes:I

    iput-object v2, v0, Lorg/acra/config/CoreConfiguration;->logcatArguments:Ljava/util/List;

    iput-object v3, v0, Lorg/acra/config/CoreConfiguration;->reportContent:Ljava/util/List;

    move/from16 v1, p7

    iput-boolean v1, v0, Lorg/acra/config/CoreConfiguration;->deleteUnapprovedReportsOnApplicationStart:Z

    move/from16 v1, p8

    iput-boolean v1, v0, Lorg/acra/config/CoreConfiguration;->alsoReportToAndroidFramework:Z

    iput-object v4, v0, Lorg/acra/config/CoreConfiguration;->additionalSharedPreferences:Ljava/util/List;

    move/from16 v1, p10

    iput-boolean v1, v0, Lorg/acra/config/CoreConfiguration;->logcatFilterByPid:Z

    move/from16 v1, p11

    iput-boolean v1, v0, Lorg/acra/config/CoreConfiguration;->logcatReadNonBlocking:Z

    move/from16 v1, p12

    iput-boolean v1, v0, Lorg/acra/config/CoreConfiguration;->sendReportsInDevMode:Z

    iput-object v5, v0, Lorg/acra/config/CoreConfiguration;->excludeMatchingSharedPreferencesKeys:Ljava/util/List;

    iput-object v6, v0, Lorg/acra/config/CoreConfiguration;->excludeMatchingSettingsKeys:Ljava/util/List;

    move-object/from16 v1, p15

    iput-object v1, v0, Lorg/acra/config/CoreConfiguration;->buildConfigClass:Ljava/lang/Class;

    move-object/from16 v1, p16

    iput-object v1, v0, Lorg/acra/config/CoreConfiguration;->applicationLogFile:Ljava/lang/String;

    move/from16 v1, p17

    iput v1, v0, Lorg/acra/config/CoreConfiguration;->applicationLogFileLines:I

    iput-object v7, v0, Lorg/acra/config/CoreConfiguration;->applicationLogFileDir:Lorg/acra/file/Directory;

    iput-object v8, v0, Lorg/acra/config/CoreConfiguration;->retryPolicyClass:Ljava/lang/Class;

    move/from16 v1, p20

    iput-boolean v1, v0, Lorg/acra/config/CoreConfiguration;->stopServicesOnCrash:Z

    iput-object v9, v0, Lorg/acra/config/CoreConfiguration;->attachmentUris:Ljava/util/List;

    iput-object v10, v0, Lorg/acra/config/CoreConfiguration;->attachmentUriProvider:Ljava/lang/Class;

    move-object/from16 v1, p23

    iput-object v1, v0, Lorg/acra/config/CoreConfiguration;->reportSendSuccessToast:Ljava/lang/String;

    move-object/from16 v1, p24

    iput-object v1, v0, Lorg/acra/config/CoreConfiguration;->reportSendFailureToast:Ljava/lang/String;

    iput-object v11, v0, Lorg/acra/config/CoreConfiguration;->reportFormat:Lorg/acra/data/StringFormat;

    move/from16 v1, p26

    iput-boolean v1, v0, Lorg/acra/config/CoreConfiguration;->parallel:Z

    iput-object v12, v0, Lorg/acra/config/CoreConfiguration;->pluginLoader:Lorg/acra/plugins/PluginLoader;

    iput-object v13, v0, Lorg/acra/config/CoreConfiguration;->pluginConfigurations:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZLjava/util/List;ILjava/util/List;Ljava/util/List;ZZLjava/util/List;ZZZLjava/util/List;Ljava/util/List;Ljava/lang/Class;Ljava/lang/String;ILorg/acra/file/Directory;Ljava/lang/Class;ZLjava/util/List;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Lorg/acra/data/StringFormat;ZLorg/acra/plugins/PluginLoader;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 29

    move/from16 v0, p29

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    move/from16 v3, p2

    :goto_1
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_2

    .line 70
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5

    goto :goto_2

    :cond_2
    move-object/from16 v5, p3

    :goto_2
    and-int/lit8 v6, v0, 0x8

    if-eqz v6, :cond_3

    const/4 v6, 0x5

    goto :goto_3

    :cond_3
    move/from16 v6, p4

    :goto_3
    and-int/lit8 v7, v0, 0x10

    if-eqz v7, :cond_4

    const-string v7, "-v"

    const-string v8, "time"

    const-string v9, "-t"

    const-string v10, "100"

    filled-new-array {v9, v10, v7, v8}, [Ljava/lang/String;

    move-result-object v7

    .line 85
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    goto :goto_4

    :cond_4
    move-object/from16 v7, p5

    :goto_4
    and-int/lit8 v8, v0, 0x20

    if-eqz v8, :cond_5

    .line 92
    sget-object v8, Lorg/acra/ACRAConstants;->DEFAULT_REPORT_FIELDS:Ljava/util/List;

    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v8

    goto :goto_5

    :cond_5
    move-object/from16 v8, p6

    :goto_5
    and-int/lit8 v9, v0, 0x40

    if-eqz v9, :cond_6

    const/4 v9, 0x1

    goto :goto_6

    :cond_6
    move/from16 v9, p7

    :goto_6
    and-int/lit16 v11, v0, 0x80

    if-eqz v11, :cond_7

    const/4 v11, 0x0

    goto :goto_7

    :cond_7
    move/from16 v11, p8

    :goto_7
    and-int/lit16 v12, v0, 0x100

    if-eqz v12, :cond_8

    .line 120
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v12

    goto :goto_8

    :cond_8
    move-object/from16 v12, p9

    :goto_8
    and-int/lit16 v13, v0, 0x200

    if-eqz v13, :cond_9

    const/4 v13, 0x1

    goto :goto_9

    :cond_9
    move/from16 v13, p10

    :goto_9
    and-int/lit16 v14, v0, 0x400

    if-eqz v14, :cond_a

    const/4 v14, 0x0

    goto :goto_a

    :cond_a
    move/from16 v14, p11

    :goto_a
    and-int/lit16 v15, v0, 0x800

    if-eqz v15, :cond_b

    const/4 v15, 0x1

    goto :goto_b

    :cond_b
    move/from16 v15, p12

    :goto_b
    and-int/lit16 v2, v0, 0x1000

    if-eqz v2, :cond_c

    .line 147
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    goto :goto_c

    :cond_c
    move-object/from16 v2, p13

    :goto_c
    and-int/lit16 v4, v0, 0x2000

    if-eqz v4, :cond_d

    .line 159
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    goto :goto_d

    :cond_d
    move-object/from16 v4, p14

    :goto_d
    and-int/lit16 v10, v0, 0x4000

    if-eqz v10, :cond_e

    const/4 v10, 0x0

    goto :goto_e

    :cond_e
    move-object/from16 v10, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v0, v16

    if-eqz v16, :cond_f

    const/16 v16, 0x0

    goto :goto_f

    :cond_f
    move-object/from16 v16, p16

    :goto_f
    const/high16 v17, 0x10000

    and-int v17, v0, v17

    if-eqz v17, :cond_10

    const/16 v17, 0x64

    goto :goto_10

    :cond_10
    move/from16 v17, p17

    :goto_10
    const/high16 v18, 0x20000

    and-int v18, v0, v18

    if-eqz v18, :cond_11

    .line 181
    sget-object v18, Lorg/acra/file/Directory;->FILES_LEGACY:Lorg/acra/file/Directory;

    goto :goto_11

    :cond_11
    move-object/from16 v18, p18

    :goto_11
    const/high16 v19, 0x40000

    and-int v19, v0, v19

    if-eqz v19, :cond_12

    const-class v19, Lorg/acra/config/DefaultRetryPolicy;

    goto :goto_12

    :cond_12
    move-object/from16 v19, p19

    :goto_12
    const/high16 v20, 0x80000

    and-int v20, v0, v20

    if-eqz v20, :cond_13

    const/16 v20, 0x0

    goto :goto_13

    :cond_13
    move/from16 v20, p20

    :goto_13
    const/high16 v21, 0x100000

    and-int v21, v0, v21

    if-eqz v21, :cond_14

    .line 211
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v21

    goto :goto_14

    :cond_14
    move-object/from16 v21, p21

    :goto_14
    const/high16 v22, 0x200000

    and-int v22, v0, v22

    if-eqz v22, :cond_15

    const-class v22, Lorg/acra/attachment/DefaultAttachmentProvider;

    goto :goto_15

    :cond_15
    move-object/from16 v22, p22

    :goto_15
    const/high16 v23, 0x400000

    and-int v23, v0, v23

    if-eqz v23, :cond_16

    const/16 v23, 0x0

    goto :goto_16

    :cond_16
    move-object/from16 v23, p23

    :goto_16
    const/high16 v24, 0x800000

    and-int v24, v0, v24

    if-eqz v24, :cond_17

    const/16 v24, 0x0

    goto :goto_17

    :cond_17
    move-object/from16 v24, p24

    :goto_17
    const/high16 v25, 0x1000000

    and-int v25, v0, v25

    if-eqz v25, :cond_18

    .line 235
    sget-object v25, Lorg/acra/data/StringFormat;->JSON:Lorg/acra/data/StringFormat;

    goto :goto_18

    :cond_18
    move-object/from16 v25, p25

    :goto_18
    const/high16 v26, 0x2000000

    and-int v26, v0, v26

    if-eqz v26, :cond_19

    const/16 v26, 0x1

    goto :goto_19

    :cond_19
    move/from16 v26, p26

    :goto_19
    const/high16 v27, 0x4000000

    and-int v27, v0, v27

    if-eqz v27, :cond_1a

    .line 246
    new-instance v27, Lorg/acra/plugins/ServicePluginLoader;

    invoke-direct/range {v27 .. v27}, Lorg/acra/plugins/ServicePluginLoader;-><init>()V

    goto :goto_1a

    :cond_1a
    move-object/from16 v27, p27

    :goto_1a
    const/high16 v28, 0x8000000

    and-int v0, v0, v28

    if-eqz v0, :cond_1b

    .line 251
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1b

    :cond_1b
    move-object/from16 v0, p28

    :goto_1b
    move-object/from16 p1, p0

    move-object/from16 p2, v1

    move/from16 p3, v3

    move-object/from16 p4, v5

    move/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move/from16 p8, v9

    move/from16 p9, v11

    move-object/from16 p10, v12

    move/from16 p11, v13

    move/from16 p12, v14

    move/from16 p13, v15

    move-object/from16 p14, v2

    move-object/from16 p15, v4

    move-object/from16 p16, v10

    move-object/from16 p17, v16

    move/from16 p18, v17

    move-object/from16 p19, v18

    move-object/from16 p20, v19

    move/from16 p21, v20

    move-object/from16 p22, v21

    move-object/from16 p23, v22

    move-object/from16 p24, v23

    move-object/from16 p25, v24

    move-object/from16 p26, v25

    move/from16 p27, v26

    move-object/from16 p28, v27

    move-object/from16 p29, v0

    .line 31
    invoke-direct/range {p1 .. p29}, Lorg/acra/config/CoreConfiguration;-><init>(Ljava/lang/String;ZLjava/util/List;ILjava/util/List;Ljava/util/List;ZZLjava/util/List;ZZZLjava/util/List;Ljava/util/List;Ljava/lang/Class;Ljava/lang/String;ILorg/acra/file/Directory;Ljava/lang/Class;ZLjava/util/List;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Lorg/acra/data/StringFormat;ZLorg/acra/plugins/PluginLoader;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public enabled()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public final getAdditionalDropBoxTags()Ljava/util/List;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/acra/config/CoreConfiguration;->additionalDropBoxTags:Ljava/util/List;

    return-object v0
.end method

.method public final getAdditionalSharedPreferences()Ljava/util/List;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/acra/config/CoreConfiguration;->additionalSharedPreferences:Ljava/util/List;

    return-object v0
.end method

.method public final getAlsoReportToAndroidFramework()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lorg/acra/config/CoreConfiguration;->alsoReportToAndroidFramework:Z

    return v0
.end method

.method public final getApplicationLogFile()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/acra/config/CoreConfiguration;->applicationLogFile:Ljava/lang/String;

    return-object v0
.end method

.method public final getApplicationLogFileDir()Lorg/acra/file/Directory;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/acra/config/CoreConfiguration;->applicationLogFileDir:Lorg/acra/file/Directory;

    return-object v0
.end method

.method public final getApplicationLogFileLines()I
    .locals 1

    .line 0
    iget v0, p0, Lorg/acra/config/CoreConfiguration;->applicationLogFileLines:I

    return v0
.end method

.method public final getAttachmentUriProvider()Ljava/lang/Class;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/acra/config/CoreConfiguration;->attachmentUriProvider:Ljava/lang/Class;

    return-object v0
.end method

.method public final getAttachmentUris()Ljava/util/List;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/acra/config/CoreConfiguration;->attachmentUris:Ljava/util/List;

    return-object v0
.end method

.method public final getBuildConfigClass()Ljava/lang/Class;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/acra/config/CoreConfiguration;->buildConfigClass:Ljava/lang/Class;

    return-object v0
.end method

.method public final getDeleteUnapprovedReportsOnApplicationStart()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lorg/acra/config/CoreConfiguration;->deleteUnapprovedReportsOnApplicationStart:Z

    return v0
.end method

.method public final getDropboxCollectionMinutes()I
    .locals 1

    .line 0
    iget v0, p0, Lorg/acra/config/CoreConfiguration;->dropboxCollectionMinutes:I

    return v0
.end method

.method public final getExcludeMatchingSettingsKeys()Ljava/util/List;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/acra/config/CoreConfiguration;->excludeMatchingSettingsKeys:Ljava/util/List;

    return-object v0
.end method

.method public final getExcludeMatchingSharedPreferencesKeys()Ljava/util/List;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/acra/config/CoreConfiguration;->excludeMatchingSharedPreferencesKeys:Ljava/util/List;

    return-object v0
.end method

.method public final getIncludeDropBoxSystemTags()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lorg/acra/config/CoreConfiguration;->includeDropBoxSystemTags:Z

    return v0
.end method

.method public final getLogcatArguments()Ljava/util/List;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/acra/config/CoreConfiguration;->logcatArguments:Ljava/util/List;

    return-object v0
.end method

.method public final getLogcatReadNonBlocking()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lorg/acra/config/CoreConfiguration;->logcatReadNonBlocking:Z

    return v0
.end method

.method public final getParallel()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lorg/acra/config/CoreConfiguration;->parallel:Z

    return v0
.end method

.method public final getPluginConfigurations()Ljava/util/List;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/acra/config/CoreConfiguration;->pluginConfigurations:Ljava/util/List;

    return-object v0
.end method

.method public final getPluginLoader()Lorg/acra/plugins/PluginLoader;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/acra/config/CoreConfiguration;->pluginLoader:Lorg/acra/plugins/PluginLoader;

    return-object v0
.end method

.method public final getReportContent()Ljava/util/List;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/acra/config/CoreConfiguration;->reportContent:Ljava/util/List;

    return-object v0
.end method

.method public final getReportFormat()Lorg/acra/data/StringFormat;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/acra/config/CoreConfiguration;->reportFormat:Lorg/acra/data/StringFormat;

    return-object v0
.end method

.method public final getReportSendFailureToast()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/acra/config/CoreConfiguration;->reportSendFailureToast:Ljava/lang/String;

    return-object v0
.end method

.method public final getReportSendSuccessToast()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/acra/config/CoreConfiguration;->reportSendSuccessToast:Ljava/lang/String;

    return-object v0
.end method

.method public final getRetryPolicyClass()Ljava/lang/Class;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/acra/config/CoreConfiguration;->retryPolicyClass:Ljava/lang/Class;

    return-object v0
.end method

.method public final getSendReportsInDevMode()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lorg/acra/config/CoreConfiguration;->sendReportsInDevMode:Z

    return v0
.end method

.method public final getSharedPreferencesName()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/acra/config/CoreConfiguration;->sharedPreferencesName:Ljava/lang/String;

    return-object v0
.end method

.method public final getStopServicesOnCrash()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lorg/acra/config/CoreConfiguration;->stopServicesOnCrash:Z

    return v0
.end method
