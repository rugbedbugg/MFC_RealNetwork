.class public Lorg/slf4j/spi/NOPLoggingEventBuilder;
.super Ljava/lang/Object;
.source "NOPLoggingEventBuilder.java"

# interfaces
.implements Lorg/slf4j/spi/LoggingEventBuilder;


# static fields
.field static final SINGLETON:Lorg/slf4j/spi/NOPLoggingEventBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lorg/slf4j/spi/NOPLoggingEventBuilder;

    invoke-direct {v0}, Lorg/slf4j/spi/NOPLoggingEventBuilder;-><init>()V

    sput-object v0, Lorg/slf4j/spi/NOPLoggingEventBuilder;->SINGLETON:Lorg/slf4j/spi/NOPLoggingEventBuilder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static singleton()Lorg/slf4j/spi/LoggingEventBuilder;
    .locals 1

    .line 0
    sget-object v0, Lorg/slf4j/spi/NOPLoggingEventBuilder;->SINGLETON:Lorg/slf4j/spi/NOPLoggingEventBuilder;

    return-object v0
.end method
