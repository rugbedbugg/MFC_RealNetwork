.class public final Lmu/internal/LocationIgnorantKLogger;
.super Ljava/lang/Object;
.source "LocationIgnorantKLogger.kt"

# interfaces
.implements Lmu/KLogger;
.implements Lorg/slf4j/Logger;


# instance fields
.field private final underlyingLogger:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>(Lorg/slf4j/Logger;)V
    .locals 1

    const-string v0, "underlyingLogger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmu/internal/LocationIgnorantKLogger;->underlyingLogger:Lorg/slf4j/Logger;

    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lmu/internal/LocationIgnorantKLogger;->underlyingLogger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lmu/internal/LocationIgnorantKLogger;->underlyingLogger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lmu/internal/LocationIgnorantKLogger;->underlyingLogger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2, p3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lmu/internal/LocationIgnorantKLogger;->underlyingLogger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lmu/internal/LocationIgnorantKLogger;->underlyingLogger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public debug(Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Lmu/internal/LocationIgnorantKLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    sget-object v0, Lmu/internal/ErrorMessageProducer;->INSTANCE:Lmu/internal/ErrorMessageProducer;

    invoke-virtual {v0, p1}, Lmu/internal/ErrorMessageProducer;->getErrorLog(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    .line 29
    :goto_0
    invoke-virtual {p0, p1}, Lmu/internal/LocationIgnorantKLogger;->debug(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lmu/internal/LocationIgnorantKLogger;->underlyingLogger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lmu/internal/LocationIgnorantKLogger;->underlyingLogger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public error(Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lmu/internal/LocationIgnorantKLogger;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    :try_start_0
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 8
    sget-object v0, Lmu/internal/ErrorMessageProducer;->INSTANCE:Lmu/internal/ErrorMessageProducer;

    invoke-virtual {v0, p2}, Lmu/internal/ErrorMessageProducer;->getErrorLog(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p2

    .line 85
    :goto_0
    invoke-virtual {p0, p2, p1}, Lmu/internal/LocationIgnorantKLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public error(Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lmu/internal/LocationIgnorantKLogger;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    sget-object v0, Lmu/internal/ErrorMessageProducer;->INSTANCE:Lmu/internal/ErrorMessageProducer;

    invoke-virtual {v0, p1}, Lmu/internal/ErrorMessageProducer;->getErrorLog(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    .line 50
    :goto_0
    invoke-virtual {p0, p1}, Lmu/internal/LocationIgnorantKLogger;->error(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lmu/internal/LocationIgnorantKLogger;->underlyingLogger:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public info(Ljava/lang/String;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lmu/internal/LocationIgnorantKLogger;->underlyingLogger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lmu/internal/LocationIgnorantKLogger;->underlyingLogger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public info(Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0}, Lmu/internal/LocationIgnorantKLogger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    sget-object v0, Lmu/internal/ErrorMessageProducer;->INSTANCE:Lmu/internal/ErrorMessageProducer;

    invoke-virtual {v0, p1}, Lmu/internal/ErrorMessageProducer;->getErrorLog(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    .line 36
    :goto_0
    invoke-virtual {p0, p1}, Lmu/internal/LocationIgnorantKLogger;->info(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public isDebugEnabled()Z
    .locals 1

    .line 0
    iget-object v0, p0, Lmu/internal/LocationIgnorantKLogger;->underlyingLogger:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    return v0
.end method

.method public synthetic isEnabledForLevel(Lorg/slf4j/event/Level;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/slf4j/Logger$-CC;->$default$isEnabledForLevel(Lorg/slf4j/Logger;Lorg/slf4j/event/Level;)Z

    move-result p1

    return p1
.end method

.method public isErrorEnabled()Z
    .locals 1

    .line 0
    iget-object v0, p0, Lmu/internal/LocationIgnorantKLogger;->underlyingLogger:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isErrorEnabled()Z

    move-result v0

    return v0
.end method

.method public isInfoEnabled()Z
    .locals 1

    .line 0
    iget-object v0, p0, Lmu/internal/LocationIgnorantKLogger;->underlyingLogger:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isInfoEnabled()Z

    move-result v0

    return v0
.end method

.method public isTraceEnabled()Z
    .locals 1

    .line 0
    iget-object v0, p0, Lmu/internal/LocationIgnorantKLogger;->underlyingLogger:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    return v0
.end method

.method public isWarnEnabled()Z
    .locals 1

    .line 0
    iget-object v0, p0, Lmu/internal/LocationIgnorantKLogger;->underlyingLogger:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isWarnEnabled()Z

    move-result v0

    return v0
.end method

.method public synthetic makeLoggingEventBuilder(Lorg/slf4j/event/Level;)Lorg/slf4j/spi/LoggingEventBuilder;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/slf4j/Logger$-CC;->$default$makeLoggingEventBuilder(Lorg/slf4j/Logger;Lorg/slf4j/event/Level;)Lorg/slf4j/spi/LoggingEventBuilder;

    move-result-object p1

    return-object p1
.end method

.method public trace(Ljava/lang/String;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lmu/internal/LocationIgnorantKLogger;->underlyingLogger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lmu/internal/LocationIgnorantKLogger;->underlyingLogger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lmu/internal/LocationIgnorantKLogger;->underlyingLogger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2, p3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public varargs trace(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lmu/internal/LocationIgnorantKLogger;->underlyingLogger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Ljava/lang/String;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lmu/internal/LocationIgnorantKLogger;->underlyingLogger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lmu/internal/LocationIgnorantKLogger;->underlyingLogger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lmu/internal/LocationIgnorantKLogger;->underlyingLogger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2, p3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lmu/internal/LocationIgnorantKLogger;->underlyingLogger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lmu/internal/LocationIgnorantKLogger;->underlyingLogger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lmu/internal/LocationIgnorantKLogger;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    :try_start_0
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 8
    sget-object v0, Lmu/internal/ErrorMessageProducer;->INSTANCE:Lmu/internal/ErrorMessageProducer;

    invoke-virtual {v0, p2}, Lmu/internal/ErrorMessageProducer;->getErrorLog(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p2

    .line 78
    :goto_0
    invoke-virtual {p0, p2, p1}, Lmu/internal/LocationIgnorantKLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public warn(Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Lmu/internal/LocationIgnorantKLogger;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    sget-object v0, Lmu/internal/ErrorMessageProducer;->INSTANCE:Lmu/internal/ErrorMessageProducer;

    invoke-virtual {v0, p1}, Lmu/internal/ErrorMessageProducer;->getErrorLog(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    .line 43
    :goto_0
    invoke-virtual {p0, p1}, Lmu/internal/LocationIgnorantKLogger;->warn(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
