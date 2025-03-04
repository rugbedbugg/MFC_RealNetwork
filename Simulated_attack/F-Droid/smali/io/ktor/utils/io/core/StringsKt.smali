.class public abstract Lio/ktor/utils/io/core/StringsKt;
.super Ljava/lang/Object;
.source "Strings.kt"


# direct methods
.method public static final prematureEndOfStream(I)Ljava/lang/Void;
    .locals 3

    .line 474
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Premature end of stream: expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " bytes"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final readBytes(Lio/ktor/utils/io/core/ByteReadPacket;I)[B
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 172
    new-array v0, p1, [B

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Lio/ktor/utils/io/core/InputArraysKt;->readFully(Lio/ktor/utils/io/core/Input;[BII)V

    goto :goto_0

    .line 173
    :cond_0
    sget-object v0, Lio/ktor/utils/io/core/internal/UnsafeKt;->EmptyByteArray:[B

    :goto_0
    return-object v0
.end method

.method public static synthetic readBytes$default(Lio/ktor/utils/io/core/ByteReadPacket;IILjava/lang/Object;)[B
    .locals 2

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_1

    .line 170
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Input;->getRemaining()J

    move-result-wide p1

    const-wide/32 v0, 0x7fffffff

    cmp-long p3, p1, v0

    if-gtz p3, :cond_0

    long-to-int p1, p1

    goto :goto_0

    .line 98
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unable to convert to a ByteArray: packet is too big"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 169
    :cond_1
    :goto_0
    invoke-static {p0, p1}, Lio/ktor/utils/io/core/StringsKt;->readBytes(Lio/ktor/utils/io/core/ByteReadPacket;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static final readText(Lio/ktor/utils/io/core/Input;Ljava/nio/charset/Charset;I)Ljava/lang/String;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "charset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object p1

    const-string v0, "charset.newDecoder()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0, p2}, Lio/ktor/utils/io/charsets/EncodingKt;->decode(Ljava/nio/charset/CharsetDecoder;Lio/ktor/utils/io/core/Input;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic readText$default(Lio/ktor/utils/io/core/Input;Ljava/nio/charset/Charset;IILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 245
    sget-object p1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const p2, 0x7fffffff

    :cond_1
    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/core/StringsKt;->readText(Lio/ktor/utils/io/core/Input;Ljava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final readTextExactBytes(Lio/ktor/utils/io/core/Input;ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "charset"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 297
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object p2

    const-string v0, "charset.newDecoder()"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p0, p1}, Lio/ktor/utils/io/charsets/CharsetJVMKt;->decodeExactBytes(Ljava/nio/charset/CharsetDecoder;Lio/ktor/utils/io/core/Input;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic readTextExactBytes$default(Lio/ktor/utils/io/core/Input;ILjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 296
    sget-object p2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    :cond_0
    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/core/StringsKt;->readTextExactBytes(Lio/ktor/utils/io/core/Input;ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final writeText(Lio/ktor/utils/io/core/Output;Ljava/lang/CharSequence;IILjava/nio/charset/Charset;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "charset"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    if-ne p4, v0, :cond_0

    .line 311
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/StringsKt;->writeTextUtf8(Lio/ktor/utils/io/core/Output;Ljava/lang/CharSequence;II)V

    return-void

    .line 314
    :cond_0
    invoke-virtual {p4}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object p4

    const-string v0, "charset.newEncoder()"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p4, p0, p1, p2, p3}, Lio/ktor/utils/io/charsets/EncodingKt;->encodeToImpl(Ljava/nio/charset/CharsetEncoder;Lio/ktor/utils/io/core/Output;Ljava/lang/CharSequence;II)I

    return-void
.end method

.method public static synthetic writeText$default(Lio/ktor/utils/io/core/Output;Ljava/lang/CharSequence;IILjava/nio/charset/Charset;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    .line 307
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    .line 308
    sget-object p4, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 304
    :cond_2
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/core/StringsKt;->writeText(Lio/ktor/utils/io/core/Output;Ljava/lang/CharSequence;IILjava/nio/charset/Charset;)V

    return-void
.end method

.method private static final writeTextUtf8(Lio/ktor/utils/io/core/Output;Ljava/lang/CharSequence;II)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 507
    invoke-static {p0, v1, v0}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    .line 338
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 339
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v6

    .line 340
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v7

    move-object v3, p1

    move v4, p2

    move v5, p3

    .line 342
    invoke-static/range {v2 .. v7}, Lio/ktor/utils/io/core/internal/UTF8Kt;->encodeUTF8-lBXzO7A(Ljava/nio/ByteBuffer;Ljava/lang/CharSequence;IIII)I

    move-result v2

    invoke-static {v2}, Lio/ktor/utils/io/core/internal/EncodeResult;->component1-Mh2AYeg(I)S

    move-result v3

    invoke-static {v2}, Lio/ktor/utils/io/core/internal/EncodeResult;->component2-Mh2AYeg(I)S

    move-result v2

    const v4, 0xffff

    and-int/2addr v3, v4

    add-int/2addr p2, v3

    and-int/2addr v2, v4

    .line 345
    invoke-virtual {v0, v2}, Lio/ktor/utils/io/core/Buffer;->commitWritten(I)V

    if-nez v3, :cond_0

    if-ge p2, p3, :cond_0

    const/16 v2, 0x8

    goto :goto_1

    :cond_0
    if-ge p2, p3, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-lez v2, :cond_2

    .line 514
    invoke-static {p0, v2, v0}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 517
    :cond_2
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    return-void

    :goto_2
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    throw p1
.end method
