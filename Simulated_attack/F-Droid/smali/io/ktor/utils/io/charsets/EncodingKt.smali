.class public abstract Lio/ktor/utils/io/charsets/EncodingKt;
.super Ljava/lang/Object;
.source "Encoding.kt"


# direct methods
.method public static final decode(Ljava/nio/charset/CharsetDecoder;Lio/ktor/utils/io/core/Input;I)Ljava/lang/String;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-long v0, p2

    .line 102
    invoke-static {p1}, Lio/ktor/utils/io/charsets/EncodingKt;->sizeEstimate(Lio/ktor/utils/io/core/Input;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 103
    invoke-static {p0, p1, v1, p2}, Lio/ktor/utils/io/charsets/CharsetJVMKt;->decode(Ljava/nio/charset/CharsetDecoder;Lio/ktor/utils/io/core/Input;Ljava/lang/Appendable;I)I

    .line 102
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StringBuilder(capacity).\u2026builderAction).toString()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic decode$default(Ljava/nio/charset/CharsetDecoder;Lio/ktor/utils/io/core/Input;IILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const p2, 0x7fffffff

    .line 101
    :cond_0
    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/charsets/EncodingKt;->decode(Ljava/nio/charset/CharsetDecoder;Lio/ktor/utils/io/core/Input;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final encode(Ljava/nio/charset/CharsetEncoder;Ljava/lang/CharSequence;II)Lio/ktor/utils/io/core/ByteReadPacket;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v0, Lio/ktor/utils/io/core/BytePacketBuilder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lio/ktor/utils/io/core/BytePacketBuilder;-><init>(Lio/ktor/utils/io/pool/ObjectPool;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 64
    :try_start_0
    invoke-static {p0, v0, p1, p2, p3}, Lio/ktor/utils/io/charsets/EncodingKt;->encodeToImpl(Ljava/nio/charset/CharsetEncoder;Lio/ktor/utils/io/core/Output;Ljava/lang/CharSequence;II)I

    .line 19
    invoke-virtual {v0}, Lio/ktor/utils/io/core/BytePacketBuilder;->build()Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 21
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Output;->release()V

    .line 22
    throw p0
.end method

.method public static synthetic encode$default(Ljava/nio/charset/CharsetEncoder;Ljava/lang/CharSequence;IIILjava/lang/Object;)Lio/ktor/utils/io/core/ByteReadPacket;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 62
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    .line 59
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/charsets/EncodingKt;->encode(Ljava/nio/charset/CharsetEncoder;Ljava/lang/CharSequence;II)Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object p0

    return-object p0
.end method

.method private static final encodeCompleteImpl(Ljava/nio/charset/CharsetEncoder;Lio/ktor/utils/io/core/Output;)I
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 488
    invoke-static {p1, v1, v0}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v1

    move v4, v2

    .line 74
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v5

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v6

    sub-int/2addr v5, v6

    .line 163
    invoke-static {p0, v0}, Lio/ktor/utils/io/charsets/CharsetJVMKt;->encodeComplete(Ljava/nio/charset/CharsetEncoder;Lio/ktor/utils/io/core/Buffer;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v3, v2

    goto :goto_1

    :cond_0
    add-int/2addr v3, v1

    .line 74
    :goto_1
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v6

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v7

    sub-int/2addr v6, v7

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    if-lez v3, :cond_1

    .line 492
    invoke-static {p1, v1, v0}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 495
    :cond_1
    invoke-virtual {p1}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    return v4

    :goto_2
    invoke-virtual {p1}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    throw p0
.end method

.method public static final encodeToImpl(Ljava/nio/charset/CharsetEncoder;Lio/ktor/utils/io/core/Output;Ljava/lang/CharSequence;II)I
    .locals 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-lt p3, p4, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 507
    invoke-static {p1, v2, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1

    move v3, v0

    .line 74
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v4

    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v5

    sub-int/2addr v4, v5

    .line 189
    invoke-static {p0, p2, p3, p4, v1}, Lio/ktor/utils/io/charsets/CharsetJVMKt;->encodeImpl(Ljava/nio/charset/CharsetEncoder;Ljava/lang/CharSequence;IILio/ktor/utils/io/core/Buffer;)I

    move-result v5

    if-ltz v5, :cond_4

    add-int/2addr p3, v5

    .line 74
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v6

    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v7

    sub-int/2addr v6, v7

    sub-int/2addr v4, v6

    add-int/2addr v3, v4

    if-lt p3, p4, :cond_1

    move v4, v0

    goto :goto_1

    :cond_1
    if-nez v5, :cond_2

    const/16 v4, 0x8

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    if-lez v4, :cond_3

    .line 514
    invoke-static {p1, v4, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 517
    :cond_3
    invoke-virtual {p1}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    .line 201
    invoke-static {p0, p1}, Lio/ktor/utils/io/charsets/EncodingKt;->encodeCompleteImpl(Ljava/nio/charset/CharsetEncoder;Lio/ktor/utils/io/core/Output;)I

    move-result p0

    add-int/2addr v3, p0

    return v3

    :cond_4
    :try_start_1
    const-string p0, "Check failed."

    .line 190
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 517
    :goto_2
    invoke-virtual {p1}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    throw p0
.end method

.method public static final sizeEstimate(Lio/ktor/utils/io/core/Input;)J
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    instance-of v0, p0, Lio/ktor/utils/io/core/ByteReadPacket;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Input;->getRemaining()J

    move-result-wide v0

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Input;->getRemaining()J

    move-result-wide v0

    const-wide/16 v2, 0x10

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method
