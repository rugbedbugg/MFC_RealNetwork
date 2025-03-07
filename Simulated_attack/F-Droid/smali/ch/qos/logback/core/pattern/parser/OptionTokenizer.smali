.class public Lch/qos/logback/core/pattern/parser/OptionTokenizer;
.super Ljava/lang/Object;


# static fields
.field private static final EXPECTING_STATE:I = 0x0

.field private static final QUOTED_COLLECTING_STATE:I = 0x2

.field private static final RAW_COLLECTING_STATE:I = 0x1


# instance fields
.field final escapeUtil:Lch/qos/logback/core/pattern/util/IEscapeUtil;

.field final pattern:Ljava/lang/String;

.field final patternLength:I

.field quoteChar:C

.field state:I

.field final tokenStream:Lch/qos/logback/core/pattern/parser/TokenStream;


# direct methods
.method constructor <init>(Lch/qos/logback/core/pattern/parser/TokenStream;)V
    .locals 1

    .line 0
    new-instance v0, Lch/qos/logback/core/pattern/util/AsIsEscapeUtil;

    invoke-direct {v0}, Lch/qos/logback/core/pattern/util/AsIsEscapeUtil;-><init>()V

    invoke-direct {p0, p1, v0}, Lch/qos/logback/core/pattern/parser/OptionTokenizer;-><init>(Lch/qos/logback/core/pattern/parser/TokenStream;Lch/qos/logback/core/pattern/util/IEscapeUtil;)V

    return-void
.end method

.method constructor <init>(Lch/qos/logback/core/pattern/parser/TokenStream;Lch/qos/logback/core/pattern/util/IEscapeUtil;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->state:I

    iput-object p1, p0, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->tokenStream:Lch/qos/logback/core/pattern/parser/TokenStream;

    iget-object v0, p1, Lch/qos/logback/core/pattern/parser/TokenStream;->pattern:Ljava/lang/String;

    iput-object v0, p0, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->pattern:Ljava/lang/String;

    iget p1, p1, Lch/qos/logback/core/pattern/parser/TokenStream;->patternLength:I

    iput p1, p0, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->patternLength:I

    iput-object p2, p0, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->escapeUtil:Lch/qos/logback/core/pattern/util/IEscapeUtil;

    return-void
.end method


# virtual methods
.method emitOptionToken(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lch/qos/logback/core/pattern/parser/Token;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 0
    new-instance v0, Lch/qos/logback/core/pattern/parser/Token;

    const/16 v1, 0x3ee

    invoke-direct {v0, v1, p2}, Lch/qos/logback/core/pattern/parser/Token;-><init>(ILjava/util/List;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->tokenStream:Lch/qos/logback/core/pattern/parser/TokenStream;

    sget-object p2, Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;->LITERAL_STATE:Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;

    iput-object p2, p1, Lch/qos/logback/core/pattern/parser/TokenStream;->state:Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;

    return-void
.end method

.method escape(Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 4

    .line 0
    iget-object v0, p0, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->tokenStream:Lch/qos/logback/core/pattern/parser/TokenStream;

    iget v1, v0, Lch/qos/logback/core/pattern/parser/TokenStream;->pointer:I

    iget v2, p0, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->patternLength:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->pattern:Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    iput v3, v0, Lch/qos/logback/core/pattern/parser/TokenStream;->pointer:I

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iget-object v1, p0, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->escapeUtil:Lch/qos/logback/core/pattern/util/IEscapeUtil;

    iget-object v2, p0, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->tokenStream:Lch/qos/logback/core/pattern/parser/TokenStream;

    iget v2, v2, Lch/qos/logback/core/pattern/parser/TokenStream;->pointer:I

    invoke-interface {v1, p1, p2, v0, v2}, Lch/qos/logback/core/pattern/util/IEscapeUtil;->escape(Ljava/lang/String;Ljava/lang/StringBuffer;CI)V

    :cond_0
    return-void
.end method

.method tokenize(CLjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C",
            "Ljava/util/List<",
            "Lch/qos/logback/core/pattern/parser/Token;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/spi/ScanException;
        }
    .end annotation

    .line 0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iget-object v2, p0, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->tokenStream:Lch/qos/logback/core/pattern/parser/TokenStream;

    iget v2, v2, Lch/qos/logback/core/pattern/parser/TokenStream;->pointer:I

    iget v3, p0, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->patternLength:I

    const/16 v4, 0x7d

    const/4 v5, 0x1

    if-ge v2, v3, :cond_a

    iget v2, p0, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->state:I

    const/16 v3, 0x2c

    const/4 v6, 0x2

    if-eqz v2, :cond_6

    const/4 v7, 0x0

    if-eq v2, v5, :cond_3

    if-eq v2, v6, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-char v2, p0, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->quoteChar:C

    if-ne p1, v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->setLength(I)V

    iput v7, p0, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->state:I

    goto :goto_3

    :cond_1
    const/16 v3, 0x5c

    if-ne p1, v3, :cond_2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->escape(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    goto :goto_3

    :cond_2
    :goto_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_3
    if-eq p1, v3, :cond_5

    if-eq p1, v4, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p2, v1}, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->emitOptionToken(Ljava/util/List;Ljava/util/List;)V

    return-void

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_6
    const/16 v2, 0x9

    if-eq p1, v2, :cond_9

    const/16 v2, 0xa

    if-eq p1, v2, :cond_9

    const/16 v2, 0xd

    if-eq p1, v2, :cond_9

    const/16 v2, 0x20

    if-eq p1, v2, :cond_9

    const/16 v2, 0x22

    if-eq p1, v2, :cond_8

    const/16 v2, 0x27

    if-eq p1, v2, :cond_8

    if-eq p1, v3, :cond_9

    if-eq p1, v4, :cond_7

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iput v5, p0, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->state:I

    goto :goto_3

    :cond_7
    invoke-virtual {p0, p2, v1}, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->emitOptionToken(Ljava/util/List;Ljava/util/List;)V

    return-void

    :cond_8
    iput v6, p0, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->state:I

    iput-char p1, p0, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->quoteChar:C

    :cond_9
    :goto_3
    iget-object p1, p0, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->pattern:Ljava/lang/String;

    iget-object v2, p0, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->tokenStream:Lch/qos/logback/core/pattern/parser/TokenStream;

    iget v2, v2, Lch/qos/logback/core/pattern/parser/TokenStream;->pointer:I

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    iget-object v2, p0, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->tokenStream:Lch/qos/logback/core/pattern/parser/TokenStream;

    iget v3, v2, Lch/qos/logback/core/pattern/parser/TokenStream;->pointer:I

    add-int/2addr v3, v5

    iput v3, v2, Lch/qos/logback/core/pattern/parser/TokenStream;->pointer:I

    goto/16 :goto_0

    :cond_a
    const-string v2, "Unexpected end of pattern string in OptionTokenizer"

    if-ne p1, v4, :cond_d

    iget p1, p0, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->state:I

    if-nez p1, :cond_b

    :goto_4
    invoke-virtual {p0, p2, v1}, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->emitOptionToken(Ljava/util/List;Ljava/util/List;)V

    goto :goto_5

    :cond_b
    if-ne p1, v5, :cond_c

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :goto_5
    return-void

    :cond_c
    new-instance p1, Lch/qos/logback/core/spi/ScanException;

    invoke-direct {p1, v2}, Lch/qos/logback/core/spi/ScanException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    new-instance p1, Lch/qos/logback/core/spi/ScanException;

    invoke-direct {p1, v2}, Lch/qos/logback/core/spi/ScanException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
