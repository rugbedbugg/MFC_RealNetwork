.class public abstract Lio/ktor/utils/io/core/InputArraysKt;
.super Ljava/lang/Object;
.source "InputArrays.kt"


# direct methods
.method public static final readFully(Lio/ktor/utils/io/core/Input;[BII)V
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 824
    invoke-static {p0, v0}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v2

    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v3

    sub-int/2addr v2, v3

    .line 145
    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 8
    invoke-static {v1, p1, p2, v2}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readFully(Lio/ktor/utils/io/core/Buffer;[BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    sub-int/2addr p3, v2

    add-int/2addr p2, v2

    if-lez p3, :cond_1

    .line 832
    :try_start_1
    invoke-static {p0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadNextHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const/4 v0, 0x0

    goto :goto_1

    .line 838
    :cond_1
    invoke-static {p0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :goto_0
    if-gtz p3, :cond_2

    return-void

    .line 212
    :cond_2
    invoke-static {p3}, Lio/ktor/utils/io/core/StringsKt;->prematureEndOfStream(I)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v0, :cond_3

    .line 838
    invoke-static {p0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_3
    throw p1
.end method
