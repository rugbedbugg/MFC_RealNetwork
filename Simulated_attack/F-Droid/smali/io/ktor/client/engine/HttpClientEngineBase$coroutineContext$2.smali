.class final Lio/ktor/client/engine/HttpClientEngineBase$coroutineContext$2;
.super Lkotlin/jvm/internal/Lambda;
.source "HttpClientEngineBase.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/engine/HttpClientEngineBase;-><init>(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/ktor/client/engine/HttpClientEngineBase;


# direct methods
.method constructor <init>(Lio/ktor/client/engine/HttpClientEngineBase;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lio/ktor/client/engine/HttpClientEngineBase$coroutineContext$2;->this$0:Lio/ktor/client/engine/HttpClientEngineBase;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lio/ktor/client/engine/HttpClientEngineBase$coroutineContext$2;->invoke()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lkotlin/coroutines/CoroutineContext;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 24
    invoke-static {v0, v1, v0}, Lio/ktor/util/CoroutinesUtilsKt;->SilentSupervisor$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    iget-object v1, p0, Lio/ktor/client/engine/HttpClientEngineBase$coroutineContext$2;->this$0:Lio/ktor/client/engine/HttpClientEngineBase;

    invoke-virtual {v1}, Lio/ktor/client/engine/HttpClientEngineBase;->getDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    new-instance v1, Lkotlinx/coroutines/CoroutineName;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lio/ktor/client/engine/HttpClientEngineBase$coroutineContext$2;->this$0:Lio/ktor/client/engine/HttpClientEngineBase;

    invoke-static {v3}, Lio/ktor/client/engine/HttpClientEngineBase;->access$getEngineName$p(Lio/ktor/client/engine/HttpClientEngineBase;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-context"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lkotlinx/coroutines/CoroutineName;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    return-object v0
.end method
