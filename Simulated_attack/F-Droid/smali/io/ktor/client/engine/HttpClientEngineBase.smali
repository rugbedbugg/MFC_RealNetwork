.class public abstract Lio/ktor/client/engine/HttpClientEngineBase;
.super Ljava/lang/Object;
.source "HttpClientEngineBase.kt"

# interfaces
.implements Lio/ktor/client/engine/HttpClientEngine;


# static fields
.field private static final synthetic closed$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile synthetic closed:I

.field private final coroutineContext$delegate:Lkotlin/Lazy;

.field private final dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field private final engineName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    const-class v0, Lio/ktor/client/engine/HttpClientEngineBase;

    const-string v1, "closed"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/ktor/client/engine/HttpClientEngineBase;->closed$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "engineName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/client/engine/HttpClientEngineBase;->engineName:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lio/ktor/client/engine/HttpClientEngineBase;->closed:I

    .line 21
    invoke-static {}, Lio/ktor/client/engine/HttpClientEngineBase_jvmKt;->ioDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/client/engine/HttpClientEngineBase;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 23
    new-instance p1, Lio/ktor/client/engine/HttpClientEngineBase$coroutineContext$2;

    invoke-direct {p1, p0}, Lio/ktor/client/engine/HttpClientEngineBase$coroutineContext$2;-><init>(Lio/ktor/client/engine/HttpClientEngineBase;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/client/engine/HttpClientEngineBase;->coroutineContext$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getEngineName$p(Lio/ktor/client/engine/HttpClientEngineBase;)Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lio/ktor/client/engine/HttpClientEngineBase;->engineName:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 3

    sget-object v0, Lio/ktor/client/engine/HttpClientEngineBase;->closed$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 28
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 30
    :cond_0
    invoke-virtual {p0}, Lio/ktor/client/engine/HttpClientEngineBase;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/coroutines/CompletableJob;

    if-eqz v1, :cond_1

    check-cast v0, Lkotlinx/coroutines/CompletableJob;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    return-void

    .line 32
    :cond_2
    invoke-interface {v0}, Lkotlinx/coroutines/CompletableJob;->complete()Z

    return-void
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    iget-object v0, p0, Lio/ktor/client/engine/HttpClientEngineBase;->coroutineContext$delegate:Lkotlin/Lazy;

    .line 23
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    return-object v0
.end method

.method public getDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/client/engine/HttpClientEngineBase;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    return-object v0
.end method

.method public getSupportedCapabilities()Ljava/util/Set;
    .locals 1

    .line 18
    invoke-static {p0}, Lio/ktor/client/engine/HttpClientEngine$DefaultImpls;->getSupportedCapabilities(Lio/ktor/client/engine/HttpClientEngine;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public install(Lio/ktor/client/HttpClient;)V
    .locals 0

    .line 18
    invoke-static {p0, p1}, Lio/ktor/client/engine/HttpClientEngine$DefaultImpls;->install(Lio/ktor/client/engine/HttpClientEngine;Lio/ktor/client/HttpClient;)V

    return-void
.end method
