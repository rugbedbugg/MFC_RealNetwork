.class public Lch/qos/logback/core/pattern/parser/SimpleKeywordNode;
.super Lch/qos/logback/core/pattern/parser/FormattingNode;


# instance fields
.field optionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lch/qos/logback/core/pattern/parser/FormattingNode;-><init>(ILjava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 0
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lch/qos/logback/core/pattern/parser/FormattingNode;-><init>(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 0
    invoke-super {p0, p1}, Lch/qos/logback/core/pattern/parser/FormattingNode;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p1, Lch/qos/logback/core/pattern/parser/SimpleKeywordNode;

    if-nez v0, :cond_1

    return v1

    :cond_1
    check-cast p1, Lch/qos/logback/core/pattern/parser/SimpleKeywordNode;

    iget-object v0, p0, Lch/qos/logback/core/pattern/parser/SimpleKeywordNode;->optionList:Ljava/util/List;

    iget-object p1, p1, Lch/qos/logback/core/pattern/parser/SimpleKeywordNode;->optionList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    :goto_0
    return v1
.end method

.method public getOptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lch/qos/logback/core/pattern/parser/SimpleKeywordNode;->optionList:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 0
    invoke-super {p0}, Lch/qos/logback/core/pattern/parser/FormattingNode;->hashCode()I

    move-result v0

    return v0
.end method

.method public setOptions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lch/qos/logback/core/pattern/parser/SimpleKeywordNode;->optionList:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lch/qos/logback/core/pattern/parser/SimpleKeywordNode;->optionList:Ljava/util/List;

    const-string v2, ")"

    const-string v3, ","

    const-string v4, "KeyWord("

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lch/qos/logback/core/pattern/parser/Node;->value:Ljava/lang/Object;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lch/qos/logback/core/pattern/parser/FormattingNode;->formatInfo:Lch/qos/logback/core/pattern/FormatInfo;

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lch/qos/logback/core/pattern/parser/Node;->value:Ljava/lang/Object;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lch/qos/logback/core/pattern/parser/FormattingNode;->formatInfo:Lch/qos/logback/core/pattern/FormatInfo;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lch/qos/logback/core/pattern/parser/SimpleKeywordNode;->optionList:Ljava/util/List;

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Lch/qos/logback/core/pattern/parser/Node;->printNext()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
