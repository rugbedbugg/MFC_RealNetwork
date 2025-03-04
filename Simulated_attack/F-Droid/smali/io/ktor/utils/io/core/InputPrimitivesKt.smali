.class public abstract Lio/ktor/utils/io/core/InputPrimitivesKt;
.super Ljava/lang/Object;
.source "InputPrimitives.kt"


# direct methods
.method public static final readShort(Lio/ktor/utils/io/core/Input;)S
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Input;->getHeadEndExclusive()I

    move-result v0

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Input;->getHeadPosition()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 59
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Input;->getHeadPosition()I

    move-result v0

    add-int/lit8 v1, v0, 0x2

    .line 60
    invoke-virtual {p0, v1}, Lio/ktor/utils/io/core/Input;->setHeadPosition(I)V

    .line 61
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Input;->getHeadMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 8
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p0

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p0}, Lio/ktor/utils/io/core/InputPrimitivesKt;->readShortFallback(Lio/ktor/utils/io/core/Input;)S

    move-result p0

    :goto_0
    return p0
.end method

.method private static final readShortFallback(Lio/ktor/utils/io/core/Input;)S
    .locals 2

    const/4 v0, 0x2

    .line 69
    invoke-static {p0, v0}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 13
    invoke-static {v1}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readShort(Lio/ktor/utils/io/core/Buffer;)S

    move-result v0

    .line 71
    invoke-static {p0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    return v0

    .line 69
    :cond_0
    invoke-static {v0}, Lio/ktor/utils/io/core/StringsKt;->prematureEndOfStream(I)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method
