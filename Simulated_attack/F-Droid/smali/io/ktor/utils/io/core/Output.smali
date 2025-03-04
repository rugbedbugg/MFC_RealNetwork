.class public abstract Lio/ktor/utils/io/core/Output;
.super Ljava/lang/Object;
.source "Output.kt"

# interfaces
.implements Ljava/lang/Appendable;
.implements Ljava/io/Closeable;


# instance fields
.field private _head:Lio/ktor/utils/io/core/internal/ChunkBuffer;

.field private _tail:Lio/ktor/utils/io/core/internal/ChunkBuffer;

.field private chainedSize:I

.field private final pool:Lio/ktor/utils/io/pool/ObjectPool;

.field private tailEndExclusive:I

.field private tailInitialPosition:I

.field private tailMemory:Ljava/nio/ByteBuffer;

.field private tailPosition:I


# direct methods
.method public constructor <init>(Lio/ktor/utils/io/pool/ObjectPool;)V
    .locals 1

    const-string v0, "pool"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/utils/io/core/Output;->pool:Lio/ktor/utils/io/pool/ObjectPool;

    .line 42
    sget-object p1, Lio/ktor/utils/io/bits/Memory;->Companion:Lio/ktor/utils/io/bits/Memory$Companion;

    invoke-virtual {p1}, Lio/ktor/utils/io/bits/Memory$Companion;->getEmpty-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/utils/io/core/Output;->tailMemory:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private final appendChainImpl(Lio/ktor/utils/io/core/internal/ChunkBuffer;Lio/ktor/utils/io/core/internal/ChunkBuffer;I)V
    .locals 2

    iget-object v0, p0, Lio/ktor/utils/io/core/Output;->_tail:Lio/ktor/utils/io/core/internal/ChunkBuffer;

    if-nez v0, :cond_0

    iput-object p1, p0, Lio/ktor/utils/io/core/Output;->_head:Lio/ktor/utils/io/core/internal/ChunkBuffer;

    const/4 p1, 0x0

    iput p1, p0, Lio/ktor/utils/io/core/Output;->chainedSize:I

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {v0, p1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->setNext(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    iget p1, p0, Lio/ktor/utils/io/core/Output;->tailPosition:I

    .line 121
    invoke-virtual {v0, p1}, Lio/ktor/utils/io/core/Buffer;->commitWrittenUntilIndex(I)Z

    iget v0, p0, Lio/ktor/utils/io/core/Output;->chainedSize:I

    iget v1, p0, Lio/ktor/utils/io/core/Output;->tailInitialPosition:I

    sub-int/2addr p1, v1

    add-int/2addr v0, p1

    iput v0, p0, Lio/ktor/utils/io/core/Output;->chainedSize:I

    :goto_0
    iput-object p2, p0, Lio/ktor/utils/io/core/Output;->_tail:Lio/ktor/utils/io/core/internal/ChunkBuffer;

    iget p1, p0, Lio/ktor/utils/io/core/Output;->chainedSize:I

    add-int/2addr p1, p3

    iput p1, p0, Lio/ktor/utils/io/core/Output;->chainedSize:I

    .line 127
    invoke-virtual {p2}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/utils/io/core/Output;->tailMemory:Ljava/nio/ByteBuffer;

    .line 128
    invoke-virtual {p2}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result p1

    iput p1, p0, Lio/ktor/utils/io/core/Output;->tailPosition:I

    .line 129
    invoke-virtual {p2}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result p1

    iput p1, p0, Lio/ktor/utils/io/core/Output;->tailInitialPosition:I

    .line 130
    invoke-virtual {p2}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result p1

    iput p1, p0, Lio/ktor/utils/io/core/Output;->tailEndExclusive:I

    return-void
.end method

.method private final appendCharFallback(C)V
    .locals 8

    const/4 v0, 0x3

    .line 371
    invoke-virtual {p0, v0}, Lio/ktor/utils/io/core/Output;->prepareWriteHead(I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1

    .line 177
    :try_start_0
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v3

    const/4 v4, 0x1

    const/16 v5, 0x80

    if-ltz p1, :cond_0

    if-ge p1, v5, :cond_0

    int-to-byte p1, p1

    .line 37
    invoke-virtual {v2, v3, p1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move v0, v4

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_1

    :cond_0
    const/16 v6, 0x800

    const/4 v7, 0x2

    if-gt v5, p1, :cond_1

    if-ge p1, v6, :cond_1

    shr-int/lit8 v0, p1, 0x6

    and-int/lit8 v0, v0, 0x1f

    or-int/lit16 v0, v0, 0xc0

    int-to-byte v0, v0

    invoke-virtual {v2, v3, v0}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/2addr v3, v4

    and-int/lit8 p1, p1, 0x3f

    or-int/2addr p1, v5

    int-to-byte p1, p1

    invoke-virtual {v2, v3, p1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move v0, v7

    goto :goto_0

    :cond_1
    const/high16 v4, 0x10000

    if-gt v6, p1, :cond_2

    if-ge p1, v4, :cond_2

    shr-int/lit8 v4, p1, 0xc

    and-int/lit8 v4, v4, 0xf

    or-int/lit16 v4, v4, 0xe0

    int-to-byte v4, v4

    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v3, 0x1

    shr-int/lit8 v6, p1, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v5

    int-to-byte v6, v6

    invoke-virtual {v2, v4, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/2addr v3, v7

    and-int/lit8 p1, p1, 0x3f

    or-int/2addr p1, v5

    int-to-byte p1, p1

    invoke-virtual {v2, v3, p1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_2
    if-gt v4, p1, :cond_4

    const/high16 v4, 0x110000

    if-ge p1, v4, :cond_4

    shr-int/lit8 v4, p1, 0x12

    and-int/lit8 v4, v4, 0x7

    or-int/lit16 v4, v4, 0xf0

    int-to-byte v4, v4

    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v3, 0x1

    shr-int/lit8 v6, p1, 0xc

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v5

    int-to-byte v6, v6

    invoke-virtual {v2, v4, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v3, 0x2

    shr-int/lit8 v6, p1, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v5

    int-to-byte v6, v6

    invoke-virtual {v2, v4, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/2addr v3, v0

    and-int/lit8 p1, p1, 0x3f

    or-int/2addr p1, v5

    int-to-byte p1, p1

    invoke-virtual {v2, v3, p1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    const/4 v0, 0x4

    .line 178
    :goto_0
    invoke-virtual {v1, v0}, Lio/ktor/utils/io/core/Buffer;->commitWritten(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz v0, :cond_3

    .line 378
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    return-void

    :cond_3
    :try_start_1
    const-string p1, "The returned value shouldn\'t be negative"

    .line 374
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 342
    :cond_4
    invoke-static {p1}, Lio/ktor/utils/io/core/internal/UTF8Kt;->malformedCodePoint(I)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 378
    :goto_1
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    throw p1
.end method

.method private final appendNewChunk()Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .locals 2

    iget-object v0, p0, Lio/ktor/utils/io/core/Output;->pool:Lio/ktor/utils/io/pool/ObjectPool;

    .line 105
    invoke-interface {v0}, Lio/ktor/utils/io/pool/ObjectPool;->borrow()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/ktor/utils/io/core/internal/ChunkBuffer;

    const/16 v1, 0x8

    .line 106
    invoke-virtual {v0, v1}, Lio/ktor/utils/io/core/Buffer;->reserveEndGap(I)V

    .line 108
    invoke-virtual {p0, v0}, Lio/ktor/utils/io/core/Output;->appendSingleChunk$ktor_io(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    return-object v0
.end method

.method private final flushChain()V
    .locals 6

    .line 62
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Output;->stealAll$ktor_io()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object v1, v0

    .line 66
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v3

    .line 69
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v4

    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v5

    sub-int/2addr v4, v5

    .line 66
    invoke-virtual {p0, v2, v3, v4}, Lio/ktor/utils/io/core/Output;->flush-62zg_DM(Ljava/nio/ByteBuffer;II)V

    .line 41
    invoke-virtual {v1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getNext()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    iget-object v1, p0, Lio/ktor/utils/io/core/Output;->pool:Lio/ktor/utils/io/pool/ObjectPool;

    .line 69
    invoke-static {v0, v1}, Lio/ktor/utils/io/core/BuffersKt;->releaseAll(Lio/ktor/utils/io/core/internal/ChunkBuffer;Lio/ktor/utils/io/pool/ObjectPool;)V

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lio/ktor/utils/io/core/Output;->pool:Lio/ktor/utils/io/pool/ObjectPool;

    invoke-static {v0, v2}, Lio/ktor/utils/io/core/BuffersKt;->releaseAll(Lio/ktor/utils/io/core/internal/ChunkBuffer;Lio/ktor/utils/io/pool/ObjectPool;)V

    throw v1
.end method


# virtual methods
.method public final afterHeadWrite()V
    .locals 1

    iget-object v0, p0, Lio/ktor/utils/io/core/Output;->_tail:Lio/ktor/utils/io/core/internal/ChunkBuffer;

    if-eqz v0, :cond_0

    .line 366
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v0

    iput v0, p0, Lio/ktor/utils/io/core/Output;->tailPosition:I

    :cond_0
    return-void
.end method

.method public append(C)Lio/ktor/utils/io/core/Output;
    .locals 6

    iget v0, p0, Lio/ktor/utils/io/core/Output;->tailPosition:I

    iget v1, p0, Lio/ktor/utils/io/core/Output;->tailEndExclusive:I

    sub-int/2addr v1, v0

    const/4 v2, 0x3

    if-lt v1, v2, :cond_4

    iget-object v1, p0, Lio/ktor/utils/io/core/Output;->tailMemory:Ljava/nio/ByteBuffer;

    const/16 v3, 0x80

    if-ltz p1, :cond_0

    if-ge p1, v3, :cond_0

    int-to-byte p1, p1

    .line 37
    invoke-virtual {v1, v0, p1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/16 v4, 0x800

    if-gt v3, p1, :cond_1

    if-ge p1, v4, :cond_1

    shr-int/lit8 v2, p1, 0x6

    and-int/lit8 v2, v2, 0x1f

    or-int/lit16 v2, v2, 0xc0

    int-to-byte v2, v2

    invoke-virtual {v1, v0, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v0, 0x1

    and-int/lit8 p1, p1, 0x3f

    or-int/2addr p1, v3

    int-to-byte p1, p1

    invoke-virtual {v1, v2, p1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    const/4 v2, 0x2

    goto :goto_0

    :cond_1
    const/high16 v5, 0x10000

    if-gt v4, p1, :cond_2

    if-ge p1, v5, :cond_2

    shr-int/lit8 v4, p1, 0xc

    and-int/lit8 v4, v4, 0xf

    or-int/lit16 v4, v4, 0xe0

    int-to-byte v4, v4

    invoke-virtual {v1, v0, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v0, 0x1

    shr-int/lit8 v5, p1, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v3

    int-to-byte v5, v5

    invoke-virtual {v1, v4, v5}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v0, 0x2

    and-int/lit8 p1, p1, 0x3f

    or-int/2addr p1, v3

    int-to-byte p1, p1

    invoke-virtual {v1, v4, p1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_2
    if-gt v5, p1, :cond_3

    const/high16 v2, 0x110000

    if-ge p1, v2, :cond_3

    shr-int/lit8 v2, p1, 0x12

    and-int/lit8 v2, v2, 0x7

    or-int/lit16 v2, v2, 0xf0

    int-to-byte v2, v2

    invoke-virtual {v1, v0, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v4, p1, 0xc

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v4, v3

    int-to-byte v4, v4

    invoke-virtual {v1, v2, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v0, 0x2

    shr-int/lit8 v4, p1, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v4, v3

    int-to-byte v4, v4

    invoke-virtual {v1, v2, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v0, 0x3

    and-int/lit8 p1, p1, 0x3f

    or-int/2addr p1, v3

    int-to-byte p1, p1

    invoke-virtual {v1, v2, p1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    const/4 v2, 0x4

    :goto_0
    add-int/2addr v0, v2

    iput v0, p0, Lio/ktor/utils/io/core/Output;->tailPosition:I

    return-object p0

    .line 342
    :cond_3
    invoke-static {p1}, Lio/ktor/utils/io/core/internal/UTF8Kt;->malformedCodePoint(I)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    .line 171
    :cond_4
    invoke-direct {p0, p1}, Lio/ktor/utils/io/core/Output;->appendCharFallback(C)V

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Lio/ktor/utils/io/core/Output;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "null"

    const/4 v1, 0x4

    .line 185
    invoke-virtual {p0, p1, v0, v1}, Lio/ktor/utils/io/core/Output;->append(Ljava/lang/CharSequence;II)Lio/ktor/utils/io/core/Output;

    goto :goto_0

    .line 187
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lio/ktor/utils/io/core/Output;->append(Ljava/lang/CharSequence;II)Lio/ktor/utils/io/core/Output;

    :goto_0
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Lio/ktor/utils/io/core/Output;
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "null"

    .line 194
    invoke-virtual {p0, p1, p2, p3}, Lio/ktor/utils/io/core/Output;->append(Ljava/lang/CharSequence;II)Lio/ktor/utils/io/core/Output;

    move-result-object p1

    return-object p1

    .line 197
    :cond_0
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, p1, p2, p3, v0}, Lio/ktor/utils/io/core/StringsKt;->writeText(Lio/ktor/utils/io/core/Output;Ljava/lang/CharSequence;IILjava/nio/charset/Charset;)V

    return-object p0
.end method

.method public final appendSingleChunk$ktor_io(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V
    .locals 1

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getNext()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, p1, p1, v0}, Lio/ktor/utils/io/core/Output;->appendChainImpl(Lio/ktor/utils/io/core/internal/ChunkBuffer;Lio/ktor/utils/io/core/internal/ChunkBuffer;I)V

    return-void

    .line 94
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "It should be a single buffer chunk."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final close()V
    .locals 1

    .line 154
    :try_start_0
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Output;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Output;->closeDestination()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Output;->closeDestination()V

    throw v0
.end method

.method protected abstract closeDestination()V
.end method

.method public final flush()V
    .locals 0

    .line 58
    invoke-direct {p0}, Lio/ktor/utils/io/core/Output;->flushChain()V

    return-void
.end method

.method protected abstract flush-62zg_DM(Ljava/nio/ByteBuffer;II)V
.end method

.method protected final getPool()Lio/ktor/utils/io/pool/ObjectPool;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/utils/io/core/Output;->pool:Lio/ktor/utils/io/pool/ObjectPool;

    return-object v0
.end method

.method public final getTailEndExclusive$ktor_io()I
    .locals 1

    .line 0
    iget v0, p0, Lio/ktor/utils/io/core/Output;->tailEndExclusive:I

    return v0
.end method

.method public final getTailMemory-SK3TCg8$ktor_io()Ljava/nio/ByteBuffer;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/utils/io/core/Output;->tailMemory:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final getTailPosition$ktor_io()I
    .locals 1

    .line 0
    iget v0, p0, Lio/ktor/utils/io/core/Output;->tailPosition:I

    return v0
.end method

.method protected final get_size()I
    .locals 3

    .line 0
    iget v0, p0, Lio/ktor/utils/io/core/Output;->chainedSize:I

    iget v1, p0, Lio/ktor/utils/io/core/Output;->tailPosition:I

    iget v2, p0, Lio/ktor/utils/io/core/Output;->tailInitialPosition:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public final prepareWriteHead(I)Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .locals 2

    .line 55
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Output;->getTailEndExclusive$ktor_io()I

    move-result v0

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Output;->getTailPosition$ktor_io()I

    move-result v1

    sub-int/2addr v0, v1

    if-lt v0, p1, :cond_0

    iget-object p1, p0, Lio/ktor/utils/io/core/Output;->_tail:Lio/ktor/utils/io/core/internal/ChunkBuffer;

    if-eqz p1, :cond_0

    iget v0, p0, Lio/ktor/utils/io/core/Output;->tailPosition:I

    .line 357
    invoke-virtual {p1, v0}, Lio/ktor/utils/io/core/Buffer;->commitWrittenUntilIndex(I)Z

    return-object p1

    .line 361
    :cond_0
    invoke-direct {p0}, Lio/ktor/utils/io/core/Output;->appendNewChunk()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object p1

    return-object p1
.end method

.method public final release()V
    .locals 0

    .line 350
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Output;->close()V

    return-void
.end method

.method public final setTailPosition$ktor_io(I)V
    .locals 0

    .line 0
    iput p1, p0, Lio/ktor/utils/io/core/Output;->tailPosition:I

    return-void
.end method

.method public final stealAll$ktor_io()Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .locals 4

    iget-object v0, p0, Lio/ktor/utils/io/core/Output;->_head:Lio/ktor/utils/io/core/internal/ChunkBuffer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Lio/ktor/utils/io/core/Output;->_tail:Lio/ktor/utils/io/core/internal/ChunkBuffer;

    if-eqz v2, :cond_1

    iget v3, p0, Lio/ktor/utils/io/core/Output;->tailPosition:I

    .line 80
    invoke-virtual {v2, v3}, Lio/ktor/utils/io/core/Buffer;->commitWrittenUntilIndex(I)Z

    :cond_1
    iput-object v1, p0, Lio/ktor/utils/io/core/Output;->_head:Lio/ktor/utils/io/core/internal/ChunkBuffer;

    iput-object v1, p0, Lio/ktor/utils/io/core/Output;->_tail:Lio/ktor/utils/io/core/internal/ChunkBuffer;

    const/4 v1, 0x0

    iput v1, p0, Lio/ktor/utils/io/core/Output;->tailPosition:I

    iput v1, p0, Lio/ktor/utils/io/core/Output;->tailEndExclusive:I

    iput v1, p0, Lio/ktor/utils/io/core/Output;->tailInitialPosition:I

    iput v1, p0, Lio/ktor/utils/io/core/Output;->chainedSize:I

    .line 88
    sget-object v1, Lio/ktor/utils/io/bits/Memory;->Companion:Lio/ktor/utils/io/bits/Memory$Companion;

    invoke-virtual {v1}, Lio/ktor/utils/io/bits/Memory$Companion;->getEmpty-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lio/ktor/utils/io/core/Output;->tailMemory:Ljava/nio/ByteBuffer;

    return-object v0
.end method
