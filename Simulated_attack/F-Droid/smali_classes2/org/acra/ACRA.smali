.class public final Lorg/acra/ACRA;
.super Ljava/lang/Object;
.source "ACRA.kt"


# static fields
.field public static DEV_LOGGING:Z

.field public static final INSTANCE:Lorg/acra/ACRA;

.field public static final LOG_TAG:Ljava/lang/String;

.field private static errorReporter:Lorg/acra/ErrorReporter;

.field public static log:Lorg/acra/log/ACRALog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/acra/ACRA;

    invoke-direct {v0}, Lorg/acra/ACRA;-><init>()V

    sput-object v0, Lorg/acra/ACRA;->INSTANCE:Lorg/acra/ACRA;

    const-class v0, Lorg/acra/ACRA;

    .line 49
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSimpleName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    .line 52
    new-instance v0, Lorg/acra/log/AndroidLogDelegate;

    invoke-direct {v0}, Lorg/acra/log/AndroidLogDelegate;-><init>()V

    sput-object v0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    .line 106
    sget-object v0, Lorg/acra/util/StubCreator;->INSTANCE:Lorg/acra/util/StubCreator;

    invoke-virtual {v0}, Lorg/acra/util/StubCreator;->createErrorReporterStub()Lorg/acra/ErrorReporter;

    move-result-object v0

    sput-object v0, Lorg/acra/ACRA;->errorReporter:Lorg/acra/ErrorReporter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final currentProcessName()Ljava/lang/String;
    .locals 8

    .line 200
    :try_start_0
    new-instance v0, Lorg/acra/util/StreamReader;

    const-string v1, "/proc/self/cmdline"

    invoke-direct {v0, v1}, Lorg/acra/util/StreamReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/acra/util/StreamReader;->read()Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-gt v4, v1, :cond_5

    if-nez v5, :cond_0

    move v6, v4

    goto :goto_1

    :cond_0
    move v6, v1

    .line 85
    :goto_1
    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    .line 200
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v6

    if-gtz v6, :cond_1

    move v6, v2

    goto :goto_2

    :cond_1
    move v6, v3

    :goto_2
    if-nez v5, :cond_3

    if-nez v6, :cond_2

    move v5, v2

    goto :goto_0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    if-nez v6, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_5
    :goto_3
    add-int/2addr v1, v2

    .line 100
    invoke-interface {v0, v4, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    const/4 v0, 0x0

    :goto_4
    return-object v0
.end method

.method public static final getErrorReporter()Lorg/acra/ErrorReporter;
    .locals 1

    .line 0
    sget-object v0, Lorg/acra/ACRA;->errorReporter:Lorg/acra/ErrorReporter;

    return-object v0
.end method

.method public static final init(Landroid/app/Application;Lorg/acra/config/CoreConfiguration;Z)V
    .locals 10

    const-string v0, "app"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    invoke-static {}, Lorg/acra/ACRA;->isACRASenderServiceProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v1, Lorg/acra/ACRA;->DEV_LOGGING:Z

    if-eqz v1, :cond_0

    sget-object v1, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Not initialising ACRA to listen for uncaught Exceptions as this is the SendWorker process and we only send reports, we don\'t capture them to avoid infinite loops"

    .line 7
    invoke-interface {v1, v2, v3}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v8, 0x1

    sget-object v1, Lorg/acra/ACRA;->INSTANCE:Lorg/acra/ACRA;

    .line 159
    invoke-virtual {v1}, Lorg/acra/ACRA;->isInitialised()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v3, "ACRA#init called more than once. This might have unexpected side effects. Doing this outside of tests is discouraged."

    .line 15
    invoke-interface {v1, v2, v3}, Lorg/acra/log/ACRALog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lorg/acra/ACRA;->DEV_LOGGING:Z

    if-eqz v1, :cond_1

    sget-object v1, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    const-string v3, "Removing old ACRA config..."

    .line 7
    invoke-interface {v1, v2, v3}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v1, Lorg/acra/ACRA;->errorReporter:Lorg/acra/ErrorReporter;

    const-string v2, "null cannot be cast to non-null type org.acra.reporter.ErrorReporterImpl"

    .line 162
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lorg/acra/reporter/ErrorReporterImpl;

    invoke-virtual {v1}, Lorg/acra/reporter/ErrorReporterImpl;->unregister()V

    .line 163
    sget-object v1, Lorg/acra/util/StubCreator;->INSTANCE:Lorg/acra/util/StubCreator;

    invoke-virtual {v1}, Lorg/acra/util/StubCreator;->createErrorReporterStub()Lorg/acra/ErrorReporter;

    move-result-object v1

    sput-object v1, Lorg/acra/ACRA;->errorReporter:Lorg/acra/ErrorReporter;

    .line 165
    :cond_2
    new-instance v1, Lorg/acra/prefs/SharedPreferencesFactory;

    invoke-direct {v1, p0, p1}, Lorg/acra/prefs/SharedPreferencesFactory;-><init>(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;)V

    invoke-virtual {v1}, Lorg/acra/prefs/SharedPreferencesFactory;->create()Landroid/content/SharedPreferences;

    move-result-object v1

    if-nez v0, :cond_4

    .line 168
    sget-object v0, Lorg/acra/prefs/SharedPreferencesFactory;->Companion:Lorg/acra/prefs/SharedPreferencesFactory$Companion;

    invoke-virtual {v0, v1}, Lorg/acra/prefs/SharedPreferencesFactory$Companion;->shouldEnableACRA(Landroid/content/SharedPreferences;)Z

    move-result v7

    sget-object v0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    if-eqz v7, :cond_3

    const-string v3, "enabled"

    goto :goto_0

    :cond_3
    const-string v3, "disabled"

    .line 170
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACRA is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", initializing..."

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 11
    invoke-interface {v0, v2, v3}, Lorg/acra/log/ACRALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    new-instance v0, Lorg/acra/reporter/ErrorReporterImpl;

    move-object v4, v0

    move-object v5, p0

    move-object v6, p1

    move v9, p2

    invoke-direct/range {v4 .. v9}, Lorg/acra/reporter/ErrorReporterImpl;-><init>(Landroid/app/Application;Lorg/acra/config/CoreConfiguration;ZZZ)V

    sput-object v0, Lorg/acra/ACRA;->errorReporter:Lorg/acra/ErrorReporter;

    .line 177
    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    :cond_4
    return-void
.end method

.method public static final init(Landroid/app/Application;Lorg/acra/config/CoreConfigurationBuilder;)V
    .locals 3

    .line 0
    const-string v0, "app"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lorg/acra/ACRA;->init$default(Landroid/app/Application;Lorg/acra/config/CoreConfigurationBuilder;ZILjava/lang/Object;)V

    return-void
.end method

.method public static final init(Landroid/app/Application;Lorg/acra/config/CoreConfigurationBuilder;Z)V
    .locals 1

    const-string v0, "app"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    invoke-virtual {p1}, Lorg/acra/config/CoreConfigurationBuilder;->build()Lorg/acra/config/CoreConfiguration;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lorg/acra/ACRA;->init(Landroid/app/Application;Lorg/acra/config/CoreConfiguration;Z)V

    return-void
.end method

.method public static synthetic init$default(Landroid/app/Application;Lorg/acra/config/CoreConfigurationBuilder;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p3, 0x2

    if-eqz p4, :cond_0

    .line 124
    new-instance p1, Lorg/acra/config/CoreConfigurationBuilder;

    invoke-direct {p1}, Lorg/acra/config/CoreConfigurationBuilder;-><init>()V

    :cond_0
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_1

    const/4 p2, 0x1

    :cond_1
    invoke-static {p0, p1, p2}, Lorg/acra/ACRA;->init(Landroid/app/Application;Lorg/acra/config/CoreConfigurationBuilder;Z)V

    return-void
.end method

.method public static final isACRASenderServiceProcess()Z
    .locals 5

    sget-object v0, Lorg/acra/ACRA;->INSTANCE:Lorg/acra/ACRA;

    .line 193
    invoke-direct {v0}, Lorg/acra/ACRA;->currentProcessName()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/acra/ACRA;->DEV_LOGGING:Z

    if-eqz v1, :cond_0

    sget-object v1, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    .line 194
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACRA processName=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-interface {v1, v2, v3}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, ":acra"

    .line 196
    invoke-static {v0, v4, v1, v2, v3}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method public final isInitialised()Z
    .locals 1

    sget-object v0, Lorg/acra/ACRA;->errorReporter:Lorg/acra/ErrorReporter;

    .line 185
    instance-of v0, v0, Lorg/acra/reporter/ErrorReporterImpl;

    return v0
.end method
