.class public Lch/qos/logback/classic/pattern/ThrowableProxyConverter;
.super Lch/qos/logback/classic/pattern/ThrowableHandlingConverter;


# static fields
.field protected static final BUILDER_CAPACITY:I = 0x800


# instance fields
.field errorCount:I

.field evaluatorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lch/qos/logback/core/boolex/EventEvaluator;",
            ">;"
        }
    .end annotation
.end field

.field ignoredStackTraceLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field lengthOption:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 0
    invoke-direct {p0}, Lch/qos/logback/classic/pattern/ThrowableHandlingConverter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->evaluatorList:Ljava/util/List;

    iput-object v0, p0, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->ignoredStackTraceLines:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->errorCount:I

    return-void
.end method

.method private addEvaluator(Lch/qos/logback/core/boolex/EventEvaluator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/boolex/EventEvaluator;",
            ")V"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->evaluatorList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->evaluatorList:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->evaluatorList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addIgnoreStackTraceLine(Ljava/lang/String;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->ignoredStackTraceLines:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->ignoredStackTraceLines:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->ignoredStackTraceLines:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private isIgnoredStackTraceLine(Ljava/lang/String;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->ignoredStackTraceLines:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private printIgnoredCount(Ljava/lang/StringBuilder;I)V
    .locals 1

    .line 0
    const-string v0, " ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " skipped]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private printStackLine(Ljava/lang/StringBuilder;ILch/qos/logback/classic/spi/StackTraceElementProxy;)V
    .locals 0

    .line 0
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p3}, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->extraData(Ljava/lang/StringBuilder;Lch/qos/logback/classic/spi/StackTraceElementProxy;)V

    if-lez p2, :cond_0

    invoke-direct {p0, p1, p2}, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->printIgnoredCount(Ljava/lang/StringBuilder;I)V

    :cond_0
    return-void
.end method

.method private recursiveAppend(Ljava/lang/StringBuilder;Ljava/lang/String;ILch/qos/logback/classic/spi/IThrowableProxy;)V
    .locals 5

    .line 0
    if-nez p4, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->subjoinFirstLine(Ljava/lang/StringBuilder;Ljava/lang/String;ILch/qos/logback/classic/spi/IThrowableProxy;)V

    sget-object p2, Lch/qos/logback/core/CoreConstants;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p3, p4}, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->subjoinSTEPArray(Ljava/lang/StringBuilder;ILch/qos/logback/classic/spi/IThrowableProxy;)V

    invoke-interface {p4}, Lch/qos/logback/classic/spi/IThrowableProxy;->getSuppressed()[Lch/qos/logback/classic/spi/IThrowableProxy;

    move-result-object p2

    if-eqz p2, :cond_1

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    add-int/lit8 v3, p3, 0x1

    const-string v4, "Suppressed: "

    invoke-direct {p0, p1, v4, v3, v2}, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->recursiveAppend(Ljava/lang/StringBuilder;Ljava/lang/String;ILch/qos/logback/classic/spi/IThrowableProxy;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p2, "Caused by: "

    invoke-interface {p4}, Lch/qos/logback/classic/spi/IThrowableProxy;->getCause()Lch/qos/logback/classic/spi/IThrowableProxy;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->recursiveAppend(Ljava/lang/StringBuilder;Ljava/lang/String;ILch/qos/logback/classic/spi/IThrowableProxy;)V

    return-void
.end method

.method private subjoinExceptionMessage(Ljava/lang/StringBuilder;Lch/qos/logback/classic/spi/IThrowableProxy;)V
    .locals 1

    .line 0
    invoke-interface {p2}, Lch/qos/logback/classic/spi/IThrowableProxy;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lch/qos/logback/classic/spi/IThrowableProxy;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private subjoinFirstLine(Ljava/lang/StringBuilder;Ljava/lang/String;ILch/qos/logback/classic/spi/IThrowableProxy;)V
    .locals 0

    .line 0
    add-int/lit8 p3, p3, -0x1

    invoke-static {p1, p3}, Lch/qos/logback/classic/spi/ThrowableProxyUtil;->indent(Ljava/lang/StringBuilder;I)V

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-direct {p0, p1, p4}, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->subjoinExceptionMessage(Ljava/lang/StringBuilder;Lch/qos/logback/classic/spi/IThrowableProxy;)V

    return-void
.end method


# virtual methods
.method public convert(Lch/qos/logback/classic/spi/ILoggingEvent;)Ljava/lang/String;
    .locals 1

    .line 0
    invoke-interface {p1}, Lch/qos/logback/classic/spi/ILoggingEvent;->getThrowableProxy()Lch/qos/logback/classic/spi/IThrowableProxy;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    iget-object v0, p0, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->evaluatorList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->evaluatorList:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1

    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->throwableProxyToString(Lch/qos/logback/classic/spi/IThrowableProxy;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 0
    check-cast p1, Lch/qos/logback/classic/spi/ILoggingEvent;

    invoke-virtual {p0, p1}, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->convert(Lch/qos/logback/classic/spi/ILoggingEvent;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected extraData(Ljava/lang/StringBuilder;Lch/qos/logback/classic/spi/StackTraceElementProxy;)V
    .locals 0

    .line 0
    return-void
.end method

.method public start()V
    .locals 6

    .line 0
    invoke-virtual {p0}, Lch/qos/logback/core/pattern/DynamicConverter;->getFirstOption()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7fffffff

    const/4 v2, 0x1

    if-nez v0, :cond_0

    :goto_0
    iput v1, p0, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->lengthOption:I

    goto :goto_1

    :cond_0
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "full"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "short"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iput v2, p0, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->lengthOption:I

    goto :goto_1

    :cond_2
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->lengthOption:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not parse ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] as an integer"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/core/pattern/DynamicConverter;->addError(Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Lch/qos/logback/core/pattern/DynamicConverter;->getOptionList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :goto_2
    if-ge v2, v1, :cond_3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0}, Lch/qos/logback/core/pattern/DynamicConverter;->getContext()Lch/qos/logback/core/Context;

    move-result-object v4

    const-string v5, "EVALUATOR_MAP"

    invoke-interface {v4, v5}, Lch/qos/logback/core/Context;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    invoke-direct {p0, v3}, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->addIgnoreStackTraceLine(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    invoke-super {p0}, Lch/qos/logback/core/pattern/DynamicConverter;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    iput-object v0, p0, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->evaluatorList:Ljava/util/List;

    invoke-super {p0}, Lch/qos/logback/core/pattern/DynamicConverter;->stop()V

    return-void
.end method

.method protected subjoinSTEPArray(Ljava/lang/StringBuilder;ILch/qos/logback/classic/spi/IThrowableProxy;)V
    .locals 9

    .line 0
    invoke-interface {p3}, Lch/qos/logback/classic/spi/IThrowableProxy;->getStackTraceElementProxyArray()[Lch/qos/logback/classic/spi/StackTraceElementProxy;

    move-result-object v0

    invoke-interface {p3}, Lch/qos/logback/classic/spi/IThrowableProxy;->getCommonFrames()I

    move-result v1

    iget v2, p0, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->lengthOption:I

    array-length v3, v0

    const/4 v4, 0x0

    if-le v2, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    if-eqz v3, :cond_1

    array-length v2, v0

    :cond_1
    if-lez v1, :cond_2

    if-eqz v3, :cond_2

    sub-int/2addr v2, v1

    :cond_2
    move v5, v4

    move v6, v5

    :goto_1
    if-ge v5, v2, :cond_5

    aget-object v7, v0, v5

    invoke-virtual {v7}, Lch/qos/logback/classic/spi/StackTraceElementProxy;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->isIgnoredStackTraceLine(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-static {p1, p2}, Lch/qos/logback/classic/spi/ThrowableProxyUtil;->indent(Ljava/lang/StringBuilder;I)V

    invoke-direct {p0, p1, v6, v7}, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->printStackLine(Ljava/lang/StringBuilder;ILch/qos/logback/classic/spi/StackTraceElementProxy;)V

    sget-object v6, Lch/qos/logback/core/CoreConstants;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v6, v4

    goto :goto_2

    :cond_3
    add-int/lit8 v6, v6, 0x1

    array-length v7, v0

    if-ge v2, v7, :cond_4

    add-int/lit8 v2, v2, 0x1

    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    if-lez v6, :cond_6

    invoke-direct {p0, p1, v6}, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->printIgnoredCount(Ljava/lang/StringBuilder;I)V

    sget-object v0, Lch/qos/logback/core/CoreConstants;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    if-lez v1, :cond_7

    if-eqz v3, :cond_7

    invoke-static {p1, p2}, Lch/qos/logback/classic/spi/ThrowableProxyUtil;->indent(Ljava/lang/StringBuilder;I)V

    const-string p2, "... "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lch/qos/logback/classic/spi/IThrowableProxy;->getCommonFrames()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " common frames omitted"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lch/qos/logback/core/CoreConstants;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    return-void
.end method

.method protected throwableProxyToString(Lch/qos/logback/classic/spi/IThrowableProxy;)Ljava/lang/String;
    .locals 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x800

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2, p1}, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->recursiveAppend(Ljava/lang/StringBuilder;Ljava/lang/String;ILch/qos/logback/classic/spi/IThrowableProxy;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
