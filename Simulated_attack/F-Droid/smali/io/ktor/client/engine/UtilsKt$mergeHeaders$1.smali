.class final Lio/ktor/client/engine/UtilsKt$mergeHeaders$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Utils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/engine/UtilsKt;->mergeHeaders(Lio/ktor/http/Headers;Lio/ktor/http/content/OutgoingContent;Lkotlin/jvm/functions/Function2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $content:Lio/ktor/http/content/OutgoingContent;

.field final synthetic $requestHeaders:Lio/ktor/http/Headers;


# direct methods
.method constructor <init>(Lio/ktor/http/Headers;Lio/ktor/http/content/OutgoingContent;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lio/ktor/client/engine/UtilsKt$mergeHeaders$1;->$requestHeaders:Lio/ktor/http/Headers;

    iput-object p2, p0, Lio/ktor/client/engine/UtilsKt$mergeHeaders$1;->$content:Lio/ktor/http/content/OutgoingContent;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 37
    check-cast p1, Lio/ktor/http/HeadersBuilder;

    invoke-virtual {p0, p1}, Lio/ktor/client/engine/UtilsKt$mergeHeaders$1;->invoke(Lio/ktor/http/HeadersBuilder;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lio/ktor/http/HeadersBuilder;)V
    .locals 1

    const-string v0, "$this$buildHeaders"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/ktor/client/engine/UtilsKt$mergeHeaders$1;->$requestHeaders:Lio/ktor/http/Headers;

    .line 38
    invoke-virtual {p1, v0}, Lio/ktor/util/StringValuesBuilderImpl;->appendAll(Lio/ktor/util/StringValues;)V

    iget-object v0, p0, Lio/ktor/client/engine/UtilsKt$mergeHeaders$1;->$content:Lio/ktor/http/content/OutgoingContent;

    .line 39
    invoke-virtual {v0}, Lio/ktor/http/content/OutgoingContent;->getHeaders()Lio/ktor/http/Headers;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/ktor/util/StringValuesBuilderImpl;->appendAll(Lio/ktor/util/StringValues;)V

    return-void
.end method
