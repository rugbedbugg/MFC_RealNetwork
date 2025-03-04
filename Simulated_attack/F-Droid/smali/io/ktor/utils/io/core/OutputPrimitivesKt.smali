.class public abstract Lio/ktor/utils/io/core/OutputPrimitivesKt;
.super Ljava/lang/Object;
.source "OutputPrimitives.kt"


# direct methods
.method public static final writeShort(Lio/ktor/utils/io/core/Output;S)V
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Output;->getTailPosition$ktor_io()I

    move-result v0

    .line 81
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Output;->getTailEndExclusive$ktor_io()I

    move-result v1

    sub-int/2addr v1, v0

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    add-int/lit8 v1, v0, 0x2

    .line 82
    invoke-virtual {p0, v1}, Lio/ktor/utils/io/core/Output;->setTailPosition$ktor_io(I)V

    .line 83
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Output;->getTailMemory-SK3TCg8$ktor_io()Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 65
    invoke-virtual {p0, v0, p1}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p0, p1}, Lio/ktor/utils/io/core/OutputPrimitivesKt;->writeShortFallback(Lio/ktor/utils/io/core/Output;S)V

    :goto_0
    return-void
.end method

.method private static final writeShortFallback(Lio/ktor/utils/io/core/Output;S)V
    .locals 1

    const/4 v0, 0x2

    .line 95
    invoke-virtual {p0, v0}, Lio/ktor/utils/io/core/Output;->prepareWriteHead(I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    .line 14
    invoke-static {v0, p1}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->writeShort(Lio/ktor/utils/io/core/Buffer;S)V

    .line 97
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    return-void
.end method
