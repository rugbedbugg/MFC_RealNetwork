.class public interface abstract Lch/qos/logback/core/sift/Discriminator;
.super Ljava/lang/Object;

# interfaces
.implements Lch/qos/logback/core/spi/LifeCycle;


# virtual methods
.method public abstract getDiscriminatingValue(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract getKey()Ljava/lang/String;
.end method

.method public abstract synthetic isStarted()Z
.end method

.method public abstract synthetic start()V
.end method

.method public abstract synthetic stop()V
.end method
