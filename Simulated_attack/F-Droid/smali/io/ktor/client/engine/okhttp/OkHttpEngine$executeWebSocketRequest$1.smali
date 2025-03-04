.class final Lio/ktor/client/engine/okhttp/OkHttpEngine$executeWebSocketRequest$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "OkHttpEngine.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/engine/okhttp/OkHttpEngine;->executeWebSocketRequest(Lokhttp3/OkHttpClient;Lokhttp3/Request;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lio/ktor/client/engine/okhttp/OkHttpEngine;


# direct methods
.method constructor <init>(Lio/ktor/client/engine/okhttp/OkHttpEngine;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lio/ktor/client/engine/okhttp/OkHttpEngine$executeWebSocketRequest$1;->this$0:Lio/ktor/client/engine/okhttp/OkHttpEngine;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iput-object p1, p0, Lio/ktor/client/engine/okhttp/OkHttpEngine$executeWebSocketRequest$1;->result:Ljava/lang/Object;

    iget p1, p0, Lio/ktor/client/engine/okhttp/OkHttpEngine$executeWebSocketRequest$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/ktor/client/engine/okhttp/OkHttpEngine$executeWebSocketRequest$1;->label:I

    iget-object p1, p0, Lio/ktor/client/engine/okhttp/OkHttpEngine$executeWebSocketRequest$1;->this$0:Lio/ktor/client/engine/okhttp/OkHttpEngine;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0, v0, p0}, Lio/ktor/client/engine/okhttp/OkHttpEngine;->access$executeWebSocketRequest(Lio/ktor/client/engine/okhttp/OkHttpEngine;Lokhttp3/OkHttpClient;Lokhttp3/Request;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
