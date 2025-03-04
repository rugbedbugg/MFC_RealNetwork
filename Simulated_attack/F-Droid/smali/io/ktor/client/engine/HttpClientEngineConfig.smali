.class public abstract Lio/ktor/client/engine/HttpClientEngineConfig;
.super Ljava/lang/Object;
.source "HttpClientEngineConfig.kt"


# instance fields
.field private pipelining:Z

.field private proxy:Ljava/net/Proxy;

.field private threadsCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lio/ktor/client/engine/HttpClientEngineConfig;->threadsCount:I

    return-void
.end method


# virtual methods
.method public final getProxy()Ljava/net/Proxy;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/client/engine/HttpClientEngineConfig;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public final setPipelining(Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lio/ktor/client/engine/HttpClientEngineConfig;->pipelining:Z

    return-void
.end method

.method public final setProxy(Ljava/net/Proxy;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lio/ktor/client/engine/HttpClientEngineConfig;->proxy:Ljava/net/Proxy;

    return-void
.end method
