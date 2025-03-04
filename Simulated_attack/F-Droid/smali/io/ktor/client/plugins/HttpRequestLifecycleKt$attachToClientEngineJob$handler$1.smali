.class final Lio/ktor/client/plugins/HttpRequestLifecycleKt$attachToClientEngineJob$handler$1;
.super Lkotlin/jvm/internal/Lambda;
.source "HttpRequestLifecycle.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/plugins/HttpRequestLifecycleKt;->attachToClientEngineJob(Lkotlinx/coroutines/CompletableJob;Lkotlinx/coroutines/Job;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $requestJob:Lkotlinx/coroutines/CompletableJob;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/CompletableJob;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lio/ktor/client/plugins/HttpRequestLifecycleKt$attachToClientEngineJob$handler$1;->$requestJob:Lkotlinx/coroutines/CompletableJob;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 57
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lio/ktor/client/plugins/HttpRequestLifecycleKt$attachToClientEngineJob$handler$1;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 59
    invoke-static {}, Lio/ktor/client/plugins/HttpRequestLifecycleKt;->access$getLOGGER$p()Lorg/slf4j/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cancelling request because engine Job failed with error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    iget-object v0, p0, Lio/ktor/client/plugins/HttpRequestLifecycleKt$attachToClientEngineJob$handler$1;->$requestJob:Lkotlinx/coroutines/CompletableJob;

    const-string v1, "Engine failed"

    .line 60
    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/JobKt;->cancel(Lkotlinx/coroutines/Job;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 62
    :cond_0
    invoke-static {}, Lio/ktor/client/plugins/HttpRequestLifecycleKt;->access$getLOGGER$p()Lorg/slf4j/Logger;

    move-result-object p1

    const-string v0, "Cancelling request because engine Job completed"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    iget-object p1, p0, Lio/ktor/client/plugins/HttpRequestLifecycleKt$attachToClientEngineJob$handler$1;->$requestJob:Lkotlinx/coroutines/CompletableJob;

    .line 63
    invoke-interface {p1}, Lkotlinx/coroutines/CompletableJob;->complete()Z

    :goto_0
    return-void
.end method
