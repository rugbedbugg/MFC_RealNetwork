.class public interface abstract Lch/qos/logback/core/encoder/Encoder;
.super Ljava/lang/Object;

# interfaces
.implements Lch/qos/logback/core/spi/ContextAware;
.implements Lch/qos/logback/core/spi/LifeCycle;


# virtual methods
.method public abstract synthetic addError(Ljava/lang/String;)V
.end method

.method public abstract synthetic addError(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract synthetic addInfo(Ljava/lang/String;)V
.end method

.method public abstract synthetic addInfo(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract synthetic addStatus(Lch/qos/logback/core/status/Status;)V
.end method

.method public abstract synthetic addWarn(Ljava/lang/String;)V
.end method

.method public abstract synthetic addWarn(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract encode(Ljava/lang/Object;)[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")[B"
        }
    .end annotation
.end method

.method public abstract footerBytes()[B
.end method

.method public abstract synthetic getContext()Lch/qos/logback/core/Context;
.end method

.method public abstract headerBytes()[B
.end method

.method public abstract synthetic isStarted()Z
.end method

.method public abstract synthetic setContext(Lch/qos/logback/core/Context;)V
.end method

.method public abstract synthetic start()V
.end method

.method public abstract synthetic stop()V
.end method
