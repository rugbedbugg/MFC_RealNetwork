.class public Lorg/slf4j/impl/LoggerServiceProvider;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/slf4j/spi/SLF4JServiceProvider;


# static fields
.field public static REQUESTED_API_VERSION:Ljava/lang/String; = "2.0.7"


# instance fields
.field private defaultLoggerContext:Lch/qos/logback/classic/LoggerContext;

.field private markerFactory:Lorg/slf4j/IMarkerFactory;

.field private mdcAdapter:Lorg/slf4j/spi/MDCAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private initializeLoggerContext()V
    .locals 3

    .line 0
    :try_start_0
    new-instance v0, Lch/qos/logback/classic/util/ContextInitializer;

    iget-object v1, p0, Lorg/slf4j/impl/LoggerServiceProvider;->defaultLoggerContext:Lch/qos/logback/classic/LoggerContext;

    invoke-direct {v0, v1}, Lch/qos/logback/classic/util/ContextInitializer;-><init>(Lch/qos/logback/classic/LoggerContext;)V

    invoke-virtual {v0}, Lch/qos/logback/classic/util/ContextInitializer;->autoConfig()V
    :try_end_0
    .catch Lch/qos/logback/core/joran/spi/JoranException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_1
    const-string v1, "Failed to auto configure default logger context"

    invoke-static {v1, v0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object v0, p0, Lorg/slf4j/impl/LoggerServiceProvider;->defaultLoggerContext:Lch/qos/logback/classic/LoggerContext;

    invoke-static {v0}, Lch/qos/logback/core/status/StatusUtil;->contextHasStatusListener(Lch/qos/logback/core/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/slf4j/impl/LoggerServiceProvider;->defaultLoggerContext:Lch/qos/logback/classic/LoggerContext;

    invoke-static {v0}, Lch/qos/logback/core/util/StatusPrinter;->printInCaseOfErrorsOrWarnings(Lch/qos/logback/core/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to instantiate ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lch/qos/logback/classic/LoggerContext;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_2
    return-void
.end method


# virtual methods
.method public getLoggerFactory()Lorg/slf4j/ILoggerFactory;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/slf4j/impl/LoggerServiceProvider;->defaultLoggerContext:Lch/qos/logback/classic/LoggerContext;

    return-object v0
.end method

.method public getMDCAdapter()Lorg/slf4j/spi/MDCAdapter;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/slf4j/impl/LoggerServiceProvider;->mdcAdapter:Lorg/slf4j/spi/MDCAdapter;

    return-object v0
.end method

.method public getMarkerFactory()Lorg/slf4j/IMarkerFactory;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/slf4j/impl/LoggerServiceProvider;->markerFactory:Lorg/slf4j/IMarkerFactory;

    return-object v0
.end method

.method public getRequestedApiVersion()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lorg/slf4j/impl/LoggerServiceProvider;->REQUESTED_API_VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public initialize()V
    .locals 2

    .line 0
    new-instance v0, Lch/qos/logback/classic/LoggerContext;

    invoke-direct {v0}, Lch/qos/logback/classic/LoggerContext;-><init>()V

    iput-object v0, p0, Lorg/slf4j/impl/LoggerServiceProvider;->defaultLoggerContext:Lch/qos/logback/classic/LoggerContext;

    const-string v1, "default"

    invoke-virtual {v0, v1}, Lch/qos/logback/classic/LoggerContext;->setName(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/slf4j/impl/LoggerServiceProvider;->initializeLoggerContext()V

    iget-object v0, p0, Lorg/slf4j/impl/LoggerServiceProvider;->defaultLoggerContext:Lch/qos/logback/classic/LoggerContext;

    invoke-virtual {v0}, Lch/qos/logback/classic/LoggerContext;->start()V

    new-instance v0, Lorg/slf4j/helpers/BasicMarkerFactory;

    invoke-direct {v0}, Lorg/slf4j/helpers/BasicMarkerFactory;-><init>()V

    iput-object v0, p0, Lorg/slf4j/impl/LoggerServiceProvider;->markerFactory:Lorg/slf4j/IMarkerFactory;

    new-instance v0, Lch/qos/logback/classic/util/LogbackMDCAdapter;

    invoke-direct {v0}, Lch/qos/logback/classic/util/LogbackMDCAdapter;-><init>()V

    iput-object v0, p0, Lorg/slf4j/impl/LoggerServiceProvider;->mdcAdapter:Lorg/slf4j/spi/MDCAdapter;

    return-void
.end method
