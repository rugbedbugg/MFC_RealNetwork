.class public Lch/qos/logback/core/util/CachingDateFormatter;
.super Ljava/lang/Object;


# instance fields
.field cachedStr:Ljava/lang/String;

.field lastTimestamp:J

.field final sdf:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p0, p1, v0}, Lch/qos/logback/core/util/CachingDateFormatter;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lch/qos/logback/core/util/CachingDateFormatter;->lastTimestamp:J

    const/4 v0, 0x0

    iput-object v0, p0, Lch/qos/logback/core/util/CachingDateFormatter;->cachedStr:Ljava/lang/String;

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lch/qos/logback/core/util/CachingDateFormatter;->sdf:Ljava/text/SimpleDateFormat;

    return-void
.end method


# virtual methods
.method public final format(J)Ljava/lang/String;
    .locals 2

    .line 0
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lch/qos/logback/core/util/CachingDateFormatter;->lastTimestamp:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    iput-wide p1, p0, Lch/qos/logback/core/util/CachingDateFormatter;->lastTimestamp:J

    iget-object v0, p0, Lch/qos/logback/core/util/CachingDateFormatter;->sdf:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lch/qos/logback/core/util/CachingDateFormatter;->cachedStr:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lch/qos/logback/core/util/CachingDateFormatter;->cachedStr:Ljava/lang/String;

    monitor-exit p0

    return-object p1

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lch/qos/logback/core/util/CachingDateFormatter;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method
