.class public Lch/qos/logback/classic/sift/SiftingAppender;
.super Lch/qos/logback/core/sift/SiftingAppenderBase;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Lch/qos/logback/core/sift/SiftingAppenderBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected eventMarksEndOfLife(Lch/qos/logback/classic/spi/ILoggingEvent;)Z
    .locals 3

    .line 0
    invoke-interface {p1}, Lch/qos/logback/classic/spi/ILoggingEvent;->getMarkers()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/slf4j/Marker;

    sget-object v2, Lch/qos/logback/classic/ClassicConstants;->FINALIZE_SESSION_MARKER:Lorg/slf4j/Marker;

    invoke-interface {v1, v2}, Lorg/slf4j/Marker;->contains(Lorg/slf4j/Marker;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method protected bridge synthetic eventMarksEndOfLife(Ljava/lang/Object;)Z
    .locals 0

    .line 0
    check-cast p1, Lch/qos/logback/classic/spi/ILoggingEvent;

    invoke-virtual {p0, p1}, Lch/qos/logback/classic/sift/SiftingAppender;->eventMarksEndOfLife(Lch/qos/logback/classic/spi/ILoggingEvent;)Z

    move-result p1

    return p1
.end method

.method protected getTimestamp(Lch/qos/logback/classic/spi/ILoggingEvent;)J
    .locals 2

    .line 0
    invoke-interface {p1}, Lch/qos/logback/classic/spi/ILoggingEvent;->getTimeStamp()J

    move-result-wide v0

    return-wide v0
.end method

.method protected bridge synthetic getTimestamp(Ljava/lang/Object;)J
    .locals 2

    .line 0
    check-cast p1, Lch/qos/logback/classic/spi/ILoggingEvent;

    invoke-virtual {p0, p1}, Lch/qos/logback/classic/sift/SiftingAppender;->getTimestamp(Lch/qos/logback/classic/spi/ILoggingEvent;)J

    move-result-wide v0

    return-wide v0
.end method

.method public setDiscriminator(Lch/qos/logback/core/sift/Discriminator;)V
    .locals 0
    .annotation runtime Lch/qos/logback/core/joran/spi/DefaultClass;
        value = Lch/qos/logback/classic/sift/MDCBasedDiscriminator;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/sift/Discriminator;",
            ")V"
        }
    .end annotation

    .line 0
    invoke-super {p0, p1}, Lch/qos/logback/core/sift/SiftingAppenderBase;->setDiscriminator(Lch/qos/logback/core/sift/Discriminator;)V

    return-void
.end method
