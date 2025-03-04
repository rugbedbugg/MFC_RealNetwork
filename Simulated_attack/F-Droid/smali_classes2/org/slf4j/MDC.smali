.class public abstract Lorg/slf4j/MDC;
.super Ljava/lang/Object;
.source "MDC.java"


# static fields
.field static mdcAdapter:Lorg/slf4j/spi/MDCAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 91
    invoke-static {}, Lorg/slf4j/LoggerFactory;->getProvider()Lorg/slf4j/spi/SLF4JServiceProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    invoke-interface {v0}, Lorg/slf4j/spi/SLF4JServiceProvider;->getMDCAdapter()Lorg/slf4j/spi/MDCAdapter;

    move-result-object v0

    sput-object v0, Lorg/slf4j/MDC;->mdcAdapter:Lorg/slf4j/spi/MDCAdapter;

    goto :goto_0

    :cond_0
    const-string v0, "Failed to find provider."

    .line 95
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    const-string v0, "Defaulting to no-operation MDCAdapter implementation."

    .line 96
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 97
    new-instance v0, Lorg/slf4j/helpers/NOPMDCAdapter;

    invoke-direct {v0}, Lorg/slf4j/helpers/NOPMDCAdapter;-><init>()V

    sput-object v0, Lorg/slf4j/MDC;->mdcAdapter:Lorg/slf4j/spi/MDCAdapter;

    :goto_0
    return-void
.end method

.method public static getMDCAdapter()Lorg/slf4j/spi/MDCAdapter;
    .locals 1

    .line 0
    sget-object v0, Lorg/slf4j/MDC;->mdcAdapter:Lorg/slf4j/spi/MDCAdapter;

    return-object v0
.end method
