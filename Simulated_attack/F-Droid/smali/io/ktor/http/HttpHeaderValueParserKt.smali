.class public abstract Lio/ktor/http/HttpHeaderValueParserKt;
.super Ljava/lang/Object;
.source "HttpHeaderValueParser.kt"


# direct methods
.method private static final nextIsSemicolonOrEnd(Ljava/lang/String;I)Z
    .locals 3

    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 218
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 222
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eq p1, v1, :cond_2

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 p1, 0x3b

    if-ne p0, p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_1
    return v0
.end method

.method public static final parseHeaderValue(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    .line 72
    invoke-static {p0, v0}, Lio/ktor/http/HttpHeaderValueParserKt;->parseHeaderValue(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final parseHeaderValue(Ljava/lang/String;Z)Ljava/util/List;
    .locals 3

    if-nez p0, :cond_0

    .line 81
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 85
    :cond_0
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lio/ktor/http/HttpHeaderValueParserKt$parseHeaderValue$items$1;->INSTANCE:Lio/ktor/http/HttpHeaderValueParserKt$parseHeaderValue$items$1;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const/4 v1, 0x0

    .line 86
    :goto_0
    invoke-static {p0}, Lkotlin/text/StringsKt;->getLastIndex(Ljava/lang/CharSequence;)I

    move-result v2

    if-gt v1, v2, :cond_1

    .line 87
    invoke-static {p0, v1, v0, p1}, Lio/ktor/http/HttpHeaderValueParserKt;->parseHeaderValueItem(Ljava/lang/String;ILkotlin/Lazy;Z)I

    move-result v1

    goto :goto_0

    .line 89
    :cond_1
    invoke-static {v0}, Lio/ktor/http/HttpHeaderValueParserKt;->valueOrEmpty(Lkotlin/Lazy;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final parseHeaderValueItem(Ljava/lang/String;ILkotlin/Lazy;Z)I
    .locals 5

    .line 110
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lio/ktor/http/HttpHeaderValueParserKt$parseHeaderValueItem$parameters$1;->INSTANCE:Lio/ktor/http/HttpHeaderValueParserKt$parseHeaderValueItem$parameters$1;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    if-eqz p3, :cond_0

    .line 111
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v2, p1

    .line 113
    :goto_1
    invoke-static {p0}, Lkotlin/text/StringsKt;->getLastIndex(Ljava/lang/CharSequence;)I

    move-result v3

    if-gt v2, v3, :cond_6

    .line 114
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2c

    if-ne v3, v4, :cond_2

    .line 116
    invoke-interface {p2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    new-instance p3, Lio/ktor/http/HeaderValue;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_2

    :cond_1
    move v1, v2

    :goto_2
    invoke-static {p0, p1, v1}, Lio/ktor/http/HttpHeaderValueParserKt;->subtrim(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Lio/ktor/http/HttpHeaderValueParserKt;->valueOrEmpty(Lkotlin/Lazy;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p3, p0, p1}, Lio/ktor/http/HeaderValue;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    return v2

    :cond_2
    const/16 v4, 0x3b

    if-ne v3, v4, :cond_4

    if-nez v1, :cond_3

    .line 121
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 122
    invoke-static {p0, v2, v0}, Lio/ktor/http/HttpHeaderValueParserKt;->parseHeaderValueParameter(Ljava/lang/String;ILkotlin/Lazy;)I

    move-result v2

    goto :goto_1

    :cond_4
    if-eqz p3, :cond_5

    .line 127
    invoke-static {p0, v2, v0}, Lio/ktor/http/HttpHeaderValueParserKt;->parseHeaderValueParameter(Ljava/lang/String;ILkotlin/Lazy;)I

    move-result v2

    goto :goto_1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 135
    :cond_6
    invoke-interface {p2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    new-instance p3, Lio/ktor/http/HeaderValue;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_3

    :cond_7
    move v1, v2

    :goto_3
    invoke-static {p0, p1, v1}, Lio/ktor/http/HttpHeaderValueParserKt;->subtrim(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Lio/ktor/http/HttpHeaderValueParserKt;->valueOrEmpty(Lkotlin/Lazy;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p3, p0, p1}, Lio/ktor/http/HeaderValue;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v2
.end method

.method private static final parseHeaderValueParameter(Ljava/lang/String;ILkotlin/Lazy;)I
    .locals 4

    move v0, p1

    .line 150
    :goto_0
    invoke-static {p0}, Lkotlin/text/StringsKt;->getLastIndex(Ljava/lang/CharSequence;)I

    move-result v1

    const-string v2, ""

    if-gt v0, v1, :cond_3

    .line 151
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x3d

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 153
    invoke-static {p0, v1}, Lio/ktor/http/HttpHeaderValueParserKt;->parseHeaderValueParameterValue(Ljava/lang/String;I)Lkotlin/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 154
    invoke-static {p2, p0, p1, v0, v1}, Lio/ktor/http/HttpHeaderValueParserKt;->parseHeaderValueParameter$addParam(Lkotlin/Lazy;Ljava/lang/String;IILjava/lang/String;)V

    return v2

    :cond_0
    const/16 v3, 0x3b

    if-ne v1, v3, :cond_1

    goto :goto_1

    :cond_1
    const/16 v3, 0x2c

    if-ne v1, v3, :cond_2

    .line 159
    :goto_1
    invoke-static {p2, p0, p1, v0, v2}, Lio/ktor/http/HttpHeaderValueParserKt;->parseHeaderValueParameter$addParam(Lkotlin/Lazy;Ljava/lang/String;IILjava/lang/String;)V

    return v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    :cond_3
    invoke-static {p2, p0, p1, v0, v2}, Lio/ktor/http/HttpHeaderValueParserKt;->parseHeaderValueParameter$addParam(Lkotlin/Lazy;Ljava/lang/String;IILjava/lang/String;)V

    return v0
.end method

.method private static final parseHeaderValueParameter$addParam(Lkotlin/Lazy;Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    .line 141
    invoke-static {p1, p2, p3}, Lio/ktor/http/HttpHeaderValueParserKt;->subtrim(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    .line 142
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 146
    :cond_0
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    new-instance p2, Lio/ktor/http/HeaderValueParam;

    invoke-direct {p2, p1, p4}, Lio/ktor/http/HeaderValueParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static final parseHeaderValueParameterValue(Ljava/lang/String;I)Lkotlin/Pair;
    .locals 3

    .line 172
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 173
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, ""

    invoke-static {p0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0

    .line 177
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x22

    if-ne v0, v1, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 178
    invoke-static {p0, p1}, Lio/ktor/http/HttpHeaderValueParserKt;->parseHeaderValueParameterValueQuoted(Ljava/lang/String;I)Lkotlin/Pair;

    move-result-object p0

    return-object p0

    :cond_1
    move v0, p1

    .line 181
    :goto_0
    invoke-static {p0}, Lkotlin/text/StringsKt;->getLastIndex(Ljava/lang/CharSequence;)I

    move-result v1

    if-gt v0, v1, :cond_4

    .line 182
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3b

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    const/16 v2, 0x2c

    if-ne v1, v2, :cond_3

    .line 183
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, p1, v0}, Lio/ktor/http/HttpHeaderValueParserKt;->subtrim(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 187
    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, p1, v0}, Lio/ktor/http/HttpHeaderValueParserKt;->subtrim(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static final parseHeaderValueParameterValueQuoted(Ljava/lang/String;I)Lkotlin/Pair;
    .locals 4

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    :goto_0
    invoke-static {p0}, Lkotlin/text/StringsKt;->getLastIndex(Ljava/lang/CharSequence;)I

    move-result v1

    const-string v2, "builder.toString()"

    const/16 v3, 0x22

    if-gt p1, v1, :cond_2

    .line 194
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 197
    invoke-static {p0, p1}, Lio/ktor/http/HttpHeaderValueParserKt;->nextIsSemicolonOrEnd(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 198
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v2, 0x5c

    if-ne v1, v2, :cond_1

    .line 201
    invoke-static {p0}, Lkotlin/text/StringsKt;->getLastIndex(Ljava/lang/CharSequence;)I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    if-ge p1, v2, :cond_1

    add-int/lit8 v1, p1, 0x1

    .line 202
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    .line 208
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 213
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static final subtrim(Ljava/lang/String;II)Ljava/lang/String;
    .locals 0

    .line 100
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final valueOrEmpty(Lkotlin/Lazy;)Ljava/util/List;
    .locals 1

    .line 98
    invoke-interface {p0}, Lkotlin/Lazy;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method
