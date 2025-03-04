.class public abstract Lio/ktor/client/engine/okhttp/OkHttpWebsocketSessionKt;
.super Ljava/lang/Object;
.source "OkHttpWebsocketSession.kt"


# static fields
.field private static final DEFAULT_CLOSE_REASON_ERROR:Lio/ktor/websocket/CloseReason;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 177
    new-instance v0, Lio/ktor/websocket/CloseReason;

    sget-object v1, Lio/ktor/websocket/CloseReason$Codes;->INTERNAL_ERROR:Lio/ktor/websocket/CloseReason$Codes;

    const-string v2, "Client failure"

    invoke-direct {v0, v1, v2}, Lio/ktor/websocket/CloseReason;-><init>(Lio/ktor/websocket/CloseReason$Codes;Ljava/lang/String;)V

    sput-object v0, Lio/ktor/client/engine/okhttp/OkHttpWebsocketSessionKt;->DEFAULT_CLOSE_REASON_ERROR:Lio/ktor/websocket/CloseReason;

    return-void
.end method

.method public static final synthetic access$getDEFAULT_CLOSE_REASON_ERROR$p()Lio/ktor/websocket/CloseReason;
    .locals 1

    .line 0
    sget-object v0, Lio/ktor/client/engine/okhttp/OkHttpWebsocketSessionKt;->DEFAULT_CLOSE_REASON_ERROR:Lio/ktor/websocket/CloseReason;

    return-object v0
.end method

.method public static final synthetic access$isReserved(Lio/ktor/websocket/CloseReason;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lio/ktor/client/engine/okhttp/OkHttpWebsocketSessionKt;->isReserved(Lio/ktor/websocket/CloseReason;)Z

    move-result p0

    return p0
.end method

.method private static final isReserved(Lio/ktor/websocket/CloseReason;)Z
    .locals 1

    .line 172
    sget-object v0, Lio/ktor/websocket/CloseReason$Codes;->Companion:Lio/ktor/websocket/CloseReason$Codes$Companion;

    invoke-virtual {p0}, Lio/ktor/websocket/CloseReason;->getCode()S

    move-result p0

    invoke-virtual {v0, p0}, Lio/ktor/websocket/CloseReason$Codes$Companion;->byCode(S)Lio/ktor/websocket/CloseReason$Codes;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 173
    sget-object v0, Lio/ktor/websocket/CloseReason$Codes;->CLOSED_ABNORMALLY:Lio/ktor/websocket/CloseReason$Codes;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
