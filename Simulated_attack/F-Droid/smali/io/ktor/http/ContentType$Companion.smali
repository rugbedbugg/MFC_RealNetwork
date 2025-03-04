.class public final Lio/ktor/http/ContentType$Companion;
.super Ljava/lang/Object;
.source "ContentTypes.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/http/ContentType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lio/ktor/http/ContentType$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAny()Lio/ktor/http/ContentType;
    .locals 1

    .line 149
    invoke-static {}, Lio/ktor/http/ContentType;->access$getAny$cp()Lio/ktor/http/ContentType;

    move-result-object v0

    return-object v0
.end method

.method public final parse(Ljava/lang/String;)Lio/ktor/http/ContentType;
    .locals 8

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/ktor/http/ContentType$Companion;->getAny()Lio/ktor/http/ContentType;

    move-result-object p1

    return-object p1

    .line 117
    :cond_0
    sget-object v0, Lio/ktor/http/HeaderValueWithParameters;->Companion:Lio/ktor/http/HeaderValueWithParameters$Companion;

    .line 63
    invoke-static {p1}, Lio/ktor/http/HttpHeaderValueParserKt;->parseHeaderValue(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/ktor/http/HeaderValue;

    .line 64
    invoke-virtual {v0}, Lio/ktor/http/HeaderValue;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lio/ktor/http/HeaderValue;->getParams()Ljava/util/List;

    move-result-object v0

    const/16 v2, 0x2f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, v7

    .line 118
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 121
    invoke-static {v7}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "*"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lio/ktor/http/ContentType;->Companion:Lio/ktor/http/ContentType$Companion;

    invoke-virtual {p1}, Lio/ktor/http/ContentType$Companion;->getAny()Lio/ktor/http/ContentType;

    move-result-object p1

    return-object p1

    .line 123
    :cond_1
    new-instance v0, Lio/ktor/http/BadContentTypeFormatException;

    invoke-direct {v0, p1}, Lio/ktor/http/BadContentTypeFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v2, 0x0

    .line 126
    invoke-virtual {v7, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 128
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-eqz v4, :cond_5

    add-int/lit8 v1, v1, 0x1

    .line 132
    invoke-virtual {v7, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "this as java.lang.String).substring(startIndex)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x20

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 134
    invoke-static {v3, v4, v2, v5, v6}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {v1, v4, v2, v5, v6}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 138
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x2f

    invoke-static {v1, v4, v2, v5, v6}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 142
    new-instance p1, Lio/ktor/http/ContentType;

    invoke-direct {p1, v3, v1, v0}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object p1

    .line 139
    :cond_3
    new-instance v0, Lio/ktor/http/BadContentTypeFormatException;

    invoke-direct {v0, p1}, Lio/ktor/http/BadContentTypeFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_4
    new-instance v0, Lio/ktor/http/BadContentTypeFormatException;

    invoke-direct {v0, p1}, Lio/ktor/http/BadContentTypeFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_5
    new-instance v0, Lio/ktor/http/BadContentTypeFormatException;

    invoke-direct {v0, p1}, Lio/ktor/http/BadContentTypeFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
