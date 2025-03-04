.class public Lorg/slf4j/event/EventRecordingLogger;
.super Lorg/slf4j/helpers/LegacyAbstractLogger;
.source "EventRecordingLogger.java"


# instance fields
.field eventQueue:Ljava/util/Queue;

.field logger:Lorg/slf4j/helpers/SubstituteLogger;

.field name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/slf4j/helpers/SubstituteLogger;Ljava/util/Queue;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lorg/slf4j/helpers/LegacyAbstractLogger;-><init>()V

    iput-object p1, p0, Lorg/slf4j/event/EventRecordingLogger;->logger:Lorg/slf4j/helpers/SubstituteLogger;

    .line 32
    invoke-virtual {p1}, Lorg/slf4j/helpers/SubstituteLogger;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/slf4j/event/EventRecordingLogger;->name:Ljava/lang/String;

    iput-object p2, p0, Lorg/slf4j/event/EventRecordingLogger;->eventQueue:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/slf4j/event/EventRecordingLogger;->name:Ljava/lang/String;

    return-object v0
.end method

.method protected handleNormalizedLoggingCall(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3

    .line 62
    new-instance v0, Lorg/slf4j/event/SubstituteLoggingEvent;

    invoke-direct {v0}, Lorg/slf4j/event/SubstituteLoggingEvent;-><init>()V

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/slf4j/event/SubstituteLoggingEvent;->setTimeStamp(J)V

    .line 64
    invoke-virtual {v0, p1}, Lorg/slf4j/event/SubstituteLoggingEvent;->setLevel(Lorg/slf4j/event/Level;)V

    iget-object p1, p0, Lorg/slf4j/event/EventRecordingLogger;->logger:Lorg/slf4j/helpers/SubstituteLogger;

    .line 65
    invoke-virtual {v0, p1}, Lorg/slf4j/event/SubstituteLoggingEvent;->setLogger(Lorg/slf4j/helpers/SubstituteLogger;)V

    iget-object p1, p0, Lorg/slf4j/event/EventRecordingLogger;->name:Ljava/lang/String;

    .line 66
    invoke-virtual {v0, p1}, Lorg/slf4j/event/SubstituteLoggingEvent;->setLoggerName(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 68
    invoke-virtual {v0, p2}, Lorg/slf4j/event/SubstituteLoggingEvent;->addMarker(Lorg/slf4j/Marker;)V

    .line 70
    :cond_0
    invoke-virtual {v0, p3}, Lorg/slf4j/event/SubstituteLoggingEvent;->setMessage(Ljava/lang/String;)V

    .line 71
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/slf4j/event/SubstituteLoggingEvent;->setThreadName(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0, p4}, Lorg/slf4j/event/SubstituteLoggingEvent;->setArgumentArray([Ljava/lang/Object;)V

    .line 74
    invoke-virtual {v0, p5}, Lorg/slf4j/event/SubstituteLoggingEvent;->setThrowable(Ljava/lang/Throwable;)V

    iget-object p1, p0, Lorg/slf4j/event/EventRecordingLogger;->eventQueue:Ljava/util/Queue;

    .line 76
    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public isDebugEnabled()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public isErrorEnabled()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public isInfoEnabled()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public isTraceEnabled()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public isWarnEnabled()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method
