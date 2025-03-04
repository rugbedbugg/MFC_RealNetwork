.class public final Lio/ktor/utils/io/internal/ReadWriteBufferState$Reading;
.super Lio/ktor/utils/io/internal/ReadWriteBufferState;
.source "ReadWriteBufferState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/utils/io/internal/ReadWriteBufferState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Reading"
.end annotation


# instance fields
.field private final initial:Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;


# direct methods
.method public constructor <init>(Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;)V
    .locals 3

    const-string v0, "initial"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-object v0, p1, Lio/ktor/utils/io/internal/ReadWriteBufferState;->backingBuffer:Ljava/nio/ByteBuffer;

    iget-object v1, p1, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lio/ktor/utils/io/internal/ReadWriteBufferState;-><init>(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/internal/RingBufferCapacity;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lio/ktor/utils/io/internal/ReadWriteBufferState$Reading;->initial:Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;

    return-void
.end method


# virtual methods
.method public getReadBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lio/ktor/utils/io/internal/ReadWriteBufferState$Reading;->initial:Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;

    .line 73
    invoke-virtual {v0}, Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;->getReadBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public startWriting$ktor_io()Lio/ktor/utils/io/internal/ReadWriteBufferState$ReadingWriting;
    .locals 1

    iget-object v0, p0, Lio/ktor/utils/io/internal/ReadWriteBufferState$Reading;->initial:Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;

    .line 74
    invoke-virtual {v0}, Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;->getReadingWritingState$ktor_io()Lio/ktor/utils/io/internal/ReadWriteBufferState$ReadingWriting;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic startWriting$ktor_io()Lio/ktor/utils/io/internal/ReadWriteBufferState;
    .locals 1

    .line 70
    invoke-virtual {p0}, Lio/ktor/utils/io/internal/ReadWriteBufferState$Reading;->startWriting$ktor_io()Lio/ktor/utils/io/internal/ReadWriteBufferState$ReadingWriting;

    move-result-object v0

    return-object v0
.end method

.method public stopReading$ktor_io()Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleNonEmpty;
    .locals 1

    iget-object v0, p0, Lio/ktor/utils/io/internal/ReadWriteBufferState$Reading;->initial:Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;

    .line 75
    invoke-virtual {v0}, Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;->getIdleState$ktor_io()Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleNonEmpty;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic stopReading$ktor_io()Lio/ktor/utils/io/internal/ReadWriteBufferState;
    .locals 1

    .line 70
    invoke-virtual {p0}, Lio/ktor/utils/io/internal/ReadWriteBufferState$Reading;->stopReading$ktor_io()Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleNonEmpty;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 0
    const-string v0, "Reading"

    return-object v0
.end method
