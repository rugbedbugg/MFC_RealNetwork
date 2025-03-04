.class public abstract Lorg/slf4j/MarkerFactory;
.super Ljava/lang/Object;
.source "MarkerFactory.java"


# static fields
.field static MARKER_FACTORY:Lorg/slf4j/IMarkerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    invoke-static {}, Lorg/slf4j/LoggerFactory;->getProvider()Lorg/slf4j/spi/SLF4JServiceProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    invoke-interface {v0}, Lorg/slf4j/spi/SLF4JServiceProvider;->getMarkerFactory()Lorg/slf4j/IMarkerFactory;

    move-result-object v0

    sput-object v0, Lorg/slf4j/MarkerFactory;->MARKER_FACTORY:Lorg/slf4j/IMarkerFactory;

    goto :goto_0

    :cond_0
    const-string v0, "Failed to find provider"

    .line 56
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    const-string v0, "Defaulting to BasicMarkerFactory."

    .line 57
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 58
    new-instance v0, Lorg/slf4j/helpers/BasicMarkerFactory;

    invoke-direct {v0}, Lorg/slf4j/helpers/BasicMarkerFactory;-><init>()V

    sput-object v0, Lorg/slf4j/MarkerFactory;->MARKER_FACTORY:Lorg/slf4j/IMarkerFactory;

    :goto_0
    return-void
.end method

.method public static getMarker(Ljava/lang/String;)Lorg/slf4j/Marker;
    .locals 1

    sget-object v0, Lorg/slf4j/MarkerFactory;->MARKER_FACTORY:Lorg/slf4j/IMarkerFactory;

    .line 71
    invoke-interface {v0, p0}, Lorg/slf4j/IMarkerFactory;->getMarker(Ljava/lang/String;)Lorg/slf4j/Marker;

    move-result-object p0

    return-object p0
.end method
