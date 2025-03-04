.class public Lch/qos/logback/classic/pattern/EnsureExceptionHandling;
.super Ljava/lang/Object;

# interfaces
.implements Lch/qos/logback/core/pattern/PostCompileProcessor;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public chainHandlesThrowable(Lch/qos/logback/core/pattern/Converter;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/pattern/Converter;",
            ")Z"
        }
    .end annotation

    .line 0
    :goto_0
    if-eqz p1, :cond_1

    instance-of v0, p1, Lch/qos/logback/classic/pattern/ThrowableHandlingConverter;

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p1}, Lch/qos/logback/core/pattern/Converter;->getNext()Lch/qos/logback/core/pattern/Converter;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public process(Lch/qos/logback/core/Context;Lch/qos/logback/core/pattern/Converter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/Context;",
            "Lch/qos/logback/core/pattern/Converter;",
            ")V"
        }
    .end annotation

    .line 0
    if-eqz p2, :cond_2

    invoke-virtual {p0, p2}, Lch/qos/logback/classic/pattern/EnsureExceptionHandling;->chainHandlesThrowable(Lch/qos/logback/core/pattern/Converter;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Lch/qos/logback/core/pattern/ConverterUtil;->findTail(Lch/qos/logback/core/pattern/Converter;)Lch/qos/logback/core/pattern/Converter;

    move-result-object p2

    check-cast p1, Lch/qos/logback/classic/LoggerContext;

    invoke-virtual {p1}, Lch/qos/logback/classic/LoggerContext;->isPackagingDataEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lch/qos/logback/classic/pattern/ExtendedThrowableProxyConverter;

    invoke-direct {p1}, Lch/qos/logback/classic/pattern/ExtendedThrowableProxyConverter;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p1, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;

    invoke-direct {p1}, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;-><init>()V

    :goto_0
    invoke-virtual {p2, p1}, Lch/qos/logback/core/pattern/Converter;->setNext(Lch/qos/logback/core/pattern/Converter;)V

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "cannot process empty chain"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
