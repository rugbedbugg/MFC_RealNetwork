.class public abstract Lch/qos/logback/core/joran/GenericConfigurator;
.super Lch/qos/logback/core/spi/ContextAwareBase;


# instance fields
.field protected interpreter:Lch/qos/logback/core/joran/spi/Interpreter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Lch/qos/logback/core/spi/ContextAwareBase;-><init>()V

    return-void
.end method

.method private final doConfigure(Lorg/xml/sax/InputSource;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/joran/spi/JoranException;
        }
    .end annotation

    .line 0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Lch/qos/logback/core/joran/event/SaxEventRecorder;

    iget-object v3, p0, Lch/qos/logback/core/spi/ContextAwareBase;->context:Lch/qos/logback/core/Context;

    invoke-direct {v2, v3}, Lch/qos/logback/core/joran/event/SaxEventRecorder;-><init>(Lch/qos/logback/core/Context;)V

    invoke-virtual {v2, p1}, Lch/qos/logback/core/joran/event/SaxEventRecorder;->recordEvents(Lorg/xml/sax/InputSource;)Ljava/util/List;

    invoke-virtual {v2}, Lch/qos/logback/core/joran/event/SaxEventRecorder;->getSaxEventList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lch/qos/logback/core/joran/GenericConfigurator;->doConfigure(Ljava/util/List;)V

    new-instance p1, Lch/qos/logback/core/status/StatusUtil;

    iget-object v3, p0, Lch/qos/logback/core/spi/ContextAwareBase;->context:Lch/qos/logback/core/Context;

    invoke-direct {p1, v3}, Lch/qos/logback/core/status/StatusUtil;-><init>(Lch/qos/logback/core/Context;)V

    invoke-virtual {p1, v0, v1}, Lch/qos/logback/core/status/StatusUtil;->noXMLParsingErrorsOccurred(J)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Registering current configuration as safe fallback point"

    invoke-virtual {p0, p1}, Lch/qos/logback/core/spi/ContextAwareBase;->addInfo(Ljava/lang/String;)V

    invoke-virtual {v2}, Lch/qos/logback/core/joran/event/SaxEventRecorder;->getSaxEventList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lch/qos/logback/core/joran/GenericConfigurator;->registerSafeConfiguration(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public static informContextOfURLUsedForConfiguration(Lch/qos/logback/core/Context;Ljava/net/URL;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lch/qos/logback/core/joran/util/ConfigurationWatchListUtil;->setMainWatchURL(Lch/qos/logback/core/Context;Ljava/net/URL;)V

    return-void
.end method


# virtual methods
.method protected addDefaultNestedComponentRegistryRules(Lch/qos/logback/core/joran/spi/DefaultNestedComponentRegistry;)V
    .locals 0

    .line 0
    return-void
.end method

.method protected abstract addImplicitRules(Lch/qos/logback/core/joran/spi/Interpreter;)V
.end method

.method protected abstract addInstanceRules(Lch/qos/logback/core/joran/spi/RuleStore;)V
.end method

.method protected buildInterpreter()V
    .locals 4

    .line 0
    new-instance v0, Lch/qos/logback/core/joran/spi/SimpleRuleStore;

    iget-object v1, p0, Lch/qos/logback/core/spi/ContextAwareBase;->context:Lch/qos/logback/core/Context;

    invoke-direct {v0, v1}, Lch/qos/logback/core/joran/spi/SimpleRuleStore;-><init>(Lch/qos/logback/core/Context;)V

    invoke-virtual {p0, v0}, Lch/qos/logback/core/joran/GenericConfigurator;->addInstanceRules(Lch/qos/logback/core/joran/spi/RuleStore;)V

    new-instance v1, Lch/qos/logback/core/joran/spi/Interpreter;

    iget-object v2, p0, Lch/qos/logback/core/spi/ContextAwareBase;->context:Lch/qos/logback/core/Context;

    invoke-virtual {p0}, Lch/qos/logback/core/joran/GenericConfigurator;->initialElementPath()Lch/qos/logback/core/joran/spi/ElementPath;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lch/qos/logback/core/joran/spi/Interpreter;-><init>(Lch/qos/logback/core/Context;Lch/qos/logback/core/joran/spi/RuleStore;Lch/qos/logback/core/joran/spi/ElementPath;)V

    iput-object v1, p0, Lch/qos/logback/core/joran/GenericConfigurator;->interpreter:Lch/qos/logback/core/joran/spi/Interpreter;

    invoke-virtual {v1}, Lch/qos/logback/core/joran/spi/Interpreter;->getInterpretationContext()Lch/qos/logback/core/joran/spi/InterpretationContext;

    move-result-object v0

    iget-object v1, p0, Lch/qos/logback/core/spi/ContextAwareBase;->context:Lch/qos/logback/core/Context;

    invoke-virtual {v0, v1}, Lch/qos/logback/core/spi/ContextAwareBase;->setContext(Lch/qos/logback/core/Context;)V

    iget-object v1, p0, Lch/qos/logback/core/joran/GenericConfigurator;->interpreter:Lch/qos/logback/core/joran/spi/Interpreter;

    invoke-virtual {p0, v1}, Lch/qos/logback/core/joran/GenericConfigurator;->addImplicitRules(Lch/qos/logback/core/joran/spi/Interpreter;)V

    invoke-virtual {v0}, Lch/qos/logback/core/joran/spi/InterpretationContext;->getDefaultNestedComponentRegistry()Lch/qos/logback/core/joran/spi/DefaultNestedComponentRegistry;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/core/joran/GenericConfigurator;->addDefaultNestedComponentRegistryRules(Lch/qos/logback/core/joran/spi/DefaultNestedComponentRegistry;)V

    return-void
.end method

.method public final doConfigure(Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/joran/spi/JoranException;
        }
    .end annotation

    .line 0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {p0}, Lch/qos/logback/core/spi/ContextAwareBase;->getContext()Lch/qos/logback/core/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lch/qos/logback/core/joran/GenericConfigurator;->informContextOfURLUsedForConfiguration(Lch/qos/logback/core/Context;Ljava/net/URL;)V

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lch/qos/logback/core/joran/GenericConfigurator;->doConfigure(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2}, Lch/qos/logback/core/util/CloseUtil;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    move-object v0, v2

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_0
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not open ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lch/qos/logback/core/spi/ContextAwareBase;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Lch/qos/logback/core/joran/spi/JoranException;

    invoke-direct {v1, p1, v0}, Lch/qos/logback/core/joran/spi/JoranException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    invoke-static {v0}, Lch/qos/logback/core/util/CloseUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw p1
.end method

.method public final doConfigure(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/joran/spi/JoranException;
        }
    .end annotation

    .line 0
    const-string v0, "Could not close the stream"

    :try_start_0
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v1}, Lch/qos/logback/core/joran/GenericConfigurator;->doConfigure(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, v0, p1}, Lch/qos/logback/core/spi/ContextAwareBase;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Lch/qos/logback/core/joran/spi/JoranException;

    invoke-direct {v1, v0, p1}, Lch/qos/logback/core/joran/spi/JoranException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catchall_0
    move-exception v1

    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    throw v1

    :catch_1
    move-exception p1

    invoke-virtual {p0, v0, p1}, Lch/qos/logback/core/spi/ContextAwareBase;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Lch/qos/logback/core/joran/spi/JoranException;

    invoke-direct {v1, v0, p1}, Lch/qos/logback/core/joran/spi/JoranException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final doConfigure(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/joran/spi/JoranException;
        }
    .end annotation

    .line 0
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, p2}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lch/qos/logback/core/joran/GenericConfigurator;->doConfigure(Lorg/xml/sax/InputSource;)V

    return-void
.end method

.method public final doConfigure(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/joran/spi/JoranException;
        }
    .end annotation

    .line 0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lch/qos/logback/core/joran/GenericConfigurator;->doConfigure(Ljava/io/File;)V

    return-void
.end method

.method public final doConfigure(Ljava/net/URL;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/joran/spi/JoranException;
        }
    .end annotation

    .line 0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lch/qos/logback/core/spi/ContextAwareBase;->getContext()Lch/qos/logback/core/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lch/qos/logback/core/joran/GenericConfigurator;->informContextOfURLUsedForConfiguration(Lch/qos/logback/core/Context;Ljava/net/URL;)V

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setUseCaches(Z)V

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lch/qos/logback/core/joran/GenericConfigurator;->doConfigure(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lch/qos/logback/core/util/CloseUtil;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not open URL ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lch/qos/logback/core/spi/ContextAwareBase;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v2, Lch/qos/logback/core/joran/spi/JoranException;

    invoke-direct {v2, p1, v1}, Lch/qos/logback/core/joran/spi/JoranException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v0}, Lch/qos/logback/core/util/CloseUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw p1
.end method

.method public doConfigure(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lch/qos/logback/core/joran/event/SaxEvent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/joran/spi/JoranException;
        }
    .end annotation

    .line 0
    invoke-virtual {p0}, Lch/qos/logback/core/joran/GenericConfigurator;->buildInterpreter()V

    iget-object v0, p0, Lch/qos/logback/core/spi/ContextAwareBase;->context:Lch/qos/logback/core/Context;

    invoke-interface {v0}, Lch/qos/logback/core/Context;->getConfigurationLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lch/qos/logback/core/joran/GenericConfigurator;->interpreter:Lch/qos/logback/core/joran/spi/Interpreter;

    invoke-virtual {v1}, Lch/qos/logback/core/joran/spi/Interpreter;->getEventPlayer()Lch/qos/logback/core/joran/spi/EventPlayer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lch/qos/logback/core/joran/spi/EventPlayer;->play(Ljava/util/List;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected initialElementPath()Lch/qos/logback/core/joran/spi/ElementPath;
    .locals 1

    .line 0
    new-instance v0, Lch/qos/logback/core/joran/spi/ElementPath;

    invoke-direct {v0}, Lch/qos/logback/core/joran/spi/ElementPath;-><init>()V

    return-object v0
.end method

.method public recallSafeConfiguration()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lch/qos/logback/core/joran/event/SaxEvent;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lch/qos/logback/core/spi/ContextAwareBase;->context:Lch/qos/logback/core/Context;

    const-string v1, "SAFE_JORAN_CONFIGURATION"

    invoke-interface {v0, v1}, Lch/qos/logback/core/Context;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public registerSafeConfiguration(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lch/qos/logback/core/joran/event/SaxEvent;",
            ">;)V"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lch/qos/logback/core/spi/ContextAwareBase;->context:Lch/qos/logback/core/Context;

    const-string v1, "SAFE_JORAN_CONFIGURATION"

    invoke-interface {v0, v1, p1}, Lch/qos/logback/core/Context;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
