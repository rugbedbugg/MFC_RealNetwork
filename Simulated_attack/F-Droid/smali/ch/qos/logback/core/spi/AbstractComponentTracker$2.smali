.class Lch/qos/logback/core/spi/AbstractComponentTracker$2;
.super Ljava/lang/Object;

# interfaces
.implements Lch/qos/logback/core/spi/AbstractComponentTracker$RemovalPredicator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/qos/logback/core/spi/AbstractComponentTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/qos/logback/core/spi/AbstractComponentTracker;


# direct methods
.method constructor <init>(Lch/qos/logback/core/spi/AbstractComponentTracker;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lch/qos/logback/core/spi/AbstractComponentTracker$2;->this$0:Lch/qos/logback/core/spi/AbstractComponentTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSlatedForRemoval(Lch/qos/logback/core/spi/AbstractComponentTracker$Entry;J)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/spi/AbstractComponentTracker$Entry;",
            "J)Z"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lch/qos/logback/core/spi/AbstractComponentTracker$2;->this$0:Lch/qos/logback/core/spi/AbstractComponentTracker;

    invoke-static {v0, p1, p2, p3}, Lch/qos/logback/core/spi/AbstractComponentTracker;->access$000(Lch/qos/logback/core/spi/AbstractComponentTracker;Lch/qos/logback/core/spi/AbstractComponentTracker$Entry;J)Z

    move-result p1

    return p1
.end method
