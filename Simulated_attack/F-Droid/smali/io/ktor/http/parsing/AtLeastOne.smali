.class public final Lio/ktor/http/parsing/AtLeastOne;
.super Lio/ktor/http/parsing/Grammar;
.source "ParserDsl.kt"

# interfaces
.implements Lio/ktor/http/parsing/SimpleGrammar;


# instance fields
.field private final grammar:Lio/ktor/http/parsing/Grammar;


# direct methods
.method public constructor <init>(Lio/ktor/http/parsing/Grammar;)V
    .locals 1

    const-string v0, "grammar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, v0}, Lio/ktor/http/parsing/Grammar;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lio/ktor/http/parsing/AtLeastOne;->grammar:Lio/ktor/http/parsing/Grammar;

    return-void
.end method


# virtual methods
.method public getGrammar()Lio/ktor/http/parsing/Grammar;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/http/parsing/AtLeastOne;->grammar:Lio/ktor/http/parsing/Grammar;

    return-object v0
.end method
