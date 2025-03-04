.class public abstract Lio/ktor/utils/io/core/internal/UTF8Kt;
.super Ljava/lang/Object;
.source "UTF8.kt"


# direct methods
.method public static final codePoint(CC)I
    .locals 1

    .line 0
    const v0, 0xd7c0

    sub-int/2addr p0, v0

    const v0, 0xdc00

    sub-int/2addr p1, v0

    shl-int/lit8 p0, p0, 0xa

    or-int/2addr p0, p1

    return p0
.end method

.method public static final encodeUTF8-lBXzO7A(Ljava/nio/ByteBuffer;Ljava/lang/CharSequence;IIII)I
    .locals 10

    const-string v0, "$this$encodeUTF8"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0xffff

    add-int v1, p2, v0

    .line 199
    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 200
    invoke-static {p5, v0}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v8

    move v4, p2

    move v7, p4

    :goto_0
    if-ge v7, v8, :cond_2

    if-lt v4, v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p3, v4, 0x1

    .line 209
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p5

    and-int v1, p5, v0

    const v2, 0xff80

    and-int/2addr p5, v2

    if-nez p5, :cond_1

    add-int/lit8 p5, v7, 0x1

    int-to-byte v1, v1

    .line 37
    invoke-virtual {p0, v7, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move v4, p3

    move v7, p5

    goto :goto_0

    :cond_1
    move-object v2, p0

    move-object v3, p1

    move v6, p2

    move v9, p4

    .line 218
    invoke-static/range {v2 .. v9}, Lio/ktor/utils/io/core/internal/UTF8Kt;->encodeUTF8Stage1-Vm9B2pQ(Ljava/nio/ByteBuffer;Ljava/lang/CharSequence;IIIIII)I

    move-result p0

    return p0

    :cond_2
    :goto_1
    sub-int/2addr v4, p2

    int-to-short p0, v4

    .line 206
    invoke-static {p0}, Lkotlin/UShort;->constructor-impl(S)S

    move-result p0

    sub-int/2addr v7, p4

    int-to-short p1, v7

    invoke-static {p1}, Lkotlin/UShort;->constructor-impl(S)S

    move-result p1

    invoke-static {p0, p1}, Lio/ktor/utils/io/core/internal/EncodeResult;->constructor-impl(SS)I

    move-result p0

    return p0
.end method

.method private static final encodeUTF8Stage1-Vm9B2pQ(Ljava/nio/ByteBuffer;Ljava/lang/CharSequence;IIIIII)I
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    add-int/lit8 v2, p6, -0x3

    move v4, p2

    move/from16 v5, p5

    :goto_0
    sub-int v6, v2, v5

    if-lez v6, :cond_8

    if-lt v4, v3, :cond_0

    goto/16 :goto_4

    :cond_0
    add-int/lit8 v6, v4, 0x1

    .line 244
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    .line 246
    invoke-static {v7}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v8

    const/16 v9, 0x3f

    if-eqz v8, :cond_3

    if-eq v6, v3, :cond_2

    .line 247
    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x2

    .line 250
    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v7, v6}, Lio/ktor/utils/io/core/internal/UTF8Kt;->codePoint(CC)I

    move-result v7

    goto :goto_2

    :cond_2
    :goto_1
    move v4, v6

    move v7, v9

    goto :goto_2

    :cond_3
    move v4, v6

    :goto_2
    const/16 v6, 0x80

    if-ltz v7, :cond_4

    if-ge v7, v6, :cond_4

    int-to-byte v6, v7

    .line 37
    invoke-virtual {p0, v5, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    const/4 v6, 0x1

    goto :goto_3

    :cond_4
    const/16 v8, 0x800

    if-gt v6, v7, :cond_5

    if-ge v7, v8, :cond_5

    shr-int/lit8 v8, v7, 0x6

    and-int/lit8 v8, v8, 0x1f

    or-int/lit16 v8, v8, 0xc0

    int-to-byte v8, v8

    invoke-virtual {p0, v5, v8}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v8, v5, 0x1

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v6, v7

    int-to-byte v6, v6

    invoke-virtual {p0, v8, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    const/4 v6, 0x2

    goto :goto_3

    :cond_5
    const/high16 v10, 0x10000

    if-gt v8, v7, :cond_6

    if-ge v7, v10, :cond_6

    shr-int/lit8 v8, v7, 0xc

    and-int/lit8 v8, v8, 0xf

    or-int/lit16 v8, v8, 0xe0

    int-to-byte v8, v8

    invoke-virtual {p0, v5, v8}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v8, v5, 0x1

    shr-int/lit8 v10, v7, 0x6

    and-int/2addr v9, v10

    or-int/2addr v9, v6

    int-to-byte v9, v9

    invoke-virtual {p0, v8, v9}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v8, v5, 0x2

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v6, v7

    int-to-byte v6, v6

    invoke-virtual {p0, v8, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    const/4 v6, 0x3

    goto :goto_3

    :cond_6
    if-gt v10, v7, :cond_7

    const/high16 v8, 0x110000

    if-ge v7, v8, :cond_7

    shr-int/lit8 v8, v7, 0x12

    and-int/lit8 v8, v8, 0x7

    or-int/lit16 v8, v8, 0xf0

    int-to-byte v8, v8

    invoke-virtual {p0, v5, v8}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v8, v5, 0x1

    shr-int/lit8 v10, v7, 0xc

    and-int/2addr v10, v9

    or-int/2addr v10, v6

    int-to-byte v10, v10

    invoke-virtual {p0, v8, v10}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v8, v5, 0x2

    shr-int/lit8 v10, v7, 0x6

    and-int/2addr v9, v10

    or-int/2addr v9, v6

    int-to-byte v9, v9

    invoke-virtual {p0, v8, v9}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v8, v5, 0x3

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v6, v7

    int-to-byte v6, v6

    invoke-virtual {p0, v8, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    const/4 v6, 0x4

    :goto_3
    add-int/2addr v5, v6

    goto/16 :goto_0

    .line 342
    :cond_7
    invoke-static {v7}, Lio/ktor/utils/io/core/internal/UTF8Kt;->malformedCodePoint(I)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :cond_8
    :goto_4
    if-ne v5, v2, :cond_9

    move-object v0, p0

    move-object v1, p1

    move v2, v4

    move v3, p3

    move v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    .line 261
    invoke-static/range {v0 .. v7}, Lio/ktor/utils/io/core/internal/UTF8Kt;->encodeUTF8Stage2-Vm9B2pQ(Ljava/nio/ByteBuffer;Ljava/lang/CharSequence;IIIIII)I

    move-result v0

    return v0

    :cond_9
    sub-int/2addr v4, p4

    int-to-short v0, v4

    .line 264
    invoke-static {v0}, Lkotlin/UShort;->constructor-impl(S)S

    move-result v0

    sub-int v5, v5, p7

    int-to-short v1, v5

    invoke-static {v1}, Lkotlin/UShort;->constructor-impl(S)S

    move-result v1

    invoke-static {v0, v1}, Lio/ktor/utils/io/core/internal/EncodeResult;->constructor-impl(SS)I

    move-result v0

    return v0
.end method

.method private static final encodeUTF8Stage2-Vm9B2pQ(Ljava/nio/ByteBuffer;Ljava/lang/CharSequence;IIIIII)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p2

    move/from16 v4, p5

    :goto_0
    sub-int v5, p6, v4

    if-lez v5, :cond_d

    if-lt v3, v2, :cond_0

    goto/16 :goto_5

    :cond_0
    add-int/lit8 v6, v3, 0x1

    .line 286
    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    .line 288
    invoke-static {v7}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v8

    const/16 v9, 0x3f

    if-nez v8, :cond_1

    move v3, v6

    goto :goto_2

    :cond_1
    if-eq v6, v2, :cond_3

    .line 290
    invoke-interface {v1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x2

    .line 293
    invoke-interface {v1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v7, v6}, Lio/ktor/utils/io/core/internal/UTF8Kt;->codePoint(CC)I

    move-result v7

    goto :goto_2

    :cond_3
    :goto_1
    move v3, v6

    move v7, v9

    :goto_2
    const/high16 v8, 0x110000

    const/4 v10, 0x3

    const/high16 v11, 0x10000

    const/16 v12, 0x800

    const/4 v13, 0x2

    const/4 v14, 0x1

    const/16 v15, 0x80

    if-gt v14, v7, :cond_4

    if-ge v7, v15, :cond_4

    move v6, v14

    goto :goto_3

    :cond_4
    if-gt v15, v7, :cond_5

    if-ge v7, v12, :cond_5

    move v6, v13

    goto :goto_3

    :cond_5
    if-gt v12, v7, :cond_6

    if-ge v7, v11, :cond_6

    move v6, v10

    goto :goto_3

    :cond_6
    if-gt v11, v7, :cond_c

    if-ge v7, v8, :cond_c

    const/4 v6, 0x4

    :goto_3
    if-le v6, v5, :cond_7

    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_5

    :cond_7
    if-ltz v7, :cond_8

    if-ge v7, v15, :cond_8

    int-to-byte v5, v7

    .line 37
    invoke-virtual {v0, v4, v5}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move v6, v14

    goto :goto_4

    :cond_8
    if-gt v15, v7, :cond_9

    if-ge v7, v12, :cond_9

    shr-int/lit8 v5, v7, 0x6

    and-int/lit8 v5, v5, 0x1f

    or-int/lit16 v5, v5, 0xc0

    int-to-byte v5, v5

    invoke-virtual {v0, v4, v5}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v4, 0x1

    and-int/lit8 v6, v7, 0x3f

    or-int/2addr v6, v15

    int-to-byte v6, v6

    invoke-virtual {v0, v5, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move v6, v13

    goto :goto_4

    :cond_9
    if-gt v12, v7, :cond_a

    if-ge v7, v11, :cond_a

    shr-int/lit8 v5, v7, 0xc

    and-int/lit8 v5, v5, 0xf

    or-int/lit16 v5, v5, 0xe0

    int-to-byte v5, v5

    invoke-virtual {v0, v4, v5}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v4, 0x1

    shr-int/lit8 v6, v7, 0x6

    and-int/2addr v6, v9

    or-int/2addr v6, v15

    int-to-byte v6, v6

    invoke-virtual {v0, v5, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v4, 0x2

    and-int/lit8 v6, v7, 0x3f

    or-int/2addr v6, v15

    int-to-byte v6, v6

    invoke-virtual {v0, v5, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move v6, v10

    goto :goto_4

    :cond_a
    if-gt v11, v7, :cond_b

    if-ge v7, v8, :cond_b

    shr-int/lit8 v5, v7, 0x12

    and-int/lit8 v5, v5, 0x7

    or-int/lit16 v5, v5, 0xf0

    int-to-byte v5, v5

    invoke-virtual {v0, v4, v5}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v4, 0x1

    shr-int/lit8 v6, v7, 0xc

    and-int/2addr v6, v9

    or-int/2addr v6, v15

    int-to-byte v6, v6

    invoke-virtual {v0, v5, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v4, 0x2

    shr-int/lit8 v6, v7, 0x6

    and-int/2addr v6, v9

    or-int/2addr v6, v15

    int-to-byte v6, v6

    invoke-virtual {v0, v5, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v4, 0x3

    and-int/lit8 v6, v7, 0x3f

    or-int/2addr v6, v15

    int-to-byte v6, v6

    invoke-virtual {v0, v5, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    const/4 v6, 0x4

    :goto_4
    add-int/2addr v4, v6

    goto/16 :goto_0

    .line 342
    :cond_b
    invoke-static {v7}, Lio/ktor/utils/io/core/internal/UTF8Kt;->malformedCodePoint(I)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 314
    :cond_c
    invoke-static {v7}, Lio/ktor/utils/io/core/internal/UTF8Kt;->malformedCodePoint(I)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :cond_d
    :goto_5
    sub-int v3, v3, p4

    int-to-short v0, v3

    .line 305
    invoke-static {v0}, Lkotlin/UShort;->constructor-impl(S)S

    move-result v0

    sub-int v4, v4, p7

    int-to-short v1, v4

    invoke-static {v1}, Lkotlin/UShort;->constructor-impl(S)S

    move-result v1

    invoke-static {v0, v1}, Lio/ktor/utils/io/core/internal/EncodeResult;->constructor-impl(SS)I

    move-result v0

    return v0
.end method

.method public static final highSurrogate(I)I
    .locals 1

    .line 0
    ushr-int/lit8 p0, p0, 0xa

    const v0, 0xd7c0

    add-int/2addr p0, v0

    return p0
.end method

.method public static final isBmpCodePoint(I)Z
    .locals 0

    .line 0
    ushr-int/lit8 p0, p0, 0x10

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isValidCodePoint(I)Z
    .locals 1

    .line 0
    const v0, 0x10ffff

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final lowSurrogate(I)I
    .locals 1

    .line 0
    and-int/lit16 p0, p0, 0x3ff

    const v0, 0xdc00

    add-int/2addr p0, v0

    return p0
.end method

.method public static final malformedByteCount(I)Ljava/lang/Void;
    .locals 3

    .line 347
    new-instance v0, Lio/ktor/utils/io/core/internal/MalformedUTF8InputException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " more character bytes"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lio/ktor/utils/io/core/internal/MalformedUTF8InputException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final malformedCodePoint(I)Ljava/lang/Void;
    .locals 3

    .line 351
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed code-point "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " found"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
