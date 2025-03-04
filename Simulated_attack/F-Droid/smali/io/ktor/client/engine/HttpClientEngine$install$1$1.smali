.class final Lio/ktor/client/engine/HttpClientEngine$install$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "HttpClientEngine.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/engine/HttpClientEngine$install$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $client:Lio/ktor/client/HttpClient;

.field final synthetic $response:Lio/ktor/client/statement/HttpResponse;


# direct methods
.method constructor <init>(Lio/ktor/client/HttpClient;Lio/ktor/client/statement/HttpResponse;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lio/ktor/client/engine/HttpClientEngine$install$1$1;->$client:Lio/ktor/client/HttpClient;

    iput-object p2, p0, Lio/ktor/client/engine/HttpClientEngine$install$1$1;->$response:Lio/ktor/client/statement/HttpResponse;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 76
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lio/ktor/client/engine/HttpClientEngine$install$1$1;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lio/ktor/client/engine/HttpClientEngine$install$1$1;->$client:Lio/ktor/client/HttpClient;

    .line 78
    invoke-virtual {p1}, Lio/ktor/client/HttpClient;->getMonitor()Lio/ktor/events/Events;

    move-result-object p1

    invoke-static {}, Lio/ktor/client/utils/ClientEventsKt;->getHttpResponseCancelled()Lio/ktor/events/EventDefinition;

    move-result-object v0

    iget-object v1, p0, Lio/ktor/client/engine/HttpClientEngine$install$1$1;->$response:Lio/ktor/client/statement/HttpResponse;

    invoke-virtual {p1, v0, v1}, Lio/ktor/events/Events;->raise(Lio/ktor/events/EventDefinition;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
