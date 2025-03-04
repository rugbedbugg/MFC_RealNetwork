.class public abstract Lch/qos/logback/core/encoder/EncoderBase;
.super Lch/qos/logback/core/spi/ContextAwareBase;

# interfaces
.implements Lch/qos/logback/core/encoder/Encoder;


# instance fields
.field protected started:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Lch/qos/logback/core/spi/ContextAwareBase;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract synthetic encode(Ljava/lang/Object;)[B
.end method

.method public abstract synthetic footerBytes()[B
.end method

.method public abstract synthetic headerBytes()[B
.end method

.method public isStarted()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lch/qos/logback/core/encoder/EncoderBase;->started:Z

    return v0
.end method

.method public start()V
    .locals 1

    .line 0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/qos/logback/core/encoder/EncoderBase;->started:Z

    return-void
.end method

.method public stop()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/qos/logback/core/encoder/EncoderBase;->started:Z

    return-void
.end method
