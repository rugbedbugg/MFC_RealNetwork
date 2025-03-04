.class public abstract Lch/qos/logback/core/LayoutBase;
.super Lch/qos/logback/core/spi/ContextAwareBase;

# interfaces
.implements Lch/qos/logback/core/Layout;


# instance fields
.field fileFooter:Ljava/lang/String;

.field fileHeader:Ljava/lang/String;

.field presentationFooter:Ljava/lang/String;

.field presentationHeader:Ljava/lang/String;

.field protected started:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Lch/qos/logback/core/spi/ContextAwareBase;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract synthetic doLayout(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 0
    const-string v0, "text/plain"

    return-object v0
.end method

.method public getContext()Lch/qos/logback/core/Context;
    .locals 1

    .line 0
    iget-object v0, p0, Lch/qos/logback/core/spi/ContextAwareBase;->context:Lch/qos/logback/core/Context;

    return-object v0
.end method

.method public getFileFooter()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lch/qos/logback/core/LayoutBase;->fileFooter:Ljava/lang/String;

    return-object v0
.end method

.method public getFileHeader()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lch/qos/logback/core/LayoutBase;->fileHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getPresentationFooter()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lch/qos/logback/core/LayoutBase;->presentationFooter:Ljava/lang/String;

    return-object v0
.end method

.method public getPresentationHeader()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lch/qos/logback/core/LayoutBase;->presentationHeader:Ljava/lang/String;

    return-object v0
.end method

.method public isStarted()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lch/qos/logback/core/LayoutBase;->started:Z

    return v0
.end method

.method public setContext(Lch/qos/logback/core/Context;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lch/qos/logback/core/spi/ContextAwareBase;->context:Lch/qos/logback/core/Context;

    return-void
.end method

.method public setFileFooter(Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lch/qos/logback/core/LayoutBase;->fileFooter:Ljava/lang/String;

    return-void
.end method

.method public setFileHeader(Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lch/qos/logback/core/LayoutBase;->fileHeader:Ljava/lang/String;

    return-void
.end method

.method public setPresentationFooter(Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lch/qos/logback/core/LayoutBase;->presentationFooter:Ljava/lang/String;

    return-void
.end method

.method public setPresentationHeader(Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lch/qos/logback/core/LayoutBase;->presentationHeader:Ljava/lang/String;

    return-void
.end method

.method public start()V
    .locals 1

    .line 0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/qos/logback/core/LayoutBase;->started:Z

    return-void
.end method

.method public stop()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/qos/logback/core/LayoutBase;->started:Z

    return-void
.end method
