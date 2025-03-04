.class public final Lio/ktor/client/plugins/websocket/WebSocketCapability;
.super Ljava/lang/Object;
.source "WebSockets.kt"

# interfaces
.implements Lio/ktor/client/engine/HttpClientEngineCapability;


# static fields
.field public static final INSTANCE:Lio/ktor/client/plugins/websocket/WebSocketCapability;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lio/ktor/client/plugins/websocket/WebSocketCapability;

    invoke-direct {v0}, Lio/ktor/client/plugins/websocket/WebSocketCapability;-><init>()V

    sput-object v0, Lio/ktor/client/plugins/websocket/WebSocketCapability;->INSTANCE:Lio/ktor/client/plugins/websocket/WebSocketCapability;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 0
    const-string v0, "WebSocketCapability"

    return-object v0
.end method
