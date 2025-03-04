.class public abstract Lkotlin/text/UStringsKt;
.super Ljava/lang/Object;
.source "UStrings.kt"


# direct methods
.method public static final toUByte(Ljava/lang/String;)B
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-static {p0}, Lkotlin/text/UStringsKt;->toUByteOrNull(Ljava/lang/String;)Lkotlin/UByte;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lkotlin/UByte;->unbox-impl()B

    move-result p0

    return p0

    :cond_0
    invoke-static {p0}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->numberFormatError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public static final toUByteOrNull(Ljava/lang/String;)Lkotlin/UByte;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xa

    .line 130
    invoke-static {p0, v0}, Lkotlin/text/UStringsKt;->toUByteOrNull(Ljava/lang/String;I)Lkotlin/UByte;

    move-result-object p0

    return-object p0
.end method

.method public static final toUByteOrNull(Ljava/lang/String;I)Lkotlin/UByte;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    invoke-static {p0, p1}, Lkotlin/text/UStringsKt;->toUIntOrNull(Ljava/lang/String;I)Lkotlin/UInt;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lkotlin/UInt;->unbox-impl()I

    move-result p0

    const/16 v0, 0xff

    .line 142
    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    invoke-static {p0, v0}, Lkotlin/text/UStringsKt$$ExternalSyntheticBackport0;->m(II)I

    move-result v0

    if-lez v0, :cond_0

    return-object p1

    :cond_0
    int-to-byte p0, p0

    .line 143
    invoke-static {p0}, Lkotlin/UByte;->constructor-impl(B)B

    move-result p0

    invoke-static {p0}, Lkotlin/UByte;->box-impl(B)Lkotlin/UByte;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1
.end method

.method public static final toUInt(Ljava/lang/String;)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-static {p0}, Lkotlin/text/UStringsKt;->toUIntOrNull(Ljava/lang/String;)Lkotlin/UInt;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lkotlin/UInt;->unbox-impl()I

    move-result p0

    return p0

    :cond_0
    invoke-static {p0}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->numberFormatError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public static final toUIntOrNull(Ljava/lang/String;)Lkotlin/UInt;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xa

    .line 174
    invoke-static {p0, v0}, Lkotlin/text/UStringsKt;->toUIntOrNull(Ljava/lang/String;I)Lkotlin/UInt;

    move-result-object p0

    return-object p0
.end method

.method public static final toUIntOrNull(Ljava/lang/String;I)Lkotlin/UInt;
    .locals 9

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    invoke-static {p1}, Lkotlin/text/CharsKt;->checkRadix(I)I

    .line 187
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    .line 193
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    .line 194
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v4

    if-gez v4, :cond_2

    const/4 v4, 0x1

    if-eq v0, v4, :cond_1

    const/16 v5, 0x2b

    if-eq v3, v5, :cond_3

    :cond_1
    return-object v1

    :cond_2
    move v4, v2

    .line 204
    :cond_3
    invoke-static {p1}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v3

    const v5, 0x71c71c7

    move v6, v5

    :goto_0
    if-ge v4, v0, :cond_8

    .line 207
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7, p1}, Lkotlin/text/CharsKt__CharJVMKt;->digitOf(CI)I

    move-result v7

    if-gez v7, :cond_4

    return-object v1

    .line 210
    :cond_4
    invoke-static {v2, v6}, Lkotlin/text/UStringsKt$$ExternalSyntheticBackport0;->m(II)I

    move-result v8

    if-lez v8, :cond_6

    if-ne v6, v5, :cond_5

    const/4 v6, -0x1

    .line 212
    invoke-static {v6, v3}, Lkotlin/text/UStringsKt$$ExternalSyntheticBackport3;->m(II)I

    move-result v6

    .line 214
    invoke-static {v2, v6}, Lkotlin/text/UStringsKt$$ExternalSyntheticBackport0;->m(II)I

    move-result v8

    if-lez v8, :cond_6

    :cond_5
    return-object v1

    :cond_6
    mul-int/2addr v2, v3

    .line 222
    invoke-static {v2}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v2

    .line 225
    invoke-static {v7}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v7

    add-int/2addr v7, v2

    invoke-static {v7}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v7

    .line 226
    invoke-static {v7, v2}, Lkotlin/text/UStringsKt$$ExternalSyntheticBackport0;->m(II)I

    move-result v2

    if-gez v2, :cond_7

    return-object v1

    :cond_7
    add-int/lit8 v4, v4, 0x1

    move v2, v7

    goto :goto_0

    .line 229
    :cond_8
    invoke-static {v2}, Lkotlin/UInt;->box-impl(I)Lkotlin/UInt;

    move-result-object p0

    return-object p0
.end method

.method public static final toULong(Ljava/lang/String;)J
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-static {p0}, Lkotlin/text/UStringsKt;->toULongOrNull(Ljava/lang/String;)Lkotlin/ULong;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lkotlin/ULong;->unbox-impl()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-static {p0}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->numberFormatError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public static final toULongOrNull(Ljava/lang/String;)Lkotlin/ULong;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xa

    .line 238
    invoke-static {p0, v0}, Lkotlin/text/UStringsKt;->toULongOrNull(Ljava/lang/String;I)Lkotlin/ULong;

    move-result-object p0

    return-object p0
.end method

.method public static final toULongOrNull(Ljava/lang/String;I)Lkotlin/ULong;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    const-string v2, "<this>"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    invoke-static/range {p1 .. p1}, Lkotlin/text/CharsKt;->checkRadix(I)I

    .line 251
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    const/4 v4, 0x0

    .line 257
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    .line 258
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v6

    if-gez v6, :cond_2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_1

    const/16 v6, 0x2b

    if-eq v5, v6, :cond_2

    :cond_1
    return-object v3

    :cond_2
    int-to-long v5, v1

    .line 269
    invoke-static {v5, v6}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v5

    const-wide v7, 0x71c71c71c71c71cL

    const-wide/16 v9, 0x0

    move-wide v11, v7

    :goto_0
    if-ge v4, v2, :cond_7

    .line 272
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-static {v13, v1}, Lkotlin/text/CharsKt__CharJVMKt;->digitOf(CI)I

    move-result v13

    if-gez v13, :cond_3

    return-object v3

    .line 275
    :cond_3
    invoke-static {v9, v10, v11, v12}, Lkotlin/text/UStringsKt$$ExternalSyntheticBackport1;->m(JJ)I

    move-result v14

    if-lez v14, :cond_5

    cmp-long v11, v11, v7

    if-nez v11, :cond_4

    const-wide/16 v11, -0x1

    .line 277
    invoke-static {v11, v12, v5, v6}, Lkotlin/text/UStringsKt$$ExternalSyntheticBackport2;->m(JJ)J

    move-result-wide v11

    .line 279
    invoke-static {v9, v10, v11, v12}, Lkotlin/text/UStringsKt$$ExternalSyntheticBackport1;->m(JJ)I

    move-result v14

    if-lez v14, :cond_5

    :cond_4
    return-object v3

    :cond_5
    mul-long/2addr v9, v5

    .line 287
    invoke-static {v9, v10}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v9

    .line 290
    invoke-static {v13}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v13

    int-to-long v13, v13

    const-wide v15, 0xffffffffL

    and-long/2addr v13, v15

    invoke-static {v13, v14}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v13

    add-long/2addr v13, v9

    invoke-static {v13, v14}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v13

    .line 291
    invoke-static {v13, v14, v9, v10}, Lkotlin/text/UStringsKt$$ExternalSyntheticBackport1;->m(JJ)I

    move-result v9

    if-gez v9, :cond_6

    return-object v3

    :cond_6
    add-int/lit8 v4, v4, 0x1

    move-wide v9, v13

    goto :goto_0

    .line 294
    :cond_7
    invoke-static {v9, v10}, Lkotlin/ULong;->box-impl(J)Lkotlin/ULong;

    move-result-object v0

    return-object v0
.end method

.method public static final toUShort(Ljava/lang/String;)S
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-static {p0}, Lkotlin/text/UStringsKt;->toUShortOrNull(Ljava/lang/String;)Lkotlin/UShort;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lkotlin/UShort;->unbox-impl()S

    move-result p0

    return p0

    :cond_0
    invoke-static {p0}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->numberFormatError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public static final toUShortOrNull(Ljava/lang/String;)Lkotlin/UShort;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xa

    .line 152
    invoke-static {p0, v0}, Lkotlin/text/UStringsKt;->toUShortOrNull(Ljava/lang/String;I)Lkotlin/UShort;

    move-result-object p0

    return-object p0
.end method

.method public static final toUShortOrNull(Ljava/lang/String;I)Lkotlin/UShort;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    invoke-static {p0, p1}, Lkotlin/text/UStringsKt;->toUIntOrNull(Ljava/lang/String;I)Lkotlin/UInt;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lkotlin/UInt;->unbox-impl()I

    move-result p0

    const v0, 0xffff

    .line 164
    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    invoke-static {p0, v0}, Lkotlin/text/UStringsKt$$ExternalSyntheticBackport0;->m(II)I

    move-result v0

    if-lez v0, :cond_0

    return-object p1

    :cond_0
    int-to-short p0, p0

    .line 165
    invoke-static {p0}, Lkotlin/UShort;->constructor-impl(S)S

    move-result p0

    invoke-static {p0}, Lkotlin/UShort;->box-impl(S)Lkotlin/UShort;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1
.end method
