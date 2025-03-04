.class public abstract Lio/ktor/utils/io/core/BufferAppendKt;
.super Ljava/lang/Object;
.source "BufferAppend.kt"


# direct methods
.method public static final writeBufferAppend(Lio/ktor/utils/io/core/Buffer;Lio/ktor/utils/io/core/Buffer;I)I
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v0

    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v1

    sub-int/2addr v0, v1

    .line 10
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 74
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v0

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v1

    sub-int/2addr v0, v1

    if-gt v0, p2, :cond_0

    .line 13
    invoke-static {p0, p2}, Lio/ktor/utils/io/core/BufferAppendKt;->writeBufferAppendUnreserve(Lio/ktor/utils/io/core/Buffer;I)V

    .line 394
    :cond_0
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v1

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    .line 376
    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v3

    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    .line 18
    invoke-static {v2, v0, v3, p2, v1}, Lio/ktor/utils/io/bits/Memory;->copyTo-JT6ljtQ(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III)V

    .line 377
    invoke-virtual {p1, p2}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    .line 395
    invoke-virtual {p0, p2}, Lio/ktor/utils/io/core/Buffer;->commitWritten(I)V

    return p2
.end method

.method private static final writeBufferAppendUnreserve(Lio/ktor/utils/io/core/Buffer;I)V
    .locals 3

    .line 74
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v0

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v1

    sub-int/2addr v0, v1

    .line 59
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getCapacity()I

    move-result v1

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    if-lt v0, p1, :cond_1

    .line 52
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v0

    add-int/2addr v0, p1

    .line 53
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result p1

    sub-int/2addr v0, p1

    if-lez v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->releaseEndGap$ktor_io()V

    :cond_0
    return-void

    .line 50
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t append buffer: not enough free space at the end"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
