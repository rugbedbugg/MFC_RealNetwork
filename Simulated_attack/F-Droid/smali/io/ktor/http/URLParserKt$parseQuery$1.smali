.class final Lio/ktor/http/URLParserKt$parseQuery$1;
.super Lkotlin/jvm/internal/Lambda;
.source "URLParser.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/http/URLParserKt;->parseQuery(Lio/ktor/http/URLBuilder;Ljava/lang/String;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $this_parseQuery:Lio/ktor/http/URLBuilder;


# direct methods
.method constructor <init>(Lio/ktor/http/URLBuilder;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lio/ktor/http/URLParserKt$parseQuery$1;->$this_parseQuery:Lio/ktor/http/URLBuilder;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 164
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lio/ktor/http/URLParserKt$parseQuery$1;->invoke(Ljava/lang/String;Ljava/util/List;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/ktor/http/URLParserKt$parseQuery$1;->$this_parseQuery:Lio/ktor/http/URLBuilder;

    .line 165
    invoke-virtual {v0}, Lio/ktor/http/URLBuilder;->getEncodedParameters()Lio/ktor/http/ParametersBuilder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lio/ktor/util/StringValuesBuilder;->appendAll(Ljava/lang/String;Ljava/lang/Iterable;)V

    return-void
.end method
