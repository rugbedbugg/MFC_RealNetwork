.class public Lorg/slf4j/event/DefaultLoggingEvent;
.super Ljava/lang/Object;
.source "DefaultLoggingEvent.java"

# interfaces
.implements Lorg/slf4j/event/LoggingEvent;


# instance fields
.field arguments:Ljava/util/List;

.field level:Lorg/slf4j/event/Level;

.field logger:Lorg/slf4j/Logger;

.field markers:Ljava/util/List;

.field message:Ljava/lang/String;

.field throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lorg/slf4j/event/Level;Lorg/slf4j/Logger;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/slf4j/event/DefaultLoggingEvent;->logger:Lorg/slf4j/Logger;

    iput-object p1, p0, Lorg/slf4j/event/DefaultLoggingEvent;->level:Lorg/slf4j/event/Level;

    return-void
.end method


# virtual methods
.method public getArgumentArray()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/slf4j/event/DefaultLoggingEvent;->arguments:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 74
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getLevel()Lorg/slf4j/event/Level;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/slf4j/event/DefaultLoggingEvent;->level:Lorg/slf4j/event/Level;

    return-object v0
.end method

.method public getMarkers()Ljava/util/List;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/slf4j/event/DefaultLoggingEvent;->markers:Ljava/util/List;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/slf4j/event/DefaultLoggingEvent;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/slf4j/event/DefaultLoggingEvent;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method
