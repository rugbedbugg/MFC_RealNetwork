.class public final Lio/ktor/utils/io/internal/WriteSessionImpl;
.super Ljava/lang/Object;
.source "WriteSessionImpl.kt"


# instance fields
.field private byteBuffer:Ljava/nio/ByteBuffer;

.field private current:Lio/ktor/utils/io/ByteBufferChannel;

.field private ringBufferCapacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

.field private view:Lio/ktor/utils/io/core/internal/ChunkBuffer;


# direct methods
.method public constructor <init>(Lio/ktor/utils/io/ByteBufferChannel;)V
    .locals 1

    const-string v0, "channel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-virtual {p1}, Lio/ktor/utils/io/ByteBufferChannel;->resolveChannelInstance$ktor_io()Lio/ktor/utils/io/ByteBufferChannel;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/utils/io/internal/WriteSessionImpl;->current:Lio/ktor/utils/io/ByteBufferChannel;

    .line 12
    sget-object p1, Lio/ktor/utils/io/core/internal/ChunkBuffer;->Companion:Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;

    invoke-virtual {p1}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;->getEmpty()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/utils/io/internal/WriteSessionImpl;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 13
    invoke-virtual {p1}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;->getEmpty()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/utils/io/internal/WriteSessionImpl;->view:Lio/ktor/utils/io/core/internal/ChunkBuffer;

    iget-object p1, p0, Lio/ktor/utils/io/internal/WriteSessionImpl;->current:Lio/ktor/utils/io/ByteBufferChannel;

    .line 14
    invoke-virtual {p1}, Lio/ktor/utils/io/ByteBufferChannel;->currentState$ktor_io()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object p1

    iget-object p1, p1, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    iput-object p1, p0, Lio/ktor/utils/io/internal/WriteSessionImpl;->ringBufferCapacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    return-void
.end method
