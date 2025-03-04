.class public final Lio/ktor/websocket/Frame$Close;
.super Lio/ktor/websocket/Frame;
.source "Frame.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/websocket/Frame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Close"
.end annotation


# direct methods
.method public constructor <init>(Lio/ktor/utils/io/core/ByteReadPacket;)V
    .locals 3

    const-string v0, "packet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 93
    invoke-static {p1, v2, v0, v1}, Lio/ktor/utils/io/core/StringsKt;->readBytes$default(Lio/ktor/utils/io/core/ByteReadPacket;IILjava/lang/Object;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lio/ktor/websocket/Frame$Close;-><init>([B)V

    return-void
.end method

.method public constructor <init>(Lio/ktor/websocket/CloseReason;)V
    .locals 8

    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v0, Lio/ktor/utils/io/core/BytePacketBuilder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lio/ktor/utils/io/core/BytePacketBuilder;-><init>(Lio/ktor/utils/io/pool/ObjectPool;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 88
    :try_start_0
    invoke-virtual {p1}, Lio/ktor/websocket/CloseReason;->getCode()S

    move-result v1

    invoke-static {v0, v1}, Lio/ktor/utils/io/core/OutputPrimitivesKt;->writeShort(Lio/ktor/utils/io/core/Output;S)V

    .line 89
    invoke-virtual {p1}, Lio/ktor/websocket/CloseReason;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v7}, Lio/ktor/utils/io/core/StringsKt;->writeText$default(Lio/ktor/utils/io/core/Output;Ljava/lang/CharSequence;IILjava/nio/charset/Charset;ILjava/lang/Object;)V

    .line 19
    invoke-virtual {v0}, Lio/ktor/utils/io/core/BytePacketBuilder;->build()Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    invoke-direct {p0, p1}, Lio/ktor/websocket/Frame$Close;-><init>(Lio/ktor/utils/io/core/ByteReadPacket;)V

    return-void

    :catchall_0
    move-exception p1

    .line 21
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Output;->release()V

    .line 22
    throw p1
.end method

.method public constructor <init>([B)V
    .locals 10

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 84
    sget-object v3, Lio/ktor/websocket/FrameType;->CLOSE:Lio/ktor/websocket/FrameType;

    sget-object v5, Lio/ktor/websocket/NonDisposableHandle;->INSTANCE:Lio/ktor/websocket/NonDisposableHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v9}, Lio/ktor/websocket/Frame;-><init>(ZLio/ktor/websocket/FrameType;[BLkotlinx/coroutines/DisposableHandle;ZZZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
