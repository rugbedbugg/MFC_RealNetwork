.class public Lch/qos/logback/classic/pattern/CallerDataConverter;
.super Lch/qos/logback/classic/pattern/ClassicConverter;


# static fields
.field public static final DEFAULT_CALLER_LINE_PREFIX:Ljava/lang/String; = "Caller+"

.field public static final DEFAULT_RANGE_DELIMITER:Ljava/lang/String; = ".."


# instance fields
.field final MAX_ERROR_COUNT:I

.field private depthEnd:I

.field private depthStart:I

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


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 0
    invoke-direct {p0}, Lch/qos/logback/classic/pattern/ClassicConverter;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lch/qos/logback/classic/pattern/CallerDataConverter;->depthStart:I

    const/4 v1, 0x5

    iput v1, p0, Lch/qos/logback/classic/pattern/CallerDataConverter;->depthEnd:I

    const/4 v1, 0x0

    iput-object v1, p0, Lch/qos/logback/classic/pattern/CallerDataConverter;->evaluatorList:Ljava/util/List;

    const/4 v1, 0x4

    iput v1, p0, Lch/qos/logback/classic/pattern/CallerDataConverter;->MAX_ERROR_COUNT:I

    iput v0, p0, Lch/qos/logback/classic/pattern/CallerDataConverter;->errorCount:I

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
    iget-object v0, p0, Lch/qos/logback/classic/pattern/CallerDataConverter;->evaluatorList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lch/qos/logback/classic/pattern/CallerDataConverter;->evaluatorList:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lch/qos/logback/classic/pattern/CallerDataConverter;->evaluatorList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private checkRange()V
    .locals 3

    .line 0
    iget v0, p0, Lch/qos/logback/classic/pattern/CallerDataConverter;->depthStart:I

    const-string v1, ", "

    if-ltz v0, :cond_1

    iget v2, p0, Lch/qos/logback/classic/pattern/CallerDataConverter;->depthEnd:I

    if-gez v2, :cond_0

    goto :goto_1

    :cond_0
    if-lt v0, v2, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid depthEnd range ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lch/qos/logback/classic/pattern/CallerDataConverter;->depthStart:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lch/qos/logback/classic/pattern/CallerDataConverter;->depthEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] (start greater or equal to end)"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/core/pattern/DynamicConverter;->addError(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid depthStart/depthEnd range ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lch/qos/logback/classic/pattern/CallerDataConverter;->depthStart:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lch/qos/logback/classic/pattern/CallerDataConverter;->depthEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] (negative values are not allowed)"

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method private isRange(Ljava/lang/String;)Z
    .locals 1

    .line 0
    invoke-virtual {p0}, Lch/qos/logback/classic/pattern/CallerDataConverter;->getDefaultRangeDelimiter()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method private splitRange(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .line 0
    invoke-virtual {p0}, Lch/qos/logback/classic/pattern/CallerDataConverter;->getDefaultRangeDelimiter()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public convert(Lch/qos/logback/classic/spi/ILoggingEvent;)Ljava/lang/String;
    .locals 4

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lch/qos/logback/classic/pattern/CallerDataConverter;->evaluatorList:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    iget-object p1, p0, Lch/qos/logback/classic/pattern/CallerDataConverter;->evaluatorList:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    invoke-interface {p1}, Lch/qos/logback/classic/spi/ILoggingEvent;->getCallerData()[Ljava/lang/StackTraceElement;

    move-result-object p1

    if-eqz p1, :cond_4

    array-length v1, p1

    iget v2, p0, Lch/qos/logback/classic/pattern/CallerDataConverter;->depthStart:I

    if-le v1, v2, :cond_4

    iget v1, p0, Lch/qos/logback/classic/pattern/CallerDataConverter;->depthEnd:I

    array-length v3, p1

    if-ge v1, v3, :cond_2

    goto :goto_0

    :cond_2
    array-length v1, p1

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-virtual {p0}, Lch/qos/logback/classic/pattern/CallerDataConverter;->getCallerLinePrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\t at "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v3, Lch/qos/logback/core/CoreConstants;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    sget-object p1, Lch/qos/logback/classic/spi/CallerData;->CALLER_DATA_NA:Ljava/lang/String;

    return-object p1
.end method

.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 0
    check-cast p1, Lch/qos/logback/classic/spi/ILoggingEvent;

    invoke-virtual {p0, p1}, Lch/qos/logback/classic/pattern/CallerDataConverter;->convert(Lch/qos/logback/classic/spi/ILoggingEvent;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getCallerLinePrefix()Ljava/lang/String;
    .locals 1

    .line 0
    const-string v0, "Caller+"

    return-object v0
.end method

.method protected getDefaultRangeDelimiter()Ljava/lang/String;
    .locals 1

    .line 0
    const-string v0, ".."

    return-object v0
.end method

.method public start()V
    .locals 6

    .line 0
    const-string v0, "]"

    invoke-virtual {p0}, Lch/qos/logback/core/pattern/DynamicConverter;->getFirstOption()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v1}, Lch/qos/logback/classic/pattern/CallerDataConverter;->isRange(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v1}, Lch/qos/logback/classic/pattern/CallerDataConverter;->splitRange(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lch/qos/logback/classic/pattern/CallerDataConverter;->depthStart:I

    aget-object v3, v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lch/qos/logback/classic/pattern/CallerDataConverter;->depthEnd:I

    invoke-direct {p0}, Lch/qos/logback/classic/pattern/CallerDataConverter;->checkRange()V

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse depth option as range ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lch/qos/logback/core/pattern/DynamicConverter;->addError(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lch/qos/logback/classic/pattern/CallerDataConverter;->depthEnd:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to parse depth option ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lch/qos/logback/core/pattern/DynamicConverter;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    invoke-virtual {p0}, Lch/qos/logback/core/pattern/DynamicConverter;->getOptionList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :goto_2
    if-ge v2, v1, :cond_4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0}, Lch/qos/logback/core/pattern/DynamicConverter;->getContext()Lch/qos/logback/core/Context;

    move-result-object v4

    if-eqz v4, :cond_3

    const-string v5, "EVALUATOR_MAP"

    invoke-interface {v4, v5}, Lch/qos/logback/core/Context;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method
