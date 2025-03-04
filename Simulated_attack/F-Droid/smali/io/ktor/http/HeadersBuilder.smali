.class public final Lio/ktor/http/HeadersBuilder;
.super Lio/ktor/util/StringValuesBuilderImpl;
.source "Headers.kt"


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x1

    .line 29
    invoke-direct {p0, v0, p1}, Lio/ktor/util/StringValuesBuilderImpl;-><init>(ZI)V

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/16 p1, 0x8

    .line 29
    :cond_0
    invoke-direct {p0, p1}, Lio/ktor/http/HeadersBuilder;-><init>(I)V

    return-void
.end method


# virtual methods
.method public build()Lio/ktor/http/Headers;
    .locals 2

    .line 31
    new-instance v0, Lio/ktor/http/HeadersImpl;

    invoke-virtual {p0}, Lio/ktor/util/StringValuesBuilderImpl;->getValues()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/ktor/http/HeadersImpl;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method protected validateName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-super {p0, p1}, Lio/ktor/util/StringValuesBuilderImpl;->validateName(Ljava/lang/String;)V

    .line 36
    sget-object v0, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v0, p1}, Lio/ktor/http/HttpHeaders;->checkHeaderName(Ljava/lang/String;)V

    return-void
.end method

.method protected validateValue(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-super {p0, p1}, Lio/ktor/util/StringValuesBuilderImpl;->validateValue(Ljava/lang/String;)V

    .line 41
    sget-object v0, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v0, p1}, Lio/ktor/http/HttpHeaders;->checkHeaderValue(Ljava/lang/String;)V

    return-void
.end method
