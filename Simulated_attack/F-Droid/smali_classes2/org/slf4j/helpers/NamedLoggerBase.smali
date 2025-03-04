.class abstract Lorg/slf4j/helpers/NamedLoggerBase;
.super Ljava/lang/Object;
.source "NamedLoggerBase.java"

# interfaces
.implements Lorg/slf4j/Logger;
.implements Ljava/io/Serializable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic isEnabledForLevel(Lorg/slf4j/event/Level;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/slf4j/Logger$-CC;->$default$isEnabledForLevel(Lorg/slf4j/Logger;Lorg/slf4j/event/Level;)Z

    move-result p1

    return p1
.end method

.method public synthetic makeLoggingEventBuilder(Lorg/slf4j/event/Level;)Lorg/slf4j/spi/LoggingEventBuilder;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/slf4j/Logger$-CC;->$default$makeLoggingEventBuilder(Lorg/slf4j/Logger;Lorg/slf4j/event/Level;)Lorg/slf4j/spi/LoggingEventBuilder;

    move-result-object p1

    return-object p1
.end method
