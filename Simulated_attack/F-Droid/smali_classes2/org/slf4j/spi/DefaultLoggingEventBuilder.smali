.class public Lorg/slf4j/spi/DefaultLoggingEventBuilder;
.super Ljava/lang/Object;
.source "DefaultLoggingEventBuilder.java"

# interfaces
.implements Lorg/slf4j/spi/LoggingEventBuilder;


# instance fields
.field protected logger:Lorg/slf4j/Logger;

.field protected loggingEvent:Lorg/slf4j/event/DefaultLoggingEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lorg/slf4j/Logger;Lorg/slf4j/event/Level;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->logger:Lorg/slf4j/Logger;

    .line 51
    new-instance v0, Lorg/slf4j/event/DefaultLoggingEvent;

    invoke-direct {v0, p2, p1}, Lorg/slf4j/event/DefaultLoggingEvent;-><init>(Lorg/slf4j/event/Level;Lorg/slf4j/Logger;)V

    iput-object v0, p0, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->loggingEvent:Lorg/slf4j/event/DefaultLoggingEvent;

    return-void
.end method
