.class public final Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
.super Ljava/lang/Object;
.source "JvmJsonStreams.kt"

# interfaces
.implements Lkotlinx/serialization/json/internal/JsonWriter;


# instance fields
.field private final buffer:[B

.field private charArray:[C

.field private indexInBuffer:I

.field private final stream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    const-string v0, "stream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->stream:Ljava/io/OutputStream;

    .line 8
    sget-object p1, Lkotlinx/serialization/json/internal/ByteArrayPool;->INSTANCE:Lkotlinx/serialization/json/internal/ByteArrayPool;

    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/ByteArrayPool;->take()[B

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    .line 9
    sget-object p1, Lkotlinx/serialization/json/internal/CharArrayPool;->INSTANCE:Lkotlinx/serialization/json/internal/CharArrayPool;

    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/CharArrayPool;->take()[C

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->charArray:[C

    return-void
.end method

.method private final appendStringSlowPath(ILjava/lang/String;)V
    .locals 6

    add-int/lit8 v0, p1, -0x1

    .line 52
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    const/4 v2, 0x1

    if-ge v0, v1, :cond_3

    const/4 v3, 0x2

    .line 57
    invoke-direct {p0, p1, v3}, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->ensureTotalCapacity(II)I

    move-result p1

    .line 58
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 60
    invoke-static {}, Lkotlinx/serialization/json/internal/StringOpsKt;->getESCAPE_MARKERS()[B

    move-result-object v4

    array-length v4, v4

    if-ge v3, v4, :cond_2

    .line 67
    invoke-static {}, Lkotlinx/serialization/json/internal/StringOpsKt;->getESCAPE_MARKERS()[B

    move-result-object v4

    aget-byte v4, v4, v3

    if-nez v4, :cond_0

    iget-object v2, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->charArray:[C

    add-int/lit8 v4, p1, 0x1

    int-to-char v3, v3

    .line 69
    aput-char v3, v2, p1

    :goto_1
    move p1, v4

    goto :goto_2

    :cond_0
    if-ne v4, v2, :cond_1

    .line 72
    invoke-static {}, Lkotlinx/serialization/json/internal/StringOpsKt;->getESCAPE_STRINGS()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 73
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {p0, p1, v3}, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->ensureTotalCapacity(II)I

    move-result p1

    iget-object v3, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->charArray:[C

    const/4 v4, 0x0

    .line 74
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v4, v5, v3, p1}, Ljava/lang/String;->getChars(II[CI)V

    .line 75
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr p1, v2

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->charArray:[C

    const/16 v3, 0x5c

    .line 78
    aput-char v3, v2, p1

    add-int/lit8 v3, p1, 0x1

    int-to-char v4, v4

    .line 79
    aput-char v4, v2, v3

    add-int/lit8 p1, p1, 0x2

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->charArray:[C

    add-int/lit8 v4, p1, 0x1

    int-to-char v3, v3

    .line 84
    aput-char v3, v2, p1

    goto :goto_1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_3
    invoke-direct {p0, p1, v2}, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->ensureTotalCapacity(II)I

    iget-object p2, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->charArray:[C

    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0x22

    .line 88
    aput-char v1, p2, p1

    .line 89
    invoke-direct {p0, p2, v0}, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->writeUtf8([CI)V

    .line 90
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->flush()V

    return-void
.end method

.method private final ensureTotalCapacity(II)I
    .locals 2

    add-int/2addr p2, p1

    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->charArray:[C

    .line 95
    array-length v1, v0

    if-gt v1, p2, :cond_0

    mul-int/lit8 v1, p1, 0x2

    .line 96
    invoke-static {p2, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p2

    invoke-static {v0, p2}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object p2

    const-string v0, "copyOf(this, newSize)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->charArray:[C

    :cond_0
    return p1
.end method

.method private final flush()V
    .locals 4

    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->stream:Ljava/io/OutputStream;

    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    iget v2, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    const/4 v3, 0x0

    .line 108
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    iput v3, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    return-void
.end method

.method private final writeUtf8([CI)V
    .locals 11

    if-ltz p2, :cond_e

    .line 137
    array-length v0, p1

    if-gt p2, v0, :cond_d

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    if-ge v1, p2, :cond_c

    .line 142
    aget-char v2, p1, v1

    const/16 v3, 0x80

    const/4 v4, 0x1

    if-ge v2, v3, :cond_2

    iget-object v5, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    .line 129
    array-length v5, v5

    iget v6, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    sub-int/2addr v5, v6

    if-ge v5, v4, :cond_1

    .line 117
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->flush()V

    :cond_1
    iget-object v4, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    iget v5, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    int-to-byte v2, v2

    .line 124
    aput-byte v2, v4, v5

    add-int/lit8 v1, v1, 0x1

    .line 129
    array-length v2, v4

    sub-int/2addr v2, v6

    add-int/2addr v2, v1

    .line 150
    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_0

    .line 155
    aget-char v4, p1, v1

    if-ge v4, v3, :cond_0

    iget-object v5, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    iget v6, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    int-to-byte v4, v4

    .line 124
    aput-byte v4, v5, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/16 v5, 0x800

    if-ge v2, v5, :cond_4

    iget-object v4, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    .line 129
    array-length v4, v4

    iget v5, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    sub-int/2addr v4, v5

    const/4 v5, 0x2

    if-ge v4, v5, :cond_3

    .line 117
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->flush()V

    :cond_3
    shr-int/lit8 v4, v2, 0x6

    or-int/lit16 v4, v4, 0xc0

    iget-object v6, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    iget v7, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    add-int/lit8 v8, v7, 0x1

    int-to-byte v4, v4

    .line 124
    aput-byte v4, v6, v7

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    add-int/2addr v7, v5

    iput v7, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    int-to-byte v2, v2

    .line 124
    aput-byte v2, v6, v8

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const v5, 0xd800

    const/16 v6, 0x3f

    if-lt v2, v5, :cond_a

    const v5, 0xdfff

    if-le v2, v5, :cond_5

    goto/16 :goto_4

    :cond_5
    add-int/lit8 v5, v1, 0x1

    if-ge v5, p2, :cond_6

    .line 183
    aget-char v7, p1, v5

    goto :goto_3

    :cond_6
    move v7, v0

    :goto_3
    const v8, 0xdbff

    if-gt v2, v8, :cond_8

    const v8, 0xdc00

    if-gt v8, v7, :cond_8

    const v8, 0xe000

    if-ge v7, v8, :cond_8

    and-int/lit16 v2, v2, 0x3ff

    shl-int/lit8 v2, v2, 0xa

    and-int/lit16 v4, v7, 0x3ff

    or-int/2addr v2, v4

    const/high16 v4, 0x10000

    add-int/2addr v2, v4

    iget-object v4, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    .line 129
    array-length v4, v4

    iget v5, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    sub-int/2addr v4, v5

    const/4 v5, 0x4

    if-ge v4, v5, :cond_7

    .line 117
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->flush()V

    :cond_7
    shr-int/lit8 v4, v2, 0x12

    or-int/lit16 v4, v4, 0xf0

    iget-object v7, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    iget v8, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    add-int/lit8 v9, v8, 0x1

    int-to-byte v4, v4

    .line 124
    aput-byte v4, v7, v8

    shr-int/lit8 v4, v2, 0xc

    and-int/2addr v4, v6

    or-int/2addr v4, v3

    add-int/lit8 v10, v8, 0x2

    int-to-byte v4, v4

    .line 124
    aput-byte v4, v7, v9

    shr-int/lit8 v4, v2, 0x6

    and-int/2addr v4, v6

    or-int/2addr v4, v3

    add-int/lit8 v9, v8, 0x3

    int-to-byte v4, v4

    .line 124
    aput-byte v4, v7, v10

    and-int/2addr v2, v6

    or-int/2addr v2, v3

    add-int/2addr v8, v5

    iput v8, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    int-to-byte v2, v2

    .line 124
    aput-byte v2, v7, v9

    add-int/lit8 v1, v1, 0x2

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    .line 129
    array-length v1, v1

    iget v2, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    sub-int/2addr v1, v2

    if-ge v1, v4, :cond_9

    .line 117
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->flush()V

    :cond_9
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    iget v2, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    int-to-byte v3, v6

    .line 124
    aput-byte v3, v1, v2

    move v1, v5

    goto/16 :goto_0

    :cond_a
    :goto_4
    iget-object v4, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    .line 129
    array-length v4, v4

    iget v5, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    sub-int/2addr v4, v5

    const/4 v5, 0x3

    if-ge v4, v5, :cond_b

    .line 117
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->flush()V

    :cond_b
    shr-int/lit8 v4, v2, 0xc

    or-int/lit16 v4, v4, 0xe0

    iget-object v7, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    iget v8, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    add-int/lit8 v9, v8, 0x1

    int-to-byte v4, v4

    .line 124
    aput-byte v4, v7, v8

    shr-int/lit8 v4, v2, 0x6

    and-int/2addr v4, v6

    or-int/2addr v4, v3

    add-int/lit8 v6, v8, 0x2

    int-to-byte v4, v4

    .line 124
    aput-byte v4, v7, v9

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    add-int/2addr v8, v5

    iput v8, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    int-to-byte v2, v2

    .line 124
    aput-byte v2, v7, v6

    goto/16 :goto_2

    :cond_c
    return-void

    .line 137
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "count > string.length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " > "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 136
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "count < 0"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final writeUtf8CodePoint(I)V
    .locals 8

    const/4 v0, 0x1

    const/16 v1, 0x80

    if-ge p1, v1, :cond_1

    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    .line 129
    array-length v1, v1

    iget v2, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    sub-int/2addr v1, v2

    if-ge v1, v0, :cond_0

    .line 117
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->flush()V

    :cond_0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    iget v1, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    int-to-byte p1, p1

    .line 124
    aput-byte p1, v0, v1

    goto/16 :goto_0

    :cond_1
    const/16 v2, 0x800

    const/16 v3, 0x3f

    if-ge p1, v2, :cond_3

    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    .line 129
    array-length v0, v0

    iget v2, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    sub-int/2addr v0, v2

    const/4 v2, 0x2

    if-ge v0, v2, :cond_2

    .line 117
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->flush()V

    :cond_2
    shr-int/lit8 v0, p1, 0x6

    or-int/lit16 v0, v0, 0xc0

    iget-object v4, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    iget v5, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    add-int/lit8 v6, v5, 0x1

    int-to-byte v0, v0

    .line 124
    aput-byte v0, v4, v5

    and-int/2addr p1, v3

    or-int/2addr p1, v1

    add-int/2addr v5, v2

    iput v5, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    int-to-byte p1, p1

    .line 124
    aput-byte p1, v4, v6

    goto/16 :goto_0

    :cond_3
    const v2, 0xd800

    if-gt v2, p1, :cond_5

    const v2, 0xe000

    if-ge p1, v2, :cond_5

    iget-object p1, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    .line 129
    array-length p1, p1

    iget v1, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    sub-int/2addr p1, v1

    if-ge p1, v0, :cond_4

    .line 117
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->flush()V

    :cond_4
    iget-object p1, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    iget v0, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    int-to-byte v1, v3

    .line 124
    aput-byte v1, p1, v0

    goto :goto_0

    :cond_5
    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_7

    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    .line 129
    array-length v0, v0

    iget v2, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    sub-int/2addr v0, v2

    const/4 v2, 0x3

    if-ge v0, v2, :cond_6

    .line 117
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->flush()V

    :cond_6
    shr-int/lit8 v0, p1, 0xc

    or-int/lit16 v0, v0, 0xe0

    iget-object v4, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    iget v5, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    add-int/lit8 v6, v5, 0x1

    int-to-byte v0, v0

    .line 124
    aput-byte v0, v4, v5

    shr-int/lit8 v0, p1, 0x6

    and-int/2addr v0, v3

    or-int/2addr v0, v1

    add-int/lit8 v7, v5, 0x2

    int-to-byte v0, v0

    .line 124
    aput-byte v0, v4, v6

    and-int/2addr p1, v3

    or-int/2addr p1, v1

    add-int/2addr v5, v2

    iput v5, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    int-to-byte p1, p1

    .line 124
    aput-byte p1, v4, v7

    goto :goto_0

    :cond_7
    const v0, 0x10ffff

    if-gt p1, v0, :cond_9

    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    .line 129
    array-length v0, v0

    iget v2, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    sub-int/2addr v0, v2

    const/4 v2, 0x4

    if-ge v0, v2, :cond_8

    .line 117
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->flush()V

    :cond_8
    shr-int/lit8 v0, p1, 0x12

    or-int/lit16 v0, v0, 0xf0

    iget-object v4, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    iget v5, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    add-int/lit8 v6, v5, 0x1

    int-to-byte v0, v0

    .line 124
    aput-byte v0, v4, v5

    shr-int/lit8 v0, p1, 0xc

    and-int/2addr v0, v3

    or-int/2addr v0, v1

    add-int/lit8 v7, v5, 0x2

    int-to-byte v0, v0

    .line 124
    aput-byte v0, v4, v6

    shr-int/lit8 v0, p1, 0x6

    and-int/2addr v0, v3

    or-int/2addr v0, v1

    add-int/lit8 v6, v5, 0x3

    int-to-byte v0, v0

    .line 124
    aput-byte v0, v4, v7

    and-int/2addr p1, v3

    or-int/2addr p1, v1

    add-int/2addr v5, v2

    iput v5, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    int-to-byte p1, p1

    .line 124
    aput-byte p1, v4, v6

    :goto_0
    return-void

    .line 244
    :cond_9
    new-instance v0, Lkotlinx/serialization/json/internal/JsonEncodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected code point: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lkotlinx/serialization/json/internal/JsonEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public release()V
    .locals 2

    .line 102
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->flush()V

    .line 103
    sget-object v0, Lkotlinx/serialization/json/internal/CharArrayPool;->INSTANCE:Lkotlinx/serialization/json/internal/CharArrayPool;

    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->charArray:[C

    invoke-virtual {v0, v1}, Lkotlinx/serialization/json/internal/CharArrayPool;->release([C)V

    .line 104
    sget-object v0, Lkotlinx/serialization/json/internal/ByteArrayPool;->INSTANCE:Lkotlinx/serialization/json/internal/ByteArrayPool;

    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    invoke-virtual {v0, v1}, Lkotlinx/serialization/json/internal/ByteArrayPool;->release([B)V

    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 3

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    .line 22
    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->ensureTotalCapacity(II)I

    iget-object v2, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->charArray:[C

    .line 23
    invoke-virtual {p1, v1, v0, v2, v1}, Ljava/lang/String;->getChars(II[CI)V

    iget-object p1, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->charArray:[C

    .line 24
    invoke-direct {p0, p1, v0}, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->writeUtf8([CI)V

    return-void
.end method

.method public writeChar(C)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->writeUtf8CodePoint(I)V

    return-void
.end method

.method public writeLong(J)V
    .locals 0

    .line 13
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method public writeQuoted(Ljava/lang/String;)V
    .locals 7

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->ensureTotalCapacity(II)I

    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->charArray:[C

    const/16 v2, 0x22

    .line 30
    aput-char v2, v0, v1

    .line 31
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    .line 32
    invoke-virtual {p1, v1, v3, v0, v4}, Ljava/lang/String;->getChars(II[CI)V

    add-int/lit8 v1, v3, 0x1

    :goto_0
    if-ge v4, v1, :cond_1

    .line 34
    aget-char v5, v0, v4

    .line 36
    invoke-static {}, Lkotlinx/serialization/json/internal/StringOpsKt;->getESCAPE_MARKERS()[B

    move-result-object v6

    array-length v6, v6

    if-ge v5, v6, :cond_0

    invoke-static {}, Lkotlinx/serialization/json/internal/StringOpsKt;->getESCAPE_MARKERS()[B

    move-result-object v6

    aget-byte v5, v6, v5

    if-eqz v5, :cond_0

    .line 38
    invoke-direct {p0, v4, p1}, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->appendStringSlowPath(ILjava/lang/String;)V

    return-void

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 44
    :cond_1
    aput-char v2, v0, v1

    add-int/lit8 v3, v3, 0x2

    .line 46
    invoke-direct {p0, v0, v3}, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->writeUtf8([CI)V

    .line 47
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->flush()V

    return-void
.end method
