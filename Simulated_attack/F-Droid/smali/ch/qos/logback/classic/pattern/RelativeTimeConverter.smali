.class public Lch/qos/logback/classic/pattern/RelativeTimeConverter;
.super Lch/qos/logback/classic/pattern/ClassicConverter;


# instance fields
.field lastTimestamp:J

.field timesmapCache:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 0
    invoke-direct {p0}, Lch/qos/logback/classic/pattern/ClassicConverter;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lch/qos/logback/classic/pattern/RelativeTimeConverter;->lastTimestamp:J

    const/4 v0, 0x0

    iput-object v0, p0, Lch/qos/logback/classic/pattern/RelativeTimeConverter;->timesmapCache:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public convert(Lch/qos/logback/classic/spi/ILoggingEvent;)Ljava/lang/String;
    .locals 4

    .line 0
    invoke-interface {p1}, Lch/qos/logback/classic/spi/ILoggingEvent;->getTimeStamp()J

    move-result-wide v0

    monitor-enter p0

    :try_start_0
    iget-wide v2, p0, Lch/qos/logback/classic/pattern/RelativeTimeConverter;->lastTimestamp:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iput-wide v0, p0, Lch/qos/logback/classic/pattern/RelativeTimeConverter;->lastTimestamp:J

    invoke-interface {p1}, Lch/qos/logback/classic/spi/ILoggingEvent;->getLoggerContextVO()Lch/qos/logback/classic/spi/LoggerContextVO;

    move-result-object p1

    invoke-virtual {p1}, Lch/qos/logback/classic/spi/LoggerContextVO;->getBirthTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lch/qos/logback/classic/pattern/RelativeTimeConverter;->timesmapCache:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lch/qos/logback/classic/pattern/RelativeTimeConverter;->timesmapCache:Ljava/lang/String;

    monitor-exit p0

    return-object p1

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 0
    check-cast p1, Lch/qos/logback/classic/spi/ILoggingEvent;

    invoke-virtual {p0, p1}, Lch/qos/logback/classic/pattern/RelativeTimeConverter;->convert(Lch/qos/logback/classic/spi/ILoggingEvent;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
