.class public abstract Lio/ktor/utils/io/ByteChannelKt;
.super Ljava/lang/Object;
.source "ByteChannel.kt"


# direct methods
.method public static final ByteChannel(Z)Lio/ktor/utils/io/ByteChannel;
    .locals 7

    .line 14
    new-instance v6, Lio/ktor/utils/io/ByteBufferChannel;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, v6

    move v1, p0

    invoke-direct/range {v0 .. v5}, Lio/ktor/utils/io/ByteBufferChannel;-><init>(ZLio/ktor/utils/io/pool/ObjectPool;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6
.end method

.method public static synthetic ByteChannel$default(ZILjava/lang/Object;)Lio/ktor/utils/io/ByteChannel;
    .locals 0

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    .line 14
    :cond_0
    invoke-static {p0}, Lio/ktor/utils/io/ByteChannelKt;->ByteChannel(Z)Lio/ktor/utils/io/ByteChannel;

    move-result-object p0

    return-object p0
.end method

.method public static final ByteReadChannel([BII)Lio/ktor/utils/io/ByteReadChannel;
    .locals 1

    const-string v0, "content"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance v0, Lio/ktor/utils/io/ByteBufferChannel;

    invoke-static {p0, p1, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p0

    const-string p1, "wrap(content, offset, length)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0}, Lio/ktor/utils/io/ByteBufferChannel;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method
