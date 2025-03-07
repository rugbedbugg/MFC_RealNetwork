.class public Lch/qos/logback/core/sift/AppenderTracker;
.super Lch/qos/logback/core/spi/AbstractComponentTracker;


# instance fields
.field final appenderFactory:Lch/qos/logback/core/sift/AppenderFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lch/qos/logback/core/sift/AppenderFactory;"
        }
    .end annotation
.end field

.field final context:Lch/qos/logback/core/Context;

.field final contextAware:Lch/qos/logback/core/spi/ContextAwareImpl;

.field nopaWarningCount:I


# direct methods
.method public constructor <init>(Lch/qos/logback/core/Context;Lch/qos/logback/core/sift/AppenderFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/Context;",
            "Lch/qos/logback/core/sift/AppenderFactory;",
            ")V"
        }
    .end annotation

    .line 0
    invoke-direct {p0}, Lch/qos/logback/core/spi/AbstractComponentTracker;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lch/qos/logback/core/sift/AppenderTracker;->nopaWarningCount:I

    iput-object p1, p0, Lch/qos/logback/core/sift/AppenderTracker;->context:Lch/qos/logback/core/Context;

    iput-object p2, p0, Lch/qos/logback/core/sift/AppenderTracker;->appenderFactory:Lch/qos/logback/core/sift/AppenderFactory;

    new-instance p2, Lch/qos/logback/core/spi/ContextAwareImpl;

    invoke-direct {p2, p1, p0}, Lch/qos/logback/core/spi/ContextAwareImpl;-><init>(Lch/qos/logback/core/Context;Ljava/lang/Object;)V

    iput-object p2, p0, Lch/qos/logback/core/sift/AppenderTracker;->contextAware:Lch/qos/logback/core/spi/ContextAwareImpl;

    return-void
.end method

.method private buildNOPAppender(Ljava/lang/String;)Lch/qos/logback/core/helpers/NOPAppender;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lch/qos/logback/core/helpers/NOPAppender;"
        }
    .end annotation

    .line 0
    iget v0, p0, Lch/qos/logback/core/sift/AppenderTracker;->nopaWarningCount:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lch/qos/logback/core/sift/AppenderTracker;->nopaWarningCount:I

    iget-object v0, p0, Lch/qos/logback/core/sift/AppenderTracker;->contextAware:Lch/qos/logback/core/spi/ContextAwareImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Building NOPAppender for discriminating value ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lch/qos/logback/core/spi/ContextAwareImpl;->addError(Ljava/lang/String;)V

    :cond_0
    new-instance p1, Lch/qos/logback/core/helpers/NOPAppender;

    invoke-direct {p1}, Lch/qos/logback/core/helpers/NOPAppender;-><init>()V

    iget-object v0, p0, Lch/qos/logback/core/sift/AppenderTracker;->context:Lch/qos/logback/core/Context;

    invoke-virtual {p1, v0}, Lch/qos/logback/core/spi/ContextAwareBase;->setContext(Lch/qos/logback/core/Context;)V

    invoke-virtual {p1}, Lch/qos/logback/core/AppenderBase;->start()V

    return-object p1
.end method


# virtual methods
.method protected buildComponent(Ljava/lang/String;)Lch/qos/logback/core/Appender;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lch/qos/logback/core/Appender;"
        }
    .end annotation

    .line 0
    :try_start_0
    iget-object v0, p0, Lch/qos/logback/core/sift/AppenderTracker;->appenderFactory:Lch/qos/logback/core/sift/AppenderFactory;

    iget-object v1, p0, Lch/qos/logback/core/sift/AppenderTracker;->context:Lch/qos/logback/core/Context;

    invoke-interface {v0, v1, p1}, Lch/qos/logback/core/sift/AppenderFactory;->buildAppender(Lch/qos/logback/core/Context;Ljava/lang/String;)Lch/qos/logback/core/Appender;

    move-result-object v0
    :try_end_0
    .catch Lch/qos/logback/core/joran/spi/JoranException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lch/qos/logback/core/sift/AppenderTracker;->contextAware:Lch/qos/logback/core/spi/ContextAwareImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while building appender with discriminating value ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/qos/logback/core/spi/ContextAwareImpl;->addError(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lch/qos/logback/core/sift/AppenderTracker;->buildNOPAppender(Ljava/lang/String;)Lch/qos/logback/core/helpers/NOPAppender;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected bridge synthetic buildComponent(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lch/qos/logback/core/sift/AppenderTracker;->buildComponent(Ljava/lang/String;)Lch/qos/logback/core/Appender;

    move-result-object p1

    return-object p1
.end method

.method protected isComponentStale(Lch/qos/logback/core/Appender;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/Appender;",
            ")Z"
        }
    .end annotation

    .line 0
    invoke-interface {p1}, Lch/qos/logback/core/Appender;->isStarted()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method protected bridge synthetic isComponentStale(Ljava/lang/Object;)Z
    .locals 0

    .line 0
    check-cast p1, Lch/qos/logback/core/Appender;

    invoke-virtual {p0, p1}, Lch/qos/logback/core/sift/AppenderTracker;->isComponentStale(Lch/qos/logback/core/Appender;)Z

    move-result p1

    return p1
.end method

.method protected processPriorToRemoval(Lch/qos/logback/core/Appender;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/Appender;",
            ")V"
        }
    .end annotation

    .line 0
    invoke-interface {p1}, Lch/qos/logback/core/Appender;->stop()V

    return-void
.end method

.method protected bridge synthetic processPriorToRemoval(Ljava/lang/Object;)V
    .locals 0

    .line 0
    check-cast p1, Lch/qos/logback/core/Appender;

    invoke-virtual {p0, p1}, Lch/qos/logback/core/sift/AppenderTracker;->processPriorToRemoval(Lch/qos/logback/core/Appender;)V

    return-void
.end method
