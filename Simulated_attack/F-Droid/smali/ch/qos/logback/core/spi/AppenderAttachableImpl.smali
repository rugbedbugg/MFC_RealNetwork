.class public Lch/qos/logback/core/spi/AppenderAttachableImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lch/qos/logback/core/spi/AppenderAttachable;


# static fields
.field static final START:J


# instance fields
.field private final appenderList:Lch/qos/logback/core/util/COWArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lch/qos/logback/core/util/COWArrayList;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lch/qos/logback/core/spi/AppenderAttachableImpl;->START:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lch/qos/logback/core/util/COWArrayList;

    const/4 v1, 0x0

    new-array v1, v1, [Lch/qos/logback/core/Appender;

    invoke-direct {v0, v1}, Lch/qos/logback/core/util/COWArrayList;-><init>([Ljava/lang/Object;)V

    iput-object v0, p0, Lch/qos/logback/core/spi/AppenderAttachableImpl;->appenderList:Lch/qos/logback/core/util/COWArrayList;

    return-void
.end method


# virtual methods
.method public addAppender(Lch/qos/logback/core/Appender;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/Appender;",
            ")V"
        }
    .end annotation

    .line 0
    if-eqz p1, :cond_0

    iget-object v0, p0, Lch/qos/logback/core/spi/AppenderAttachableImpl;->appenderList:Lch/qos/logback/core/util/COWArrayList;

    invoke-virtual {v0, p1}, Lch/qos/logback/core/util/COWArrayList;->addIfAbsent(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null argument disallowed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public appendLoopOnAppenders(Ljava/lang/Object;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lch/qos/logback/core/spi/AppenderAttachableImpl;->appenderList:Lch/qos/logback/core/util/COWArrayList;

    invoke-virtual {v0}, Lch/qos/logback/core/util/COWArrayList;->asTypedArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lch/qos/logback/core/Appender;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    invoke-interface {v4, p1}, Lch/qos/logback/core/Appender;->doAppend(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method public detachAndStopAllAppenders()V
    .locals 2

    .line 0
    iget-object v0, p0, Lch/qos/logback/core/spi/AppenderAttachableImpl;->appenderList:Lch/qos/logback/core/util/COWArrayList;

    invoke-virtual {v0}, Lch/qos/logback/core/util/COWArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/qos/logback/core/Appender;

    invoke-interface {v1}, Lch/qos/logback/core/Appender;->stop()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lch/qos/logback/core/spi/AppenderAttachableImpl;->appenderList:Lch/qos/logback/core/util/COWArrayList;

    invoke-virtual {v0}, Lch/qos/logback/core/util/COWArrayList;->clear()V

    return-void
.end method

.method public detachAppender(Lch/qos/logback/core/Appender;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/Appender;",
            ")Z"
        }
    .end annotation

    .line 0
    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lch/qos/logback/core/spi/AppenderAttachableImpl;->appenderList:Lch/qos/logback/core/util/COWArrayList;

    invoke-virtual {v0, p1}, Lch/qos/logback/core/util/COWArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public detachAppender(Ljava/lang/String;)Z
    .locals 4

    .line 0
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lch/qos/logback/core/spi/AppenderAttachableImpl;->appenderList:Lch/qos/logback/core/util/COWArrayList;

    invoke-virtual {v1}, Lch/qos/logback/core/util/COWArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lch/qos/logback/core/Appender;

    invoke-interface {v2}, Lch/qos/logback/core/Appender;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object p1, p0, Lch/qos/logback/core/spi/AppenderAttachableImpl;->appenderList:Lch/qos/logback/core/util/COWArrayList;

    invoke-virtual {p1, v2}, Lch/qos/logback/core/util/COWArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    :cond_2
    return v0
.end method

.method public getAppender(Ljava/lang/String;)Lch/qos/logback/core/Appender;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lch/qos/logback/core/Appender;"
        }
    .end annotation

    .line 0
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lch/qos/logback/core/spi/AppenderAttachableImpl;->appenderList:Lch/qos/logback/core/util/COWArrayList;

    invoke-virtual {v1}, Lch/qos/logback/core/util/COWArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lch/qos/logback/core/Appender;

    invoke-interface {v2}, Lch/qos/logback/core/Appender;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    return-object v0
.end method

.method public isAttached(Lch/qos/logback/core/Appender;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/Appender;",
            ")Z"
        }
    .end annotation

    .line 0
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lch/qos/logback/core/spi/AppenderAttachableImpl;->appenderList:Lch/qos/logback/core/util/COWArrayList;

    invoke-virtual {v1}, Lch/qos/logback/core/util/COWArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lch/qos/logback/core/Appender;

    if-ne v2, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method public iteratorForAppenders()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lch/qos/logback/core/Appender;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lch/qos/logback/core/spi/AppenderAttachableImpl;->appenderList:Lch/qos/logback/core/util/COWArrayList;

    invoke-virtual {v0}, Lch/qos/logback/core/util/COWArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
