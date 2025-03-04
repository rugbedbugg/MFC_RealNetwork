.class public final Lio/ktor/utils/io/internal/ReadWriteBufferState$ReadingWriting;
.super Lio/ktor/utils/io/internal/ReadWriteBufferState;
.source "ReadWriteBufferState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/utils/io/internal/ReadWriteBufferState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReadingWriting"
.end annotation


# instance fields
.field private final initial:Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;


# direct methods
.method public constructor <init>(Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;)V
    .locals 3

    const-string v0, "initial"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    iget-object v0, p1, Lio/ktor/utils/io/internal/ReadWriteBufferState;->backingBuffer:Ljava/nio/ByteBuffer;

    iget-object v1, p1, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lio/ktor/utils/io/internal/ReadWriteBufferState;-><init>(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/internal/RingBufferCapacity;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lio/ktor/utils/io/internal/ReadWriteBufferState$ReadingWriting;->initial:Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;

    return-void
.end method


# virtual methods
.method public getReadBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lio/ktor/utils/io/internal/ReadWriteBufferState$ReadingWriting;->initial:Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;

    .line 91
    invoke-virtual {v0}, Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;->getReadBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getWriteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lio/ktor/utils/io/internal/ReadWriteBufferState$ReadingWriting;->initial:Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;

    .line 92
    invoke-virtual {v0}, Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;->getWriteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public stopReading$ktor_io()Lio/ktor/utils/io/internal/ReadWriteBufferState$Writing;
    .locals 1

    iget-object v0, p0, Lio/ktor/utils/io/internal/ReadWriteBufferState$ReadingWriting;->initial:Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;

    .line 93
    invoke-virtual {v0}, Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;->getWritingState$ktor_io()Lio/ktor/utils/io/internal/ReadWriteBufferState$Writing;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic stopReading$ktor_io()Lio/ktor/utils/io/internal/ReadWriteBufferState;
    .locals 1

    .line 88
    invoke-virtual {p0}, Lio/ktor/utils/io/internal/ReadWriteBufferState$ReadingWriting;->stopReading$ktor_io()Lio/ktor/utils/io/internal/ReadWriteBufferState$Writing;

    move-result-object v0

    return-object v0
.end method

.method public stopWriting$ktor_io()Lio/ktor/utils/io/internal/ReadWriteBufferState$Reading;
    .locals 1

    iget-object v0, p0, Lio/ktor/utils/io/internal/ReadWriteBufferState$ReadingWriting;->initial:Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;

    .line 94
    invoke-virtual {v0}, Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;->getReadingState$ktor_io()Lio/ktor/utils/io/internal/ReadWriteBufferState$Reading;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic stopWriting$ktor_io()Lio/ktor/utils/io/internal/ReadWriteBufferState;
    .locals 1

    .line 88
    invoke-virtual {p0}, Lio/ktor/utils/io/internal/ReadWriteBufferState$ReadingWriting;->stopWriting$ktor_io()Lio/ktor/utils/io/internal/ReadWriteBufferState$Reading;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 0
    const-string v0, "Reading+Writing"

    return-object v0
.end method
