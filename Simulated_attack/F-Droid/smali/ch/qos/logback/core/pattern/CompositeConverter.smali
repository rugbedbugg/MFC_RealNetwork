.class public abstract Lch/qos/logback/core/pattern/CompositeConverter;
.super Lch/qos/logback/core/pattern/DynamicConverter;


# instance fields
.field childConverter:Lch/qos/logback/core/pattern/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lch/qos/logback/core/pattern/Converter;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Lch/qos/logback/core/pattern/DynamicConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lch/qos/logback/core/pattern/CompositeConverter;->childConverter:Lch/qos/logback/core/pattern/Converter;

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1, v0, p1}, Lch/qos/logback/core/pattern/Converter;->write(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    iget-object v1, v1, Lch/qos/logback/core/pattern/Converter;->next:Lch/qos/logback/core/pattern/Converter;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lch/qos/logback/core/pattern/CompositeConverter;->transform(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getChildConverter()Lch/qos/logback/core/pattern/Converter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lch/qos/logback/core/pattern/Converter;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lch/qos/logback/core/pattern/CompositeConverter;->childConverter:Lch/qos/logback/core/pattern/Converter;

    return-object v0
.end method

.method public setChildConverter(Lch/qos/logback/core/pattern/Converter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/pattern/Converter;",
            ")V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lch/qos/logback/core/pattern/CompositeConverter;->childConverter:Lch/qos/logback/core/pattern/Converter;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CompositeConverter<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lch/qos/logback/core/pattern/FormattingConverter;->formattingInfo:Lch/qos/logback/core/pattern/FormatInfo;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lch/qos/logback/core/pattern/CompositeConverter;->childConverter:Lch/qos/logback/core/pattern/Converter;

    if-eqz v1, :cond_1

    const-string v1, ", children: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lch/qos/logback/core/pattern/CompositeConverter;->childConverter:Lch/qos/logback/core/pattern/Converter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract transform(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation
.end method
