.class public abstract Lorg/slf4j/LoggerFactory;
.super Ljava/lang/Object;
.source "LoggerFactory.java"


# static fields
.field private static final API_COMPATIBILITY_LIST:[Ljava/lang/String;

.field static DETECT_LOGGER_NAME_MISMATCH:Z

.field static volatile INITIALIZATION_STATE:I

.field static final NOP_FALLBACK_SERVICE_PROVIDER:Lorg/slf4j/helpers/NOP_FallbackServiceProvider;

.field static volatile PROVIDER:Lorg/slf4j/spi/SLF4JServiceProvider;

.field static final SUBST_PROVIDER:Lorg/slf4j/helpers/SubstituteServiceProvider;


# direct methods
.method public static synthetic $r8$lambda$i_uafskoi0hzjGG42QeQr2xKEhQ(Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/slf4j/LoggerFactory;->lambda$getServiceLoader$0(Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 95
    new-instance v0, Lorg/slf4j/helpers/SubstituteServiceProvider;

    invoke-direct {v0}, Lorg/slf4j/helpers/SubstituteServiceProvider;-><init>()V

    sput-object v0, Lorg/slf4j/LoggerFactory;->SUBST_PROVIDER:Lorg/slf4j/helpers/SubstituteServiceProvider;

    .line 96
    new-instance v0, Lorg/slf4j/helpers/NOP_FallbackServiceProvider;

    invoke-direct {v0}, Lorg/slf4j/helpers/NOP_FallbackServiceProvider;-><init>()V

    sput-object v0, Lorg/slf4j/LoggerFactory;->NOP_FALLBACK_SERVICE_PROVIDER:Lorg/slf4j/helpers/NOP_FallbackServiceProvider;

    const-string v0, "slf4j.detectLoggerNameMismatch"

    .line 102
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->safeGetBooleanSystemProperty(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/slf4j/LoggerFactory;->DETECT_LOGGER_NAME_MISMATCH:Z

    const-string v0, "2.0"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/slf4j/LoggerFactory;->API_COMPATIBILITY_LIST:[Ljava/lang/String;

    return-void
.end method

.method private static final bind()V
    .locals 3

    .line 178
    :try_start_0
    invoke-static {}, Lorg/slf4j/LoggerFactory;->findServiceProviders()Ljava/util/List;

    move-result-object v0

    .line 179
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->reportMultipleBindingAmbiguity(Ljava/util/List;)V

    if-eqz v0, :cond_0

    .line 180
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 181
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/slf4j/spi/SLF4JServiceProvider;

    sput-object v1, Lorg/slf4j/LoggerFactory;->PROVIDER:Lorg/slf4j/spi/SLF4JServiceProvider;

    sget-object v1, Lorg/slf4j/LoggerFactory;->PROVIDER:Lorg/slf4j/spi/SLF4JServiceProvider;

    .line 183
    invoke-interface {v1}, Lorg/slf4j/spi/SLF4JServiceProvider;->initialize()V

    const/4 v1, 0x3

    sput v1, Lorg/slf4j/LoggerFactory;->INITIALIZATION_STATE:I

    .line 185
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->reportActualBinding(Ljava/util/List;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x4

    sput v0, Lorg/slf4j/LoggerFactory;->INITIALIZATION_STATE:I

    const-string v0, "No SLF4J providers were found."

    .line 188
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    const-string v0, "Defaulting to no-operation (NOP) logger implementation"

    .line 189
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    const-string v0, "See https://www.slf4j.org/codes.html#noProviders for further details."

    .line 190
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 192
    invoke-static {}, Lorg/slf4j/LoggerFactory;->findPossibleStaticLoggerBinderPathSet()Ljava/util/Set;

    move-result-object v0

    .line 193
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->reportIgnoredStaticLoggerBinders(Ljava/util/Set;)V

    .line 195
    :goto_0
    invoke-static {}, Lorg/slf4j/LoggerFactory;->postBindCleanUp()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 197
    :goto_1
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->failedBinding(Ljava/lang/Throwable;)V

    .line 198
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected initialization failure"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static emitReplayOrSubstituionWarning(Lorg/slf4j/event/SubstituteLoggingEvent;I)V
    .locals 1

    .line 285
    invoke-virtual {p0}, Lorg/slf4j/event/SubstituteLoggingEvent;->getLogger()Lorg/slf4j/helpers/SubstituteLogger;

    move-result-object v0

    invoke-virtual {v0}, Lorg/slf4j/helpers/SubstituteLogger;->isDelegateEventAware()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    invoke-static {p1}, Lorg/slf4j/LoggerFactory;->emitReplayWarning(I)V

    goto :goto_0

    .line 287
    :cond_0
    invoke-virtual {p0}, Lorg/slf4j/event/SubstituteLoggingEvent;->getLogger()Lorg/slf4j/helpers/SubstituteLogger;

    move-result-object p0

    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->isDelegateNOP()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 290
    :cond_1
    invoke-static {}, Lorg/slf4j/LoggerFactory;->emitSubstitutionWarning()V

    :goto_0
    return-void
.end method

.method private static emitReplayWarning(I)V
    .locals 2

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "A number ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") of logging calls during the initialization phase have been intercepted and are"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    const-string p0, "now being replayed. These are subject to the filtering rules of the underlying logging system."

    .line 325
    invoke-static {p0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    const-string p0, "See also https://www.slf4j.org/codes.html#replay"

    .line 326
    invoke-static {p0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    return-void
.end method

.method private static emitSubstitutionWarning()V
    .locals 1

    const-string v0, "The following set of substitute loggers may have been accessed"

    .line 316
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    const-string v0, "during the initialization phase. Logging calls during this"

    .line 317
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    const-string v0, "phase were not honored. However, subsequent logging calls to these"

    .line 318
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    const-string v0, "loggers will work as normally expected."

    .line 319
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    const-string v0, "See also https://www.slf4j.org/codes.html#substituteLogger"

    .line 320
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    return-void
.end method

.method static failedBinding(Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x2

    sput v0, Lorg/slf4j/LoggerFactory;->INITIALIZATION_STATE:I

    const-string v0, "Failed to instantiate SLF4J LoggerFactory"

    .line 262
    invoke-static {v0, p0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static findPossibleStaticLoggerBinderPathSet()Ljava/util/Set;
    .locals 3

    .line 223
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    :try_start_0
    const-class v1, Lorg/slf4j/LoggerFactory;

    .line 225
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "org/slf4j/impl/StaticLoggerBinder.class"

    if-nez v1, :cond_0

    .line 228
    :try_start_1
    invoke-static {v2}, Ljava/lang/ClassLoader;->getSystemResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    .line 230
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v1

    .line 232
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 233
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/URL;

    .line 234
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :goto_1
    const-string v2, "Error getting resources from path"

    .line 237
    invoke-static {v2, v1}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-object v0
.end method

.method static findServiceProviders()Ljava/util/List;
    .locals 3

    const-class v0, Lorg/slf4j/LoggerFactory;

    .line 110
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 111
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getServiceLoader(Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v0

    .line 112
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 113
    invoke-virtual {v0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 114
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    invoke-static {v1, v0}, Lorg/slf4j/LoggerFactory;->safelyInstantiate(Ljava/util/List;Ljava/util/Iterator;)V

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static fixSubstituteLoggers()V
    .locals 4

    sget-object v0, Lorg/slf4j/LoggerFactory;->SUBST_PROVIDER:Lorg/slf4j/helpers/SubstituteServiceProvider;

    .line 250
    monitor-enter v0

    .line 251
    :try_start_0
    invoke-virtual {v0}, Lorg/slf4j/helpers/SubstituteServiceProvider;->getSubstituteLoggerFactory()Lorg/slf4j/helpers/SubstituteLoggerFactory;

    move-result-object v1

    invoke-virtual {v1}, Lorg/slf4j/helpers/SubstituteLoggerFactory;->postInitialization()V

    .line 252
    invoke-virtual {v0}, Lorg/slf4j/helpers/SubstituteServiceProvider;->getSubstituteLoggerFactory()Lorg/slf4j/helpers/SubstituteLoggerFactory;

    move-result-object v1

    invoke-virtual {v1}, Lorg/slf4j/helpers/SubstituteLoggerFactory;->getLoggers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/slf4j/helpers/SubstituteLogger;

    .line 253
    invoke-virtual {v2}, Lorg/slf4j/helpers/SubstituteLogger;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v3

    .line 254
    invoke-virtual {v2, v3}, Lorg/slf4j/helpers/SubstituteLogger;->setDelegate(Lorg/slf4j/Logger;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 256
    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getILoggerFactory()Lorg/slf4j/ILoggerFactory;
    .locals 1

    .line 441
    invoke-static {}, Lorg/slf4j/LoggerFactory;->getProvider()Lorg/slf4j/spi/SLF4JServiceProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/slf4j/spi/SLF4JServiceProvider;->getLoggerFactory()Lorg/slf4j/ILoggerFactory;

    move-result-object v0

    return-object v0
.end method

.method public static getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;
    .locals 4

    .line 416
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    sget-boolean v1, Lorg/slf4j/LoggerFactory;->DETECT_LOGGER_NAME_MISMATCH:Z

    if-eqz v1, :cond_0

    .line 418
    invoke-static {}, Lorg/slf4j/helpers/Util;->getCallingClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 419
    invoke-static {p0, v1}, Lorg/slf4j/LoggerFactory;->nonMatchingClasses(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 420
    invoke-interface {v0}, Lorg/slf4j/Logger;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p0, v2

    .line 421
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, p0, v2

    const-string v1, "Detected logger name mismatch. Given name: \"%s\"; computed name: \"%s\"."

    .line 420
    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    const-string p0, "See https://www.slf4j.org/codes.html#loggerNameMismatch for an explanation"

    .line 422
    invoke-static {p0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;
    .locals 1

    .line 390
    invoke-static {}, Lorg/slf4j/LoggerFactory;->getILoggerFactory()Lorg/slf4j/ILoggerFactory;

    move-result-object v0

    .line 391
    invoke-interface {v0, p0}, Lorg/slf4j/ILoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object p0

    return-object p0
.end method

.method static getProvider()Lorg/slf4j/spi/SLF4JServiceProvider;
    .locals 3

    sget v0, Lorg/slf4j/LoggerFactory;->INITIALIZATION_STATE:I

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const-class v0, Lorg/slf4j/LoggerFactory;

    .line 452
    monitor-enter v0

    :try_start_0
    sget v2, Lorg/slf4j/LoggerFactory;->INITIALIZATION_STATE:I

    if-nez v2, :cond_0

    sput v1, Lorg/slf4j/LoggerFactory;->INITIALIZATION_STATE:I

    .line 455
    invoke-static {}, Lorg/slf4j/LoggerFactory;->performInitialization()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 457
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget v0, Lorg/slf4j/LoggerFactory;->INITIALIZATION_STATE:I

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    sget-object v0, Lorg/slf4j/LoggerFactory;->NOP_FALLBACK_SERVICE_PROVIDER:Lorg/slf4j/helpers/NOP_FallbackServiceProvider;

    return-object v0

    .line 471
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unreachable code"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    sget-object v0, Lorg/slf4j/LoggerFactory;->PROVIDER:Lorg/slf4j/spi/SLF4JServiceProvider;

    return-object v0

    .line 465
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "org.slf4j.LoggerFactory in failed state. Original exception was thrown EARLIER. See also https://www.slf4j.org/codes.html#unsuccessfulInit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    sget-object v0, Lorg/slf4j/LoggerFactory;->SUBST_PROVIDER:Lorg/slf4j/helpers/SubstituteServiceProvider;

    return-object v0
.end method

.method private static getServiceLoader(Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;
    .locals 1

    .line 122
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-nez v0, :cond_0

    const-class v0, Lorg/slf4j/spi/SLF4JServiceProvider;

    .line 124
    invoke-static {v0, p0}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object p0

    goto :goto_0

    .line 126
    :cond_0
    new-instance v0, Lorg/slf4j/LoggerFactory$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/slf4j/LoggerFactory$$ExternalSyntheticLambda0;-><init>(Ljava/lang/ClassLoader;)V

    .line 127
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ServiceLoader;

    :goto_0
    return-object p0
.end method

.method private static isAmbiguousProviderList(Ljava/util/List;)Z
    .locals 1

    .line 356
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static synthetic lambda$getServiceLoader$0(Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;
    .locals 1

    const-class v0, Lorg/slf4j/spi/SLF4JServiceProvider;

    .line 126
    invoke-static {v0, p0}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object p0

    return-object p0
.end method

.method private static nonMatchingClasses(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 0

    .line 429
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static final performInitialization()V
    .locals 2

    .line 170
    invoke-static {}, Lorg/slf4j/LoggerFactory;->bind()V

    sget v0, Lorg/slf4j/LoggerFactory;->INITIALIZATION_STATE:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 172
    invoke-static {}, Lorg/slf4j/LoggerFactory;->versionSanityCheck()V

    :cond_0
    return-void
.end method

.method private static postBindCleanUp()V
    .locals 1

    .line 243
    invoke-static {}, Lorg/slf4j/LoggerFactory;->fixSubstituteLoggers()V

    .line 244
    invoke-static {}, Lorg/slf4j/LoggerFactory;->replayEvents()V

    sget-object v0, Lorg/slf4j/LoggerFactory;->SUBST_PROVIDER:Lorg/slf4j/helpers/SubstituteServiceProvider;

    .line 246
    invoke-virtual {v0}, Lorg/slf4j/helpers/SubstituteServiceProvider;->getSubstituteLoggerFactory()Lorg/slf4j/helpers/SubstituteLoggerFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/slf4j/helpers/SubstituteLoggerFactory;->clear()V

    return-void
.end method

.method private static replayEvents()V
    .locals 8

    sget-object v0, Lorg/slf4j/LoggerFactory;->SUBST_PROVIDER:Lorg/slf4j/helpers/SubstituteServiceProvider;

    .line 266
    invoke-virtual {v0}, Lorg/slf4j/helpers/SubstituteServiceProvider;->getSubstituteLoggerFactory()Lorg/slf4j/helpers/SubstituteLoggerFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/slf4j/helpers/SubstituteLoggerFactory;->getEventQueue()Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    .line 267
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v1

    .line 270
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0x80

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    .line 272
    :goto_0
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->drainTo(Ljava/util/Collection;I)I

    move-result v5

    if-nez v5, :cond_0

    return-void

    .line 275
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/slf4j/event/SubstituteLoggingEvent;

    .line 276
    invoke-static {v6}, Lorg/slf4j/LoggerFactory;->replaySingleEvent(Lorg/slf4j/event/SubstituteLoggingEvent;)V

    add-int/lit8 v7, v4, 0x1

    if-nez v4, :cond_1

    .line 278
    invoke-static {v6, v1}, Lorg/slf4j/LoggerFactory;->emitReplayOrSubstituionWarning(Lorg/slf4j/event/SubstituteLoggingEvent;I)V

    :cond_1
    move v4, v7

    goto :goto_1

    .line 280
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method private static replaySingleEvent(Lorg/slf4j/event/SubstituteLoggingEvent;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 298
    :cond_0
    invoke-virtual {p0}, Lorg/slf4j/event/SubstituteLoggingEvent;->getLogger()Lorg/slf4j/helpers/SubstituteLogger;

    move-result-object v0

    .line 299
    invoke-virtual {v0}, Lorg/slf4j/helpers/SubstituteLogger;->getName()Ljava/lang/String;

    move-result-object v1

    .line 300
    invoke-virtual {v0}, Lorg/slf4j/helpers/SubstituteLogger;->isDelegateNull()Z

    move-result v2

    if-nez v2, :cond_4

    .line 304
    invoke-virtual {v0}, Lorg/slf4j/helpers/SubstituteLogger;->isDelegateNOP()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 306
    :cond_1
    invoke-virtual {v0}, Lorg/slf4j/helpers/SubstituteLogger;->isDelegateEventAware()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 307
    invoke-virtual {p0}, Lorg/slf4j/event/SubstituteLoggingEvent;->getLevel()Lorg/slf4j/event/Level;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/slf4j/helpers/SubstituteLogger;->isEnabledForLevel(Lorg/slf4j/event/Level;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 308
    invoke-virtual {v0, p0}, Lorg/slf4j/helpers/SubstituteLogger;->log(Lorg/slf4j/event/LoggingEvent;)V

    goto :goto_0

    .line 311
    :cond_2
    invoke-static {v1}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void

    .line 301
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Delegate logger cannot be null at this state."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static reportActualBinding(Ljava/util/List;)V
    .locals 2

    .line 376
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/slf4j/LoggerFactory;->isAmbiguousProviderList(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Actual provider is of type ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static reportIgnoredStaticLoggerBinders(Ljava/util/Set;)V
    .locals 3

    .line 203
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Class path contains SLF4J bindings targeting slf4j-api versions 1.7.x or earlier."

    .line 206
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 208
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring binding found at ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p0, "See https://www.slf4j.org/codes.html#ignoredBindings for an explanation."

    .line 211
    invoke-static {p0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    return-void
.end method

.method private static reportMultipleBindingAmbiguity(Ljava/util/List;)V
    .locals 3

    .line 365
    invoke-static {p0}, Lorg/slf4j/LoggerFactory;->isAmbiguousProviderList(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Class path contains multiple SLF4J providers."

    .line 366
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 367
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/slf4j/spi/SLF4JServiceProvider;

    .line 368
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found provider ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "See https://www.slf4j.org/codes.html#multiple_bindings for an explanation."

    .line 370
    invoke-static {p0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private static safelyInstantiate(Ljava/util/List;Ljava/util/Iterator;)V
    .locals 1

    .line 134
    :try_start_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/slf4j/spi/SLF4JServiceProvider;

    .line 135
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/ServiceConfigurationError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 137
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "A SLF4J service provider failed to instantiate:\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static final versionSanityCheck()V
    .locals 6

    :try_start_0
    sget-object v0, Lorg/slf4j/LoggerFactory;->PROVIDER:Lorg/slf4j/spi/SLF4JServiceProvider;

    .line 331
    invoke-interface {v0}, Lorg/slf4j/spi/SLF4JServiceProvider;->getRequestedApiVersion()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/slf4j/LoggerFactory;->API_COMPATIBILITY_LIST:[Ljava/lang/String;

    .line 334
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v5, v1, v3

    .line 335
    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    if-nez v4, :cond_2

    .line 340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The requested version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " by your slf4j binding is not compatible with "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/slf4j/LoggerFactory;->API_COMPATIBILITY_LIST:[Ljava/lang/String;

    .line 341
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 340
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    const-string v0, "See https://www.slf4j.org/codes.html#version_mismatch for further details."

    .line 342
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    const-string v1, "Unexpected problem occured during version sanity check"

    .line 351
    invoke-static {v1, v0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    :catch_0
    :cond_2
    :goto_2
    return-void
.end method
