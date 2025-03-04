.class public abstract synthetic Lorg/acra/collector/Collector$-CC;
.super Ljava/lang/Object;
.source "Collector.kt"


# direct methods
.method public static bridge synthetic $default$enabled(Lorg/acra/collector/Collector;Lorg/acra/config/CoreConfiguration;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/acra/plugins/Plugin$-CC;->$default$enabled(Lorg/acra/plugins/Plugin;Lorg/acra/config/CoreConfiguration;)Z

    move-result p0

    return p0
.end method

.method public static $default$getOrder(Lorg/acra/collector/Collector;)Lorg/acra/collector/Collector$Order;
    .locals 0

    .line 45
    sget-object p0, Lorg/acra/collector/Collector$Order;->NORMAL:Lorg/acra/collector/Collector$Order;

    return-object p0
.end method
