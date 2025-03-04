.class public abstract Lio/ktor/utils/io/charsets/CharsetJVMKt;
.super Ljava/lang/Object;
.source "CharsetJVM.kt"


# static fields
.field private static final EmptyByteBuffer:Ljava/nio/ByteBuffer;

.field private static final EmptyCharBuffer:Ljava/nio/CharBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    .line 387
    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v1

    sput-object v1, Lio/ktor/utils/io/charsets/CharsetJVMKt;->EmptyCharBuffer:Ljava/nio/CharBuffer;

    .line 388
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sput-object v0, Lio/ktor/utils/io/charsets/CharsetJVMKt;->EmptyByteBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public static final decode(Ljava/nio/charset/CharsetDecoder;Lio/ktor/utils/io/core/Input;Ljava/lang/Appendable;I)I
    .locals 11

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x2000

    .line 223
    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v1

    const/4 v2, 0x1

    .line 854
    invoke-static {p1, v2}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    goto/16 :goto_9

    :cond_0
    move v5, v2

    move v7, v5

    move v6, v4

    .line 69
    :goto_0
    :try_start_0
    invoke-virtual {v3}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v8

    invoke-virtual {v3}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    sub-int/2addr v8, v9

    if-lt v8, v5, :cond_7

    sub-int v5, p3, v6

    if-nez v5, :cond_1

    move v5, v4

    goto :goto_3

    .line 376
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v3}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v9

    invoke-virtual {v3}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v10

    sub-int/2addr v10, v9

    .line 100
    invoke-static {v8, v9, v10}, Lio/ktor/utils/io/bits/Memory;->slice-87lwejk(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 232
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    if-ge v5, v0, :cond_2

    .line 234
    invoke-virtual {v1, v5}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_4

    .line 236
    :cond_2
    :goto_1
    invoke-virtual {p0, v8, v1, v4}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v5

    .line 237
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 238
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v9

    add-int/2addr v6, v9

    .line 239
    invoke-interface {p2, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 241
    invoke-virtual {v5}, Ljava/nio/charset/CoderResult;->isMalformed()Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {v5}, Ljava/nio/charset/CoderResult;->isUnmappable()Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_3
    const-string v9, "rc"

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lio/ktor/utils/io/charsets/CharsetJVMKt;->throwExceptionWrapped(Ljava/nio/charset/CoderResult;)V

    .line 242
    :cond_4
    invoke-virtual {v5}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v8}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_5

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    move v7, v2

    .line 102
    :goto_2
    invoke-virtual {v8}, Ljava/nio/Buffer;->limit()I

    move-result v5

    if-ne v5, v10, :cond_6

    .line 104
    invoke-virtual {v8}, Ljava/nio/Buffer;->position()I

    move-result v5

    .line 377
    invoke-virtual {v3, v5}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v5, v7

    .line 69
    :goto_3
    :try_start_2
    invoke-virtual {v3}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v8

    invoke-virtual {v3}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    sub-int/2addr v8, v9

    goto :goto_5

    :catchall_1
    move-exception p0

    goto/16 :goto_a

    :cond_6
    :try_start_3
    const-string p0, "Buffer\'s limit change is not allowed"

    .line 102
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 69
    :goto_4
    :try_start_4
    invoke-virtual {v3}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    invoke-virtual {v3}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    .line 866
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_7
    :goto_5
    if-nez v8, :cond_8

    .line 875
    :try_start_5
    invoke-static {p1, v3}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadNextHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v8

    goto :goto_7

    :catchall_2
    move-exception p0

    move v2, v4

    goto :goto_a

    :cond_8
    if-lt v8, v5, :cond_a

    .line 59
    invoke-virtual {v3}, Lio/ktor/utils/io/core/Buffer;->getCapacity()I

    move-result v8

    invoke-virtual {v3}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v9

    sub-int/2addr v8, v9

    const/16 v9, 0x8

    if-ge v8, v9, :cond_9

    goto :goto_6

    :cond_9
    move-object v8, v3

    goto :goto_7

    .line 877
    :cond_a
    :goto_6
    invoke-static {p1, v3}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 878
    invoke-static {p1, v5}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_7
    if-nez v8, :cond_b

    goto :goto_8

    :cond_b
    if-gtz v5, :cond_12

    move v4, v2

    move-object v3, v8

    :goto_8
    if-eqz v4, :cond_c

    .line 888
    invoke-static {p1, v3}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_c
    move v4, v6

    .line 252
    :cond_d
    :goto_9
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    sub-int p1, p3, v4

    if-eqz p1, :cond_11

    if-ge p1, v0, :cond_e

    .line 256
    invoke-virtual {v1, p1}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_e
    sget-object p1, Lio/ktor/utils/io/charsets/CharsetJVMKt;->EmptyByteBuffer:Ljava/nio/ByteBuffer;

    .line 258
    invoke-virtual {p0, p1, v1, v2}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object p1

    .line 259
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 260
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    add-int/2addr v4, v3

    .line 261
    invoke-interface {p2, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 263
    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->isUnmappable()Z

    move-result v3

    if-nez v3, :cond_f

    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->isMalformed()Z

    move-result v3

    if-eqz v3, :cond_10

    :cond_f
    const-string v3, "cr"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lio/ktor/utils/io/charsets/CharsetJVMKt;->throwExceptionWrapped(Ljava/nio/charset/CoderResult;)V

    .line 264
    :cond_10
    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result p1

    if-nez p1, :cond_d

    :cond_11
    return v4

    :cond_12
    move-object v3, v8

    goto/16 :goto_0

    :goto_a
    if-eqz v2, :cond_13

    .line 888
    invoke-static {p1, v3}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_13
    throw p0
.end method

.method public static final decodeExactBytes(Ljava/nio/charset/CharsetDecoder;Lio/ktor/utils/io/core/Input;I)Ljava/lang/String;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    const-string p0, ""

    return-object p0

    .line 77
    :cond_0
    invoke-virtual {p1}, Lio/ktor/utils/io/core/Input;->getHeadEndExclusive()I

    move-result v0

    invoke-virtual {p1}, Lio/ktor/utils/io/core/Input;->getHeadPosition()I

    move-result v1

    sub-int/2addr v0, v1

    if-lt v0, p2, :cond_2

    .line 277
    invoke-virtual {p1}, Lio/ktor/utils/io/core/Input;->getHeadMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 281
    invoke-virtual {p1}, Lio/ktor/utils/io/core/Input;->getHeadMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 283
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const-string v2, "bb.array()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    add-int/2addr v2, v0

    invoke-virtual {p1}, Lio/ktor/utils/io/core/Input;->getHead()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v0

    add-int/2addr v2, v0

    .line 286
    invoke-virtual {p0}, Ljava/nio/charset/CharsetDecoder;->charset()Ljava/nio/charset/Charset;

    move-result-object p0

    const-string v0, "charset()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1, v2, p2, p0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 289
    invoke-virtual {p1, p2}, Lio/ktor/utils/io/core/Input;->discardExact(I)V

    return-object v0

    .line 294
    :cond_1
    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/charsets/CharsetJVMKt;->decodeImplByteBuffer(Ljava/nio/charset/CharsetDecoder;Lio/ktor/utils/io/core/Input;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 297
    :cond_2
    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/charsets/CharsetJVMKt;->decodeImplSlow(Ljava/nio/charset/CharsetDecoder;Lio/ktor/utils/io/core/Input;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final decodeImplByteBuffer(Ljava/nio/charset/CharsetDecoder;Lio/ktor/utils/io/core/Input;I)Ljava/lang/String;
    .locals 3

    .line 302
    invoke-static {p2}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 303
    invoke-virtual {p1}, Lio/ktor/utils/io/core/Input;->getHeadMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lio/ktor/utils/io/core/Input;->getHead()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v2

    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v2

    invoke-static {v1, v2, p2}, Lio/ktor/utils/io/bits/Memory;->slice-87lwejk(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object p2

    const/4 v1, 0x1

    .line 305
    invoke-virtual {p0, p2, v0, v1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object p0

    .line 306
    invoke-virtual {p0}, Ljava/nio/charset/CoderResult;->isMalformed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/nio/charset/CoderResult;->isUnmappable()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "rc"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lio/ktor/utils/io/charsets/CharsetJVMKt;->throwExceptionWrapped(Ljava/nio/charset/CoderResult;)V

    .line 307
    :cond_1
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 308
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result p0

    invoke-virtual {p1, p0}, Lio/ktor/utils/io/core/Input;->discardExact(I)V

    .line 309
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "cb.toString()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final decodeImplSlow(Ljava/nio/charset/CharsetDecoder;Lio/ktor/utils/io/core/Input;I)Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 314
    invoke-static/range {p2 .. p2}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v3

    const/4 v4, 0x1

    .line 854
    invoke-static {v1, v4}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v5

    const-string v6, "rc"

    const/4 v7, 0x0

    if-nez v5, :cond_0

    move v9, v2

    goto/16 :goto_b

    :cond_0
    move v9, v2

    move v8, v4

    move v11, v8

    move v10, v7

    .line 69
    :goto_0
    :try_start_0
    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v12

    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    sub-int/2addr v12, v13

    if-lt v12, v8, :cond_9

    .line 321
    :try_start_1
    invoke-virtual {v3}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v8

    if-eqz v8, :cond_8

    if-nez v9, :cond_1

    goto/16 :goto_4

    .line 376
    :cond_1
    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v10

    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v12

    sub-int/2addr v12, v10

    .line 100
    invoke-static {v8, v10, v12}, Lio/ktor/utils/io/bits/Memory;->slice-87lwejk(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 324
    invoke-virtual {v8}, Ljava/nio/Buffer;->limit()I

    move-result v10

    .line 325
    invoke-virtual {v8}, Ljava/nio/Buffer;->position()I

    move-result v13

    sub-int v14, v10, v13

    if-lt v14, v9, :cond_2

    move v14, v4

    goto :goto_1

    :cond_2
    move v14, v7

    :goto_1
    if-eqz v14, :cond_3

    add-int v15, v13, v9

    .line 330
    invoke-virtual {v8, v15}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_6

    .line 332
    :cond_3
    :goto_2
    invoke-virtual {v0, v8, v3, v14}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v15

    .line 334
    invoke-virtual {v15}, Ljava/nio/charset/CoderResult;->isMalformed()Z

    move-result v16

    if-nez v16, :cond_4

    invoke-virtual {v15}, Ljava/nio/charset/CoderResult;->isUnmappable()Z

    move-result v16

    if-eqz v16, :cond_5

    :cond_4
    invoke-static {v15, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v15}, Lio/ktor/utils/io/charsets/CharsetJVMKt;->throwExceptionWrapped(Ljava/nio/charset/CoderResult;)V

    .line 335
    :cond_5
    invoke-virtual {v15}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-virtual {v8}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v15

    if-eqz v15, :cond_6

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_6
    move v11, v4

    .line 341
    :goto_3
    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 342
    invoke-virtual {v8}, Ljava/nio/Buffer;->position()I

    move-result v10

    sub-int/2addr v10, v13

    sub-int/2addr v9, v10

    .line 102
    invoke-virtual {v8}, Ljava/nio/Buffer;->limit()I

    move-result v10

    if-ne v10, v12, :cond_7

    .line 104
    invoke-virtual {v8}, Ljava/nio/Buffer;->position()I

    move-result v8

    .line 377
    invoke-virtual {v5, v8}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    move v8, v11

    move v10, v14

    goto :goto_5

    :cond_7
    const-string v0, "Buffer\'s limit change is not allowed"

    .line 102
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_8
    :goto_4
    move v8, v7

    .line 69
    :goto_5
    :try_start_2
    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v12

    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v13

    sub-int/2addr v12, v13

    goto :goto_7

    :catchall_1
    move-exception v0

    goto/16 :goto_c

    :goto_6
    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    .line 866
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_9
    :goto_7
    if-nez v12, :cond_a

    .line 875
    :try_start_3
    invoke-static {v1, v5}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadNextHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v12

    goto :goto_9

    :catchall_2
    move-exception v0

    move v4, v7

    goto/16 :goto_c

    :cond_a
    if-lt v12, v8, :cond_c

    .line 59
    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getCapacity()I

    move-result v12

    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v13

    sub-int/2addr v12, v13

    const/16 v13, 0x8

    if-ge v12, v13, :cond_b

    goto :goto_8

    :cond_b
    move-object v12, v5

    goto :goto_9

    .line 877
    :cond_c
    :goto_8
    invoke-static {v1, v5}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 878
    invoke-static {v1, v8}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_9
    if-nez v12, :cond_d

    goto :goto_a

    :cond_d
    if-gtz v8, :cond_13

    move v7, v4

    move-object v5, v12

    :goto_a
    if-eqz v7, :cond_e

    .line 888
    invoke-static {v1, v5}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_e
    move v7, v10

    .line 347
    :goto_b
    invoke-virtual {v3}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_10

    if-nez v7, :cond_10

    sget-object v1, Lio/ktor/utils/io/charsets/CharsetJVMKt;->EmptyByteBuffer:Ljava/nio/ByteBuffer;

    .line 348
    invoke-virtual {v0, v1, v3, v4}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 350
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isMalformed()Z

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnmappable()Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_f
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lio/ktor/utils/io/charsets/CharsetJVMKt;->throwExceptionWrapped(Ljava/nio/charset/CoderResult;)V

    :cond_10
    if-gtz v9, :cond_12

    if-ltz v9, :cond_11

    .line 362
    invoke-virtual {v3}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 363
    invoke-virtual {v3}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cb.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 359
    :cond_11
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "remainingInputBytes < 0"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 354
    :cond_12
    new-instance v0, Ljava/io/EOFException;

    .line 355
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not enough bytes available: had only "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int v3, v2, v9

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " instead of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 354
    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    move-object v5, v12

    goto/16 :goto_0

    :goto_c
    if-eqz v4, :cond_14

    .line 888
    invoke-static {v1, v5}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_14
    throw v0
.end method

.method public static final encodeComplete(Ljava/nio/charset/CharsetEncoder;Lio/ktor/utils/io/core/Buffer;)Z
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 394
    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v1

    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v2

    sub-int/2addr v2, v1

    .line 116
    invoke-static {v0, v1, v2}, Lio/ktor/utils/io/bits/Memory;->slice-87lwejk(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Lio/ktor/utils/io/charsets/CharsetJVMKt;->EmptyCharBuffer:Ljava/nio/CharBuffer;

    const/4 v3, 0x1

    .line 142
    invoke-virtual {p0, v1, v0, v3}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object p0

    .line 143
    invoke-virtual {p0}, Ljava/nio/charset/CoderResult;->isMalformed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/nio/charset/CoderResult;->isUnmappable()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "result"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lio/ktor/utils/io/charsets/CharsetJVMKt;->throwExceptionWrapped(Ljava/nio/charset/CoderResult;)V

    .line 144
    :cond_1
    invoke-virtual {p0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result p0

    .line 118
    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 120
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    .line 395
    invoke-virtual {p1, v0}, Lio/ktor/utils/io/core/Buffer;->commitWritten(I)V

    return p0

    .line 118
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Buffer\'s limit change is not allowed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final encodeImpl(Ljava/nio/charset/CharsetEncoder;Ljava/lang/CharSequence;IILio/ktor/utils/io/core/Buffer;)I
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-static {p1, p2, p3}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;II)Ljava/nio/CharBuffer;

    move-result-object p1

    .line 50
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result p2

    .line 394
    invoke-virtual {p4}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-virtual {p4}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v0

    invoke-virtual {p4}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v1

    sub-int/2addr v1, v0

    .line 116
    invoke-static {p3, v0, v1}, Lio/ktor/utils/io/bits/Memory;->slice-87lwejk(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object p3

    const/4 v0, 0x0

    .line 53
    invoke-virtual {p0, p1, p3, v0}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object p0

    .line 54
    invoke-virtual {p0}, Ljava/nio/charset/CoderResult;->isMalformed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/nio/charset/CoderResult;->isUnmappable()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "result"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lio/ktor/utils/io/charsets/CharsetJVMKt;->throwExceptionWrapped(Ljava/nio/charset/CoderResult;)V

    .line 118
    :cond_1
    invoke-virtual {p3}, Ljava/nio/Buffer;->limit()I

    move-result p0

    if-ne p0, v1, :cond_2

    .line 120
    invoke-virtual {p3}, Ljava/nio/Buffer;->position()I

    move-result p0

    .line 395
    invoke-virtual {p4, p0}, Lio/ktor/utils/io/core/Buffer;->commitWritten(I)V

    .line 57
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result p0

    sub-int/2addr p2, p0

    return p2

    .line 118
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Buffer\'s limit change is not allowed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final encodeToByteArray(Ljava/nio/charset/CharsetEncoder;Ljava/lang/CharSequence;II)[B
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    .line 22
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne p3, v0, :cond_0

    .line 23
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const-string p1, "input as java.lang.String).getBytes(charset())"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 25
    :cond_0
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string p2, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "null cannot be cast to non-null type java.lang.String"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const-string p1, "input.substring(fromInde\u2026ring).getBytes(charset())"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 28
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/charsets/CharsetJVMKt;->encodeToByteArraySlow(Ljava/nio/charset/CharsetEncoder;Ljava/lang/CharSequence;II)[B

    move-result-object p0

    return-object p0
.end method

.method private static final encodeToByteArraySlow(Ljava/nio/charset/CharsetEncoder;Ljava/lang/CharSequence;II)[B
    .locals 1

    .line 32
    invoke-static {p1, p2, p3}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;II)Ljava/nio/CharBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 35
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    array-length p3, p1

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    if-ne p3, v0, :cond_0

    move-object p2, p1

    :cond_0
    if-nez p2, :cond_1

    .line 39
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result p1

    new-array p2, p1, [B

    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    :cond_1
    return-object p2
.end method

.method public static final getName(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p0

    const-string v0, "name()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final throwExceptionWrapped(Ljava/nio/charset/CoderResult;)V
    .locals 1

    .line 368
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/charset/CoderResult;->throwException()V
    :try_end_0
    .catch Ljava/nio/charset/MalformedInputException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 370
    new-instance v0, Lio/ktor/utils/io/charsets/MalformedInputException;

    invoke-virtual {p0}, Ljava/nio/charset/MalformedInputException;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "Failed to decode bytes"

    :cond_0
    invoke-direct {v0, p0}, Lio/ktor/utils/io/charsets/MalformedInputException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
