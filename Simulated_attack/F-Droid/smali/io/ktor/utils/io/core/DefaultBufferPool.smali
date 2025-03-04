.class public final Lio/ktor/utils/io/core/DefaultBufferPool;
.super Lio/ktor/utils/io/pool/DefaultPool;
.source "BufferFactory.kt"


# instance fields
.field private final allocator:Lio/ktor/utils/io/bits/Allocator;

.field private final bufferSize:I


# direct methods
.method public constructor <init>(IILio/ktor/utils/io/bits/Allocator;)V
    .locals 1

    const-string v0, "allocator"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-direct {p0, p2}, Lio/ktor/utils/io/pool/DefaultPool;-><init>(I)V

    iput p1, p0, Lio/ktor/utils/io/core/DefaultBufferPool;->bufferSize:I

    iput-object p3, p0, Lio/ktor/utils/io/core/DefaultBufferPool;->allocator:Lio/ktor/utils/io/bits/Allocator;

    return-void
.end method

.method public synthetic constructor <init>(IILio/ktor/utils/io/bits/Allocator;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/16 p1, 0x1000

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    const/16 p2, 0x3e8

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 59
    sget-object p3, Lio/ktor/utils/io/bits/DefaultAllocator;->INSTANCE:Lio/ktor/utils/io/bits/DefaultAllocator;

    .line 56
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/utils/io/core/DefaultBufferPool;-><init>(IILio/ktor/utils/io/bits/Allocator;)V

    return-void
.end method


# virtual methods
.method protected clearInstance(Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .locals 1

    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-super {p0, p1}, Lio/ktor/utils/io/pool/DefaultPool;->clearInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/ktor/utils/io/core/internal/ChunkBuffer;

    .line 88
    invoke-virtual {p1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->unpark$ktor_io()V

    .line 89
    invoke-virtual {p1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->reset()V

    return-object p1
.end method

.method public bridge synthetic clearInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 55
    check-cast p1, Lio/ktor/utils/io/core/internal/ChunkBuffer;

    invoke-virtual {p0, p1}, Lio/ktor/utils/io/core/DefaultBufferPool;->clearInstance(Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object p1

    return-object p1
.end method

.method protected disposeInstance(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V
    .locals 2

    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/ktor/utils/io/core/DefaultBufferPool;->allocator:Lio/ktor/utils/io/bits/Allocator;

    .line 67
    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/ktor/utils/io/bits/Allocator;->free-3GNKZMM(Ljava/nio/ByteBuffer;)V

    .line 68
    invoke-super {p0, p1}, Lio/ktor/utils/io/pool/DefaultPool;->disposeInstance(Ljava/lang/Object;)V

    .line 69
    invoke-virtual {p1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->unlink$ktor_io()V

    return-void
.end method

.method public bridge synthetic disposeInstance(Ljava/lang/Object;)V
    .locals 0

    .line 55
    check-cast p1, Lio/ktor/utils/io/core/internal/ChunkBuffer;

    invoke-virtual {p0, p1}, Lio/ktor/utils/io/core/DefaultBufferPool;->disposeInstance(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    return-void
.end method

.method protected produceInstance()Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .locals 3

    .line 63
    new-instance v0, Lio/ktor/utils/io/core/internal/ChunkBuffer;

    iget-object v1, p0, Lio/ktor/utils/io/core/DefaultBufferPool;->allocator:Lio/ktor/utils/io/bits/Allocator;

    iget v2, p0, Lio/ktor/utils/io/core/DefaultBufferPool;->bufferSize:I

    invoke-interface {v1, v2}, Lio/ktor/utils/io/bits/Allocator;->alloc-gFv-Zug(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, v2}, Lio/ktor/utils/io/core/internal/ChunkBuffer;-><init>(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/core/internal/ChunkBuffer;Lio/ktor/utils/io/pool/ObjectPool;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public bridge synthetic produceInstance()Ljava/lang/Object;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lio/ktor/utils/io/core/DefaultBufferPool;->produceInstance()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected validateInstance(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V
    .locals 4

    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-super {p0, p1}, Lio/ktor/utils/io/pool/DefaultPool;->validateInstance(Ljava/lang/Object;)V

    .line 75
    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    int-to-long v0, v0

    iget v2, p0, Lio/ktor/utils/io/core/DefaultBufferPool;->bufferSize:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    .line 79
    sget-object v0, Lio/ktor/utils/io/core/internal/ChunkBuffer;->Companion:Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;

    invoke-virtual {v0}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;->getEmpty()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    if-eq p1, v0, :cond_4

    .line 80
    sget-object v0, Lio/ktor/utils/io/core/Buffer;->Companion:Lio/ktor/utils/io/core/Buffer$Companion;

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer$Companion;->getEmpty()Lio/ktor/utils/io/core/Buffer;

    move-result-object v0

    if-eq p1, v0, :cond_3

    .line 81
    invoke-virtual {p1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getReferenceCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 82
    invoke-virtual {p1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getNext()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    if-nez v0, :cond_1

    .line 83
    invoke-virtual {p1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getOrigin()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Recycled instance shouldn\'t be a view or another buffer."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 82
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Recycled instance shouldn\'t be a part of a chain."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 81
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unable to clear buffer: it is still in use."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 80
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Empty instance couldn\'t be recycled"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 79
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ChunkBuffer.Empty couldn\'t be recycled"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 76
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Buffer size mismatch. Expected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/ktor/utils/io/core/DefaultBufferPool;->bufferSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", actual: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result p1

    int-to-long v1, p1

    .line 76
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 75
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic validateInstance(Ljava/lang/Object;)V
    .locals 0

    .line 55
    check-cast p1, Lio/ktor/utils/io/core/internal/ChunkBuffer;

    invoke-virtual {p0, p1}, Lio/ktor/utils/io/core/DefaultBufferPool;->validateInstance(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    return-void
.end method
