.class public abstract synthetic Lorg/slf4j/Logger$-CC;
.super Ljava/lang/Object;
.source "Logger.java"


# direct methods
.method public static $default$atDebug(Lorg/slf4j/Logger;)Lorg/slf4j/spi/LoggingEventBuilder;
    .locals 1

    .line 450
    invoke-interface {p0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    sget-object v0, Lorg/slf4j/event/Level;->DEBUG:Lorg/slf4j/event/Level;

    invoke-interface {p0, v0}, Lorg/slf4j/Logger;->makeLoggingEventBuilder(Lorg/slf4j/event/Level;)Lorg/slf4j/spi/LoggingEventBuilder;

    move-result-object p0

    return-object p0

    .line 453
    :cond_0
    invoke-static {}, Lorg/slf4j/spi/NOPLoggingEventBuilder;->singleton()Lorg/slf4j/spi/LoggingEventBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static $default$atError(Lorg/slf4j/Logger;)Lorg/slf4j/spi/LoggingEventBuilder;
    .locals 1

    .line 874
    invoke-interface {p0}, Lorg/slf4j/Logger;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 875
    sget-object v0, Lorg/slf4j/event/Level;->ERROR:Lorg/slf4j/event/Level;

    invoke-interface {p0, v0}, Lorg/slf4j/Logger;->makeLoggingEventBuilder(Lorg/slf4j/event/Level;)Lorg/slf4j/spi/LoggingEventBuilder;

    move-result-object p0

    return-object p0

    .line 877
    :cond_0
    invoke-static {}, Lorg/slf4j/spi/NOPLoggingEventBuilder;->singleton()Lorg/slf4j/spi/LoggingEventBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static $default$atInfo(Lorg/slf4j/Logger;)Lorg/slf4j/spi/LoggingEventBuilder;
    .locals 1

    .line 591
    invoke-interface {p0}, Lorg/slf4j/Logger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    sget-object v0, Lorg/slf4j/event/Level;->INFO:Lorg/slf4j/event/Level;

    invoke-interface {p0, v0}, Lorg/slf4j/Logger;->makeLoggingEventBuilder(Lorg/slf4j/event/Level;)Lorg/slf4j/spi/LoggingEventBuilder;

    move-result-object p0

    return-object p0

    .line 594
    :cond_0
    invoke-static {}, Lorg/slf4j/spi/NOPLoggingEventBuilder;->singleton()Lorg/slf4j/spi/LoggingEventBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static $default$atLevel(Lorg/slf4j/Logger;Lorg/slf4j/event/Level;)Lorg/slf4j/spi/LoggingEventBuilder;
    .locals 1

    .line 130
    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->isEnabledForLevel(Lorg/slf4j/event/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->makeLoggingEventBuilder(Lorg/slf4j/event/Level;)Lorg/slf4j/spi/LoggingEventBuilder;

    move-result-object p0

    return-object p0

    .line 133
    :cond_0
    invoke-static {}, Lorg/slf4j/spi/NOPLoggingEventBuilder;->singleton()Lorg/slf4j/spi/LoggingEventBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static $default$atTrace(Lorg/slf4j/Logger;)Lorg/slf4j/spi/LoggingEventBuilder;
    .locals 1

    .line 253
    invoke-interface {p0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    sget-object v0, Lorg/slf4j/event/Level;->TRACE:Lorg/slf4j/event/Level;

    invoke-interface {p0, v0}, Lorg/slf4j/Logger;->makeLoggingEventBuilder(Lorg/slf4j/event/Level;)Lorg/slf4j/spi/LoggingEventBuilder;

    move-result-object p0

    return-object p0

    .line 256
    :cond_0
    invoke-static {}, Lorg/slf4j/spi/NOPLoggingEventBuilder;->singleton()Lorg/slf4j/spi/LoggingEventBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static $default$atWarn(Lorg/slf4j/Logger;)Lorg/slf4j/spi/LoggingEventBuilder;
    .locals 1

    .line 732
    invoke-interface {p0}, Lorg/slf4j/Logger;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 733
    sget-object v0, Lorg/slf4j/event/Level;->WARN:Lorg/slf4j/event/Level;

    invoke-interface {p0, v0}, Lorg/slf4j/Logger;->makeLoggingEventBuilder(Lorg/slf4j/event/Level;)Lorg/slf4j/spi/LoggingEventBuilder;

    move-result-object p0

    return-object p0

    .line 735
    :cond_0
    invoke-static {}, Lorg/slf4j/spi/NOPLoggingEventBuilder;->singleton()Lorg/slf4j/spi/LoggingEventBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static $default$isEnabledForLevel(Lorg/slf4j/Logger;Lorg/slf4j/event/Level;)Z
    .locals 2

    .line 146
    invoke-virtual {p1}, Lorg/slf4j/event/Level;->toInt()I

    move-result v0

    if-eqz v0, :cond_4

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    const/16 v1, 0x14

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_1

    const/16 v1, 0x28

    if-ne v0, v1, :cond_0

    .line 157
    invoke-interface {p0}, Lorg/slf4j/Logger;->isErrorEnabled()Z

    move-result p0

    return p0

    .line 159
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Level ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "] not recognized."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 155
    :cond_1
    invoke-interface {p0}, Lorg/slf4j/Logger;->isWarnEnabled()Z

    move-result p0

    return p0

    .line 153
    :cond_2
    invoke-interface {p0}, Lorg/slf4j/Logger;->isInfoEnabled()Z

    move-result p0

    return p0

    .line 151
    :cond_3
    invoke-interface {p0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result p0

    return p0

    .line 149
    :cond_4
    invoke-interface {p0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result p0

    return p0
.end method

.method public static $default$makeLoggingEventBuilder(Lorg/slf4j/Logger;Lorg/slf4j/event/Level;)Lorg/slf4j/spi/LoggingEventBuilder;
    .locals 1

    .line 115
    new-instance v0, Lorg/slf4j/spi/DefaultLoggingEventBuilder;

    invoke-direct {v0, p0, p1}, Lorg/slf4j/spi/DefaultLoggingEventBuilder;-><init>(Lorg/slf4j/Logger;Lorg/slf4j/event/Level;)V

    return-object v0
.end method
