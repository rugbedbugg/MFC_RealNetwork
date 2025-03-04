.class public final Lio/ktor/http/parsing/RangeGrammar;
.super Lio/ktor/http/parsing/Grammar;
.source "ParserDsl.kt"


# instance fields
.field private final from:C

.field private final to:C


# direct methods
.method public constructor <init>(CC)V
    .locals 1

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, v0}, Lio/ktor/http/parsing/Grammar;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-char p1, p0, Lio/ktor/http/parsing/RangeGrammar;->from:C

    iput-char p2, p0, Lio/ktor/http/parsing/RangeGrammar;->to:C

    return-void
.end method


# virtual methods
.method public final getFrom()C
    .locals 1

    .line 0
    iget-char v0, p0, Lio/ktor/http/parsing/RangeGrammar;->from:C

    return v0
.end method

.method public final getTo()C
    .locals 1

    .line 0
    iget-char v0, p0, Lio/ktor/http/parsing/RangeGrammar;->to:C

    return v0
.end method
