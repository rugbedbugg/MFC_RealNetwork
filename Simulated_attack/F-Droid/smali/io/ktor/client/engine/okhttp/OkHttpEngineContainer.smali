.class public final Lio/ktor/client/engine/okhttp/OkHttpEngineContainer;
.super Ljava/lang/Object;
.source "OkHttp.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0016R\u001e\u0010\u0005\u001a\u0006\u0012\u0002\u0008\u00030\u00048\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0006\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "Lio/ktor/client/engine/okhttp/OkHttpEngineContainer;",
        "",
        "",
        "toString",
        "Lio/ktor/client/engine/HttpClientEngineFactory;",
        "factory",
        "Lio/ktor/client/engine/HttpClientEngineFactory;",
        "getFactory",
        "()Lio/ktor/client/engine/HttpClientEngineFactory;",
        "<init>",
        "()V",
        "ktor-client-okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private final factory:Lio/ktor/client/engine/HttpClientEngineFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    sget-object v0, Lio/ktor/client/engine/okhttp/OkHttp;->INSTANCE:Lio/ktor/client/engine/okhttp/OkHttp;

    iput-object v0, p0, Lio/ktor/client/engine/okhttp/OkHttpEngineContainer;->factory:Lio/ktor/client/engine/HttpClientEngineFactory;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 0
    const-string v0, "OkHttp"

    return-object v0
.end method
