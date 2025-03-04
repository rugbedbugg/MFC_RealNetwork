.class public abstract Lkotlin/time/DurationKt;
.super Ljava/lang/Object;
.source "Duration.kt"


# direct methods
.method public static final synthetic access$durationOf(JI)J
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lkotlin/time/DurationKt;->durationOf(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$durationOfMillis(J)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->durationOfMillis(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$durationOfMillisNormalized(J)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->durationOfMillisNormalized(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$durationOfNanos(J)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->durationOfNanos(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$durationOfNanosNormalized(J)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->durationOfNanosNormalized(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$millisToNanos(J)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->millisToNanos(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$nanosToMillis(J)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->nanosToMillis(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$parseDuration(Ljava/lang/String;Z)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->parseDuration(Ljava/lang/String;Z)J

    move-result-wide p0

    return-wide p0
.end method

.method private static final durationOf(JI)J
    .locals 2

    const/4 v0, 0x1

    shl-long/2addr p0, v0

    int-to-long v0, p2

    add-long/2addr p0, v0

    .line 1476
    invoke-static {p0, p1}, Lkotlin/time/Duration;->constructor-impl(J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static final durationOfMillis(J)J
    .locals 2

    const/4 v0, 0x1

    shl-long/2addr p0, v0

    const-wide/16 v0, 0x1

    add-long/2addr p0, v0

    .line 1475
    invoke-static {p0, p1}, Lkotlin/time/Duration;->constructor-impl(J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static final durationOfMillisNormalized(J)J
    .locals 6

    .line 1485
    new-instance v0, Lkotlin/ranges/LongRange;

    const-wide v1, -0x431bde82d7aL

    const-wide v3, 0x431bde82d7aL

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/ranges/LongRange;-><init>(JJ)V

    invoke-virtual {v0, p0, p1}, Lkotlin/ranges/LongRange;->contains(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1486
    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->millisToNanos(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->durationOfNanos(J)J

    move-result-wide p0

    goto :goto_0

    :cond_0
    const-wide v2, -0x3fffffffffffffffL    # -2.0000000000000004

    const-wide v4, 0x3fffffffffffffffL    # 1.9999999999999998

    move-wide v0, p0

    .line 1488
    invoke-static/range {v0 .. v5}, Lkotlin/ranges/RangesKt;->coerceIn(JJJ)J

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->durationOfMillis(J)J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method private static final durationOfNanos(J)J
    .locals 1

    const/4 v0, 0x1

    shl-long/2addr p0, v0

    .line 1474
    invoke-static {p0, p1}, Lkotlin/time/Duration;->constructor-impl(J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static final durationOfNanosNormalized(J)J
    .locals 5

    .line 1478
    new-instance v0, Lkotlin/ranges/LongRange;

    const-wide v1, -0x3ffffffffffa14bfL    # -2.0000000001722644

    const-wide v3, 0x3ffffffffffa14bfL    # 1.9999999999138678

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/ranges/LongRange;-><init>(JJ)V

    invoke-virtual {v0, p0, p1}, Lkotlin/ranges/LongRange;->contains(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1479
    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->durationOfNanos(J)J

    move-result-wide p0

    goto :goto_0

    .line 1481
    :cond_0
    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->nanosToMillis(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->durationOfMillis(J)J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method private static final millisToNanos(J)J
    .locals 2

    .line 0
    const v0, 0xf4240

    int-to-long v0, v0

    mul-long/2addr p0, v0

    return-wide p0
.end method

.method private static final nanosToMillis(J)J
    .locals 2

    const v0, 0xf4240

    int-to-long v0, v0

    .line 1471
    div-long/2addr p0, v0

    return-wide p0
.end method

.method private static final parseDuration(Ljava/lang/String;Z)J
    .locals 26

    move-object/from16 v6, p0

    .line 1347
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_22

    .line 1350
    sget-object v8, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v8}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v9

    const-string v2, "Infinity"

    const/4 v11, 0x0

    .line 1352
    invoke-virtual {v6, v11}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    const/16 v3, 0x2d

    const/4 v12, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-ne v0, v3, :cond_1

    :goto_0
    move v13, v12

    goto :goto_1

    :cond_1
    move v13, v11

    :goto_1
    if-lez v13, :cond_2

    move v14, v12

    goto :goto_2

    :cond_2
    move v14, v11

    :goto_2
    const/4 v0, 0x2

    const/4 v15, 0x0

    if-eqz v14, :cond_3

    .line 1356
    invoke-static {v6, v3, v11, v0, v15}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move/from16 v16, v12

    goto :goto_3

    :cond_3
    move/from16 v16, v11

    :goto_3
    const-string v5, "No components"

    if-le v7, v13, :cond_21

    .line 1360
    invoke-virtual {v6, v13}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x50

    const-string v4, "Unexpected order of duration components"

    move-object/from16 v17, v5

    const/16 v5, 0x39

    const/16 v0, 0x30

    const-string v11, "substring(...)"

    const-string v15, "null cannot be cast to non-null type java.lang.String"

    if-ne v1, v3, :cond_f

    add-int/2addr v13, v12

    if-eq v13, v7, :cond_e

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_4
    if-ge v13, v7, :cond_1e

    .line 1366
    invoke-virtual {v6, v13}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v8, 0x54

    if-ne v3, v8, :cond_5

    if-nez v1, :cond_4

    add-int/lit8 v13, v13, 0x1

    if-eq v13, v7, :cond_4

    move v1, v12

    goto :goto_4

    .line 1367
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_5
    move v3, v13

    .line 1451
    :goto_5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v3, v8, :cond_7

    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 1371
    new-instance v14, Lkotlin/ranges/CharRange;

    invoke-direct {v14, v0, v5}, Lkotlin/ranges/CharRange;-><init>(CC)V

    invoke-virtual {v14, v8}, Lkotlin/ranges/CharRange;->contains(C)Z

    move-result v14

    if-nez v14, :cond_6

    const-string v14, "+-."

    const/4 v0, 0x0

    const/4 v5, 0x2

    const/4 v12, 0x0

    invoke-static {v14, v8, v0, v5, v12}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    goto :goto_6

    :cond_6
    const/4 v5, 0x2

    const/4 v12, 0x0

    :goto_6
    add-int/lit8 v3, v3, 0x1

    const/16 v0, 0x30

    const/16 v5, 0x39

    const/4 v12, 0x1

    goto :goto_5

    :cond_7
    const/4 v5, 0x2

    const/4 v12, 0x0

    .line 1447
    :cond_8
    invoke-static {v6, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v13, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1372
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eqz v3, :cond_d

    .line 1373
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v13, v3

    if-ltz v13, :cond_c

    .line 1374
    invoke-static/range {p0 .. p0}, Lkotlin/text/StringsKt;->getLastIndex(Ljava/lang/CharSequence;)I

    move-result v3

    if-gt v13, v3, :cond_c

    invoke-interface {v6, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    add-int/lit8 v13, v13, 0x1

    .line 1376
    invoke-static {v3, v1}, Lkotlin/time/DurationUnitKt__DurationUnitKt;->durationUnitByIsoChar(CZ)Lkotlin/time/DurationUnit;

    move-result-object v3

    if-eqz v2, :cond_a

    .line 1377
    invoke-virtual {v2, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-lez v2, :cond_9

    goto :goto_7

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :goto_7
    const/16 v20, 0x2e

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x6

    const/16 v24, 0x0

    move-object/from16 v19, v0

    .line 1379
    invoke-static/range {v19 .. v24}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v2

    .line 1380
    sget-object v8, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    if-ne v3, v8, :cond_b

    if-lez v2, :cond_b

    .line 1381
    invoke-static {v0, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    invoke-virtual {v0, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move/from16 p1, v13

    .line 1382
    invoke-static {v14}, Lkotlin/time/DurationKt;->parseOverLongIsoComponent(Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {v12, v13, v3}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v12

    invoke-static {v9, v10, v12, v13}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    move-result-wide v8

    .line 1383
    invoke-static {v0, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    invoke-static {v12, v13, v3}, Lkotlin/time/DurationKt;->toDuration(DLkotlin/time/DurationUnit;)J

    move-result-wide v12

    invoke-static {v8, v9, v12, v13}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    move-result-wide v9

    :goto_8
    move/from16 v13, p1

    move-object v2, v3

    const/16 v0, 0x30

    const/16 v5, 0x39

    const/4 v12, 0x1

    goto/16 :goto_4

    :cond_b
    move/from16 p1, v13

    .line 1385
    invoke-static {v0}, Lkotlin/time/DurationKt;->parseOverLongIsoComponent(Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {v12, v13, v3}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v12

    invoke-static {v9, v10, v12, v13}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    move-result-wide v9

    goto :goto_8

    .line 1374
    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing unit for value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1372
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1361
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_f
    if-nez p1, :cond_20

    const/4 v3, 0x0

    sub-int v0, v7, v13

    const/16 v1, 0x8

    .line 1391
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/4 v12, 0x1

    const/16 v1, 0x30

    move-object/from16 v0, p0

    move v1, v13

    move-object/from16 v25, v4

    move v4, v5

    move-wide/from16 v20, v9

    move-object/from16 v9, v17

    const/16 v10, 0x39

    move v5, v12

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->regionMatches(Ljava/lang/String;ILjava/lang/String;IIZ)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1392
    invoke-virtual {v8}, Lkotlin/time/Duration$Companion;->getINFINITE-UwyO8pc()J

    move-result-wide v9

    goto/16 :goto_10

    :cond_10
    xor-int/lit8 v0, v14, 0x1

    if-eqz v14, :cond_12

    .line 1399
    invoke-virtual {v6, v13}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x28

    if-ne v1, v2, :cond_12

    invoke-static/range {p0 .. p0}, Lkotlin/text/StringsKt;->last(Ljava/lang/CharSequence;)C

    move-result v1

    const/16 v2, 0x29

    if-ne v1, v2, :cond_12

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v7, v7, -0x1

    if-eq v13, v7, :cond_11

    move-wide/from16 v2, v20

    const/4 v0, 0x0

    const/4 v1, 0x1

    :goto_9
    const/4 v4, 0x0

    goto :goto_a

    .line 1401
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    move v1, v0

    move-wide/from16 v2, v20

    const/4 v0, 0x0

    goto :goto_9

    :goto_a
    if-ge v13, v7, :cond_1d

    if-eqz v0, :cond_13

    if-eqz v1, :cond_13

    .line 1451
    :goto_b
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v13, v0, :cond_13

    invoke-virtual {v6, v13}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x20

    if-ne v0, v5, :cond_13

    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    :cond_13
    move v0, v13

    .line 1451
    :goto_c
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_15

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1408
    new-instance v8, Lkotlin/ranges/CharRange;

    const/16 v9, 0x30

    invoke-direct {v8, v9, v10}, Lkotlin/ranges/CharRange;-><init>(CC)V

    invoke-virtual {v8, v5}, Lkotlin/ranges/CharRange;->contains(C)Z

    move-result v8

    if-nez v8, :cond_14

    const/16 v8, 0x2e

    if-ne v5, v8, :cond_16

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_15
    const/16 v9, 0x30

    .line 1447
    :cond_16
    invoke-static {v6, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v13, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1409
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-eqz v5, :cond_1c

    .line 1410
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v13, v5

    move v5, v13

    .line 1451
    :goto_d
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v5, v8, :cond_17

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 1411
    new-instance v12, Lkotlin/ranges/CharRange;

    const/16 v14, 0x61

    const/16 v9, 0x7a

    invoke-direct {v12, v14, v9}, Lkotlin/ranges/CharRange;-><init>(CC)V

    invoke-virtual {v12, v8}, Lkotlin/ranges/CharRange;->contains(C)Z

    move-result v8

    if-eqz v8, :cond_17

    add-int/lit8 v5, v5, 0x1

    const/16 v9, 0x30

    goto :goto_d

    .line 1447
    :cond_17
    invoke-static {v6, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v13, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1412
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v13, v8

    .line 1413
    invoke-static {v5}, Lkotlin/time/DurationUnitKt__DurationUnitKt;->durationUnitByShortName(Ljava/lang/String;)Lkotlin/time/DurationUnit;

    move-result-object v5

    if-eqz v4, :cond_18

    .line 1414
    invoke-virtual {v4, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-lez v4, :cond_19

    :cond_18
    move-object/from16 v4, v25

    goto :goto_e

    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    move-object/from16 v4, v25

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_e
    const/16 v19, 0x2e

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x6

    const/16 v23, 0x0

    move-object/from16 v18, v0

    .line 1416
    invoke-static/range {v18 .. v23}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v8

    if-lez v8, :cond_1b

    .line 1418
    invoke-static {v0, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    invoke-virtual {v0, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1419
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v9, v10, v5}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v9

    invoke-static {v2, v3, v9, v10}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    move-result-wide v2

    .line 1420
    invoke-static {v0, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-static {v8, v9, v5}, Lkotlin/time/DurationKt;->toDuration(DLkotlin/time/DurationUnit;)J

    move-result-wide v8

    invoke-static {v2, v3, v8, v9}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    move-result-wide v2

    if-lt v13, v7, :cond_1a

    :goto_f
    move-object/from16 v25, v4

    move-object v4, v5

    const/4 v0, 0x1

    const/16 v10, 0x39

    goto/16 :goto_a

    .line 1421
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Fractional component must be last"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1423
    :cond_1b
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9, v5}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v8

    invoke-static {v2, v3, v8, v9}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    move-result-wide v2

    goto :goto_f

    .line 1409
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1d
    move-wide v9, v2

    :cond_1e
    :goto_10
    if-eqz v16, :cond_1f

    .line 1428
    invoke-static {v9, v10}, Lkotlin/time/Duration;->unaryMinus-UwyO8pc(J)J

    move-result-wide v9

    :cond_1f
    return-wide v9

    .line 1390
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_21
    move-object v9, v5

    .line 1359
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1348
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The string is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final parseOverLongIsoComponent(Ljava/lang/String;)J
    .locals 9

    .line 1433
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-lez v0, :cond_0

    const-string v5, "+-"

    .line 1435
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v5, v6, v4, v3, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v1

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    sub-int/2addr v0, v5

    const/16 v6, 0x10

    if-le v0, v6, :cond_5

    .line 1436
    new-instance v0, Lkotlin/ranges/IntRange;

    invoke-static {p0}, Lkotlin/text/StringsKt;->getLastIndex(Ljava/lang/CharSequence;)I

    move-result v6

    invoke-direct {v0, v5, v6}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 1726
    instance-of v5, v0, Ljava/util/Collection;

    if-eqz v5, :cond_1

    move-object v5, v0

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 1727
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v0

    check-cast v5, Lkotlin/collections/IntIterator;

    invoke-virtual {v5}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v5

    .line 1436
    new-instance v6, Lkotlin/ranges/CharRange;

    const/16 v7, 0x30

    const/16 v8, 0x39

    invoke-direct {v6, v7, v8}, Lkotlin/ranges/CharRange;-><init>(CC)V

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v6, v5}, Lkotlin/ranges/CharRange;->contains(C)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_3

    .line 1438
    :cond_3
    :goto_1
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x2d

    if-ne p0, v0, :cond_4

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_2

    :cond_4
    const-wide v0, 0x7fffffffffffffffL

    :goto_2
    return-wide v0

    :cond_5
    :goto_3
    const-string v0, "+"

    .line 1441
    invoke-static {p0, v0, v4, v3, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p0, v1}, Lkotlin/text/StringsKt;->drop(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    :cond_6
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final toDuration(DLkotlin/time/DurationUnit;)J
    .locals 7

    const-string v0, "unit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1130
    sget-object v0, Lkotlin/time/DurationUnit;->NANOSECONDS:Lkotlin/time/DurationUnit;

    invoke-static {p0, p1, p2, v0}, Lkotlin/time/DurationUnitKt__DurationUnitJvmKt;->convertDurationUnit(DLkotlin/time/DurationUnit;Lkotlin/time/DurationUnit;)D

    move-result-wide v0

    .line 1131
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 1132
    invoke-static {v0, v1}, Lkotlin/math/MathKt;->roundToLong(D)J

    move-result-wide v0

    .line 1133
    new-instance v2, Lkotlin/ranges/LongRange;

    const-wide v3, -0x3ffffffffffa14bfL    # -2.0000000001722644

    const-wide v5, 0x3ffffffffffa14bfL    # 1.9999999999138678

    invoke-direct {v2, v3, v4, v5, v6}, Lkotlin/ranges/LongRange;-><init>(JJ)V

    invoke-virtual {v2, v0, v1}, Lkotlin/ranges/LongRange;->contains(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1134
    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->durationOfNanos(J)J

    move-result-wide p0

    goto :goto_0

    .line 1136
    :cond_0
    sget-object v0, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {p0, p1, p2, v0}, Lkotlin/time/DurationUnitKt__DurationUnitJvmKt;->convertDurationUnit(DLkotlin/time/DurationUnit;Lkotlin/time/DurationUnit;)D

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/math/MathKt;->roundToLong(D)J

    move-result-wide p0

    .line 1137
    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->durationOfMillisNormalized(J)J

    move-result-wide p0

    :goto_0
    return-wide p0

    .line 1131
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Duration value cannot be NaN."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final toDuration(JLkotlin/time/DurationUnit;)J
    .locals 7

    const-string v0, "unit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1111
    sget-object v0, Lkotlin/time/DurationUnit;->NANOSECONDS:Lkotlin/time/DurationUnit;

    const-wide v1, 0x3ffffffffffa14bfL    # 1.9999999999138678

    invoke-static {v1, v2, v0, p2}, Lkotlin/time/DurationUnitKt__DurationUnitJvmKt;->convertDurationUnitOverflow(JLkotlin/time/DurationUnit;Lkotlin/time/DurationUnit;)J

    move-result-wide v1

    .line 1112
    new-instance v3, Lkotlin/ranges/LongRange;

    neg-long v4, v1

    invoke-direct {v3, v4, v5, v1, v2}, Lkotlin/ranges/LongRange;-><init>(JJ)V

    invoke-virtual {v3, p0, p1}, Lkotlin/ranges/LongRange;->contains(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1113
    invoke-static {p0, p1, p2, v0}, Lkotlin/time/DurationUnitKt__DurationUnitJvmKt;->convertDurationUnitOverflow(JLkotlin/time/DurationUnit;Lkotlin/time/DurationUnit;)J

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->durationOfNanos(J)J

    move-result-wide p0

    return-wide p0

    .line 1115
    :cond_0
    sget-object v0, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {p0, p1, p2, v0}, Lkotlin/time/DurationUnitKt__DurationUnitJvmKt;->convertDurationUnit(JLkotlin/time/DurationUnit;Lkotlin/time/DurationUnit;)J

    move-result-wide v1

    const-wide v3, -0x3fffffffffffffffL    # -2.0000000000000004

    const-wide v5, 0x3fffffffffffffffL    # 1.9999999999999998

    .line 1116
    invoke-static/range {v1 .. v6}, Lkotlin/ranges/RangesKt;->coerceIn(JJJ)J

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->durationOfMillis(J)J

    move-result-wide p0

    return-wide p0
.end method
