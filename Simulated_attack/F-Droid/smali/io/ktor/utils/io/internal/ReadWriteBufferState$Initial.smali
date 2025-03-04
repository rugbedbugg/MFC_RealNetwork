.class public final Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;
.super Lio/ktor/utils/io/internal/ReadWriteBufferState;
.source "ReadWriteBufferState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/utils/io/internal/ReadWriteBufferState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Initial"
.end annotation


# instance fields
.field private final idleState:Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleNonEmpty;

.field private final readBuffer:Ljava/nio/ByteBuffer;

.field private final readingState:Lio/ktor/utils/io/internal/ReadWriteBufferState$Reading;

.field private final readingWritingState:Lio/ktor/utils/io/internal/ReadWriteBufferState$ReadingWriting;

.field private final writeBuffer:Ljava/nio/ByteBuffer;

.field private final writingState:Lio/ktor/utils/io/internal/ReadWriteBufferState$Writing;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .locals 2

    const-string v0, "backingBuffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    new-instance v0, Lio/ktor/utils/io/internal/RingBufferCapacity;

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    sub-int/2addr v1, p2

    invoke-direct {v0, v1}, Lio/ktor/utils/io/internal/RingBufferCapacity;-><init>(I)V

    const/4 p2, 0x0

    invoke-direct {p0, p1, v0, p2}, Lio/ktor/utils/io/internal/ReadWriteBufferState;-><init>(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/internal/RingBufferCapacity;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 38
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p2

    const-string v0, "Failed requirement."

    if-nez p2, :cond_1

    .line 39
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result p2

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    if-ne p2, v1, :cond_0

    .line 43
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p2

    const-string v0, "backingBuffer.duplicate()"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;->writeBuffer:Ljava/nio/ByteBuffer;

    .line 46
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;->readBuffer:Ljava/nio/ByteBuffer;

    .line 49
    new-instance p1, Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleNonEmpty;

    invoke-direct {p1, p0}, Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleNonEmpty;-><init>(Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;)V

    iput-object p1, p0, Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;->idleState:Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleNonEmpty;

    .line 50
    new-instance p1, Lio/ktor/utils/io/internal/ReadWriteBufferState$Reading;

    invoke-direct {p1, p0}, Lio/ktor/utils/io/internal/ReadWriteBufferState$Reading;-><init>(Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;)V

    iput-object p1, p0, Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;->readingState:Lio/ktor/utils/io/internal/ReadWriteBufferState$Reading;

    .line 51
    new-instance p1, Lio/ktor/utils/io/internal/ReadWriteBufferState$Writing;

    invoke-direct {p1, p0}, Lio/ktor/utils/io/internal/ReadWriteBufferState$Writing;-><init>(Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;)V

    iput-object p1, p0, Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;->writingState:Lio/ktor/utils/io/internal/ReadWriteBufferState$Writing;

    .line 52
    new-instance p1, Lio/ktor/utils/io/internal/ReadWriteBufferState$ReadingWriting;

    invoke-direct {p1, p0}, Lio/ktor/utils/io/internal/ReadWriteBufferState$ReadingWriting;-><init>(Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;)V

    iput-object p1, p0, Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;->readingWritingState:Lio/ktor/utils/io/internal/ReadWriteBufferState$ReadingWriting;

    return-void

    .line 39
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 38
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Ljava/nio/ByteBuffer;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/16 p2, 0x8

    .line 33
    :cond_0
    invoke-direct {p0, p1, p2}, Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;-><init>(Ljava/nio/ByteBuffer;I)V

    return-void
.end method


# virtual methods
.method public final getIdleState$ktor_io()Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleNonEmpty;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;->idleState:Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleNonEmpty;

    return-object v0
.end method

.method public getReadBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;->readBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final getReadingState$ktor_io()Lio/ktor/utils/io/internal/ReadWriteBufferState$Reading;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;->readingState:Lio/ktor/utils/io/internal/ReadWriteBufferState$Reading;

    return-object v0
.end method

.method public final getReadingWritingState$ktor_io()Lio/ktor/utils/io/internal/ReadWriteBufferState$ReadingWriting;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;->readingWritingState:Lio/ktor/utils/io/internal/ReadWriteBufferState$ReadingWriting;

    return-object v0
.end method

.method public getWriteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;->writeBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final getWritingState$ktor_io()Lio/ktor/utils/io/internal/ReadWriteBufferState$Writing;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;->writingState:Lio/ktor/utils/io/internal/ReadWriteBufferState$Writing;

    return-object v0
.end method

.method public startReading$ktor_io()Lio/ktor/utils/io/internal/ReadWriteBufferState$Reading;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;->readingState:Lio/ktor/utils/io/internal/ReadWriteBufferState$Reading;

    return-object v0
.end method

.method public bridge synthetic startReading$ktor_io()Lio/ktor/utils/io/internal/ReadWriteBufferState;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;->startReading$ktor_io()Lio/ktor/utils/io/internal/ReadWriteBufferState$Reading;

    move-result-object v0

    return-object v0
.end method

.method public startWriting$ktor_io()Lio/ktor/utils/io/internal/ReadWriteBufferState$Writing;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;->writingState:Lio/ktor/utils/io/internal/ReadWriteBufferState$Writing;

    return-object v0
.end method

.method public bridge synthetic startWriting$ktor_io()Lio/ktor/utils/io/internal/ReadWriteBufferState;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;->startWriting$ktor_io()Lio/ktor/utils/io/internal/ReadWriteBufferState$Writing;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 0
    const-string v0, "Initial"

    return-object v0
.end method
