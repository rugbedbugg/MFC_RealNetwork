.class public abstract Lio/ktor/http/parsing/ParserDslKt;
.super Ljava/lang/Object;
.source "ParserDsl.kt"


# direct methods
.method public static final atLeastOne(Lio/ktor/http/parsing/Grammar;)Lio/ktor/http/parsing/Grammar;
    .locals 1

    const-string v0, "grammar"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    new-instance v0, Lio/ktor/http/parsing/AtLeastOne;

    invoke-direct {v0, p0}, Lio/ktor/http/parsing/AtLeastOne;-><init>(Lio/ktor/http/parsing/Grammar;)V

    return-object v0
.end method

.method public static final or(Lio/ktor/http/parsing/Grammar;Lio/ktor/http/parsing/Grammar;)Lio/ktor/http/parsing/Grammar;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grammar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v0, Lio/ktor/http/parsing/OrGrammar;

    const/4 v1, 0x2

    new-array v1, v1, [Lio/ktor/http/parsing/Grammar;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lio/ktor/http/parsing/OrGrammar;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static final or(Lio/ktor/http/parsing/Grammar;Ljava/lang/String;)Lio/ktor/http/parsing/Grammar;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    new-instance v0, Lio/ktor/http/parsing/StringGrammar;

    invoke-direct {v0, p1}, Lio/ktor/http/parsing/StringGrammar;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lio/ktor/http/parsing/ParserDslKt;->or(Lio/ktor/http/parsing/Grammar;Lio/ktor/http/parsing/Grammar;)Lio/ktor/http/parsing/Grammar;

    move-result-object p0

    return-object p0
.end method

.method public static final then(Lio/ktor/http/parsing/Grammar;Lio/ktor/http/parsing/Grammar;)Lio/ktor/http/parsing/Grammar;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grammar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    new-instance v0, Lio/ktor/http/parsing/SequenceGrammar;

    const/4 v1, 0x2

    new-array v1, v1, [Lio/ktor/http/parsing/Grammar;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lio/ktor/http/parsing/SequenceGrammar;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static final then(Lio/ktor/http/parsing/Grammar;Ljava/lang/String;)Lio/ktor/http/parsing/Grammar;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    new-instance v0, Lio/ktor/http/parsing/StringGrammar;

    invoke-direct {v0, p1}, Lio/ktor/http/parsing/StringGrammar;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lio/ktor/http/parsing/ParserDslKt;->then(Lio/ktor/http/parsing/Grammar;Lio/ktor/http/parsing/Grammar;)Lio/ktor/http/parsing/Grammar;

    move-result-object p0

    return-object p0
.end method

.method public static final then(Ljava/lang/String;Lio/ktor/http/parsing/Grammar;)Lio/ktor/http/parsing/Grammar;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grammar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    new-instance v0, Lio/ktor/http/parsing/StringGrammar;

    invoke-direct {v0, p0}, Lio/ktor/http/parsing/StringGrammar;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lio/ktor/http/parsing/ParserDslKt;->then(Lio/ktor/http/parsing/Grammar;Lio/ktor/http/parsing/Grammar;)Lio/ktor/http/parsing/Grammar;

    move-result-object p0

    return-object p0
.end method

.method public static final to(CC)Lio/ktor/http/parsing/Grammar;
    .locals 1

    .line 54
    new-instance v0, Lio/ktor/http/parsing/RangeGrammar;

    invoke-direct {v0, p0, p1}, Lio/ktor/http/parsing/RangeGrammar;-><init>(CC)V

    return-object v0
.end method
