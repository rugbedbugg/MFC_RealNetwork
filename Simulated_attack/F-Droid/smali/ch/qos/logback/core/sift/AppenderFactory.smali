.class public interface abstract Lch/qos/logback/core/sift/AppenderFactory;
.super Ljava/lang/Object;


# virtual methods
.method public abstract buildAppender(Lch/qos/logback/core/Context;Ljava/lang/String;)Lch/qos/logback/core/Appender;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/Context;",
            "Ljava/lang/String;",
            ")",
            "Lch/qos/logback/core/Appender;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/joran/spi/JoranException;
        }
    .end annotation
.end method
