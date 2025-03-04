.class public final Landroidx/compose/ui/platform/DecodeHelper;
.super Ljava/lang/Object;
.source "AndroidClipboardManager.android.kt"


# instance fields
.field private final parcel:Landroid/os/Parcel;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string v1, "obtain()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/compose/ui/platform/DecodeHelper;->parcel:Landroid/os/Parcel;

    const/4 v1, 0x0

    .line 293
    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 294
    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 295
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method

.method private final dataAvailable()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/DecodeHelper;->parcel:Landroid/os/Parcel;

    .line 473
    invoke-virtual {v0}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    return v0
.end method

.method private final decodeBaselineShift-y9eOQZs()F
    .locals 1

    .line 419
    invoke-direct {p0}, Landroidx/compose/ui/platform/DecodeHelper;->decodeFloat()F

    move-result v0

    invoke-static {v0}, Landroidx/compose/ui/text/style/BaselineShift;->constructor-impl(F)F

    move-result v0

    return v0
.end method

.method private final decodeByte()B
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/DecodeHelper;->parcel:Landroid/os/Parcel;

    .line 453
    invoke-virtual {v0}, Landroid/os/Parcel;->readByte()B

    move-result v0

    return v0
.end method

.method private final decodeFloat()F
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/DecodeHelper;->parcel:Landroid/os/Parcel;

    .line 465
    invoke-virtual {v0}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    return v0
.end method

.method private final decodeInt()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/DecodeHelper;->parcel:Landroid/os/Parcel;

    .line 457
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    return v0
.end method

.method private final decodeShadow()Landroidx/compose/ui/graphics/Shadow;
    .locals 8

    .line 445
    new-instance v7, Landroidx/compose/ui/graphics/Shadow;

    .line 446
    invoke-virtual {p0}, Landroidx/compose/ui/platform/DecodeHelper;->decodeColor-0d7_KjU()J

    move-result-wide v1

    .line 447
    invoke-direct {p0}, Landroidx/compose/ui/platform/DecodeHelper;->decodeFloat()F

    move-result v0

    invoke-direct {p0}, Landroidx/compose/ui/platform/DecodeHelper;->decodeFloat()F

    move-result v3

    invoke-static {v0, v3}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v3

    .line 448
    invoke-direct {p0}, Landroidx/compose/ui/platform/DecodeHelper;->decodeFloat()F

    move-result v5

    const/4 v6, 0x0

    move-object v0, v7

    .line 445
    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/graphics/Shadow;-><init>(JJFLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7
.end method

.method private final decodeString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/DecodeHelper;->parcel:Landroid/os/Parcel;

    .line 469
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final decodeTextDecoration()Landroidx/compose/ui/text/style/TextDecoration;
    .locals 6

    .line 430
    invoke-direct {p0}, Landroidx/compose/ui/platform/DecodeHelper;->decodeInt()I

    move-result v0

    .line 431
    sget-object v1, Landroidx/compose/ui/text/style/TextDecoration;->Companion:Landroidx/compose/ui/text/style/TextDecoration$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/text/style/TextDecoration$Companion;->getLineThrough()Landroidx/compose/ui/text/style/TextDecoration;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/text/style/TextDecoration;->getMask()I

    move-result v2

    and-int/2addr v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    .line 432
    :goto_0
    invoke-virtual {v1}, Landroidx/compose/ui/text/style/TextDecoration$Companion;->getUnderline()Landroidx/compose/ui/text/style/TextDecoration;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/ui/text/style/TextDecoration;->getMask()I

    move-result v5

    and-int/2addr v0, v5

    if-eqz v0, :cond_1

    move v0, v4

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    new-array v0, v0, [Landroidx/compose/ui/text/style/TextDecoration;

    .line 434
    invoke-virtual {v1}, Landroidx/compose/ui/text/style/TextDecoration$Companion;->getLineThrough()Landroidx/compose/ui/text/style/TextDecoration;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-virtual {v1}, Landroidx/compose/ui/text/style/TextDecoration$Companion;->getUnderline()Landroidx/compose/ui/text/style/TextDecoration;

    move-result-object v2

    aput-object v2, v0, v4

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/compose/ui/text/style/TextDecoration$Companion;->combine(Ljava/util/List;)Landroidx/compose/ui/text/style/TextDecoration;

    move-result-object v0

    goto :goto_2

    :cond_2
    if-eqz v2, :cond_3

    .line 436
    invoke-virtual {v1}, Landroidx/compose/ui/text/style/TextDecoration$Companion;->getLineThrough()Landroidx/compose/ui/text/style/TextDecoration;

    move-result-object v0

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_4

    .line 438
    invoke-virtual {v1}, Landroidx/compose/ui/text/style/TextDecoration$Companion;->getUnderline()Landroidx/compose/ui/text/style/TextDecoration;

    move-result-object v0

    goto :goto_2

    .line 440
    :cond_4
    invoke-virtual {v1}, Landroidx/compose/ui/text/style/TextDecoration$Companion;->getNone()Landroidx/compose/ui/text/style/TextDecoration;

    move-result-object v0

    :goto_2
    return-object v0
.end method

.method private final decodeTextGeometricTransform()Landroidx/compose/ui/text/style/TextGeometricTransform;
    .locals 3

    .line 423
    new-instance v0, Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 424
    invoke-direct {p0}, Landroidx/compose/ui/platform/DecodeHelper;->decodeFloat()F

    move-result v1

    .line 425
    invoke-direct {p0}, Landroidx/compose/ui/platform/DecodeHelper;->decodeFloat()F

    move-result v2

    .line 423
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/text/style/TextGeometricTransform;-><init>(FF)V

    return-object v0
.end method

.method private final decodeULong-s-VKNKU()J
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/platform/DecodeHelper;->parcel:Landroid/os/Parcel;

    .line 461
    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final decodeColor-0d7_KjU()J
    .locals 2

    .line 378
    invoke-direct {p0}, Landroidx/compose/ui/platform/DecodeHelper;->decodeULong-s-VKNKU()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->constructor-impl(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final decodeFontStyle-_-LCdwA()I
    .locals 2

    .line 401
    invoke-direct {p0}, Landroidx/compose/ui/platform/DecodeHelper;->decodeByte()B

    move-result v0

    if-nez v0, :cond_0

    .line 402
    sget-object v0, Landroidx/compose/ui/text/font/FontStyle;->Companion:Landroidx/compose/ui/text/font/FontStyle$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontStyle$Companion;->getNormal-_-LCdwA()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 403
    sget-object v0, Landroidx/compose/ui/text/font/FontStyle;->Companion:Landroidx/compose/ui/text/font/FontStyle$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontStyle$Companion;->getItalic-_-LCdwA()I

    move-result v0

    goto :goto_0

    .line 404
    :cond_1
    sget-object v0, Landroidx/compose/ui/text/font/FontStyle;->Companion:Landroidx/compose/ui/text/font/FontStyle$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontStyle$Companion;->getNormal-_-LCdwA()I

    move-result v0

    :goto_0
    return v0
.end method

.method public final decodeFontSynthesis-GVVA2EU()I
    .locals 2

    .line 409
    invoke-direct {p0}, Landroidx/compose/ui/platform/DecodeHelper;->decodeByte()B

    move-result v0

    if-nez v0, :cond_0

    .line 410
    sget-object v0, Landroidx/compose/ui/text/font/FontSynthesis;->Companion:Landroidx/compose/ui/text/font/FontSynthesis$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontSynthesis$Companion;->getNone-GVVA2EU()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 411
    sget-object v0, Landroidx/compose/ui/text/font/FontSynthesis;->Companion:Landroidx/compose/ui/text/font/FontSynthesis$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontSynthesis$Companion;->getAll-GVVA2EU()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 412
    sget-object v0, Landroidx/compose/ui/text/font/FontSynthesis;->Companion:Landroidx/compose/ui/text/font/FontSynthesis$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontSynthesis$Companion;->getStyle-GVVA2EU()I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 413
    sget-object v0, Landroidx/compose/ui/text/font/FontSynthesis;->Companion:Landroidx/compose/ui/text/font/FontSynthesis$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontSynthesis$Companion;->getWeight-GVVA2EU()I

    move-result v0

    goto :goto_0

    .line 414
    :cond_3
    sget-object v0, Landroidx/compose/ui/text/font/FontSynthesis;->Companion:Landroidx/compose/ui/text/font/FontSynthesis$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontSynthesis$Companion;->getNone-GVVA2EU()I

    move-result v0

    :goto_0
    return v0
.end method

.method public final decodeFontWeight()Landroidx/compose/ui/text/font/FontWeight;
    .locals 2

    .line 397
    new-instance v0, Landroidx/compose/ui/text/font/FontWeight;

    invoke-direct {p0}, Landroidx/compose/ui/platform/DecodeHelper;->decodeInt()I

    move-result v1

    invoke-direct {v0, v1}, Landroidx/compose/ui/text/font/FontWeight;-><init>(I)V

    return-object v0
.end method

.method public final decodeSpanStyle()Landroidx/compose/ui/text/SpanStyle;
    .locals 22

    .line 300
    new-instance v15, Landroidx/compose/ui/platform/MutableSpanStyle;

    move-object v0, v15

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v16, 0x0

    move-object/from16 v21, v15

    move-wide/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x3fff

    const/16 v20, 0x0

    invoke-direct/range {v0 .. v20}, Landroidx/compose/ui/platform/MutableSpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, p0

    :goto_0
    iget-object v1, v0, Landroidx/compose/ui/platform/DecodeHelper;->parcel:Landroid/os/Parcel;

    .line 301
    invoke-virtual {v1}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 302
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/platform/DecodeHelper;->decodeByte()B

    move-result v1

    const/16 v3, 0x8

    if-ne v1, v2, :cond_1

    .line 304
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/platform/DecodeHelper;->dataAvailable()I

    move-result v1

    if-lt v1, v3, :cond_0

    .line 305
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/platform/DecodeHelper;->decodeColor-0d7_KjU()J

    move-result-wide v1

    move-object/from16 v4, v21

    invoke-virtual {v4, v1, v2}, Landroidx/compose/ui/platform/MutableSpanStyle;->setColor-8_81llA(J)V

    goto :goto_0

    :cond_0
    move-object/from16 v4, v21

    goto/16 :goto_2

    :cond_1
    move-object/from16 v4, v21

    const/4 v5, 0x2

    const/4 v6, 0x5

    if-ne v1, v5, :cond_3

    .line 310
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/platform/DecodeHelper;->dataAvailable()I

    move-result v1

    if-lt v1, v6, :cond_d

    .line 311
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/platform/DecodeHelper;->decodeTextUnit-XSAIIZE()J

    move-result-wide v1

    invoke-virtual {v4, v1, v2}, Landroidx/compose/ui/platform/MutableSpanStyle;->setFontSize--R2X_6o(J)V

    :cond_2
    :goto_1
    move-object/from16 v21, v4

    goto :goto_0

    :cond_3
    const/4 v5, 0x3

    const/4 v7, 0x4

    if-ne v1, v5, :cond_4

    .line 316
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/platform/DecodeHelper;->dataAvailable()I

    move-result v1

    if-lt v1, v7, :cond_d

    .line 317
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/platform/DecodeHelper;->decodeFontWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroidx/compose/ui/platform/MutableSpanStyle;->setFontWeight(Landroidx/compose/ui/text/font/FontWeight;)V

    goto :goto_1

    :cond_4
    if-ne v1, v7, :cond_5

    .line 322
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/platform/DecodeHelper;->dataAvailable()I

    move-result v1

    if-lt v1, v2, :cond_d

    .line 323
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/platform/DecodeHelper;->decodeFontStyle-_-LCdwA()I

    move-result v1

    invoke-static {v1}, Landroidx/compose/ui/text/font/FontStyle;->box-impl(I)Landroidx/compose/ui/text/font/FontStyle;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroidx/compose/ui/platform/MutableSpanStyle;->setFontStyle-mLjRB2g(Landroidx/compose/ui/text/font/FontStyle;)V

    goto :goto_1

    :cond_5
    if-ne v1, v6, :cond_6

    .line 328
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/platform/DecodeHelper;->dataAvailable()I

    move-result v1

    if-lt v1, v2, :cond_d

    .line 329
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/platform/DecodeHelper;->decodeFontSynthesis-GVVA2EU()I

    move-result v1

    invoke-static {v1}, Landroidx/compose/ui/text/font/FontSynthesis;->box-impl(I)Landroidx/compose/ui/text/font/FontSynthesis;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroidx/compose/ui/platform/MutableSpanStyle;->setFontSynthesis-tDdu0R4(Landroidx/compose/ui/text/font/FontSynthesis;)V

    goto :goto_1

    :cond_6
    const/4 v2, 0x6

    if-ne v1, v2, :cond_7

    .line 334
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/platform/DecodeHelper;->decodeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroidx/compose/ui/platform/MutableSpanStyle;->setFontFeatureSettings(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    const/4 v2, 0x7

    if-ne v1, v2, :cond_8

    .line 336
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/platform/DecodeHelper;->dataAvailable()I

    move-result v1

    if-lt v1, v6, :cond_d

    .line 337
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/platform/DecodeHelper;->decodeTextUnit-XSAIIZE()J

    move-result-wide v1

    invoke-virtual {v4, v1, v2}, Landroidx/compose/ui/platform/MutableSpanStyle;->setLetterSpacing--R2X_6o(J)V

    goto :goto_1

    :cond_8
    if-ne v1, v3, :cond_9

    .line 342
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/platform/DecodeHelper;->dataAvailable()I

    move-result v1

    if-lt v1, v7, :cond_d

    .line 343
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/platform/DecodeHelper;->decodeBaselineShift-y9eOQZs()F

    move-result v1

    invoke-static {v1}, Landroidx/compose/ui/text/style/BaselineShift;->box-impl(F)Landroidx/compose/ui/text/style/BaselineShift;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroidx/compose/ui/platform/MutableSpanStyle;->setBaselineShift-_isdbwI(Landroidx/compose/ui/text/style/BaselineShift;)V

    goto :goto_1

    :cond_9
    const/16 v2, 0x9

    if-ne v1, v2, :cond_a

    .line 348
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/platform/DecodeHelper;->dataAvailable()I

    move-result v1

    if-lt v1, v3, :cond_d

    .line 349
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/platform/DecodeHelper;->decodeTextGeometricTransform()Landroidx/compose/ui/text/style/TextGeometricTransform;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroidx/compose/ui/platform/MutableSpanStyle;->setTextGeometricTransform(Landroidx/compose/ui/text/style/TextGeometricTransform;)V

    goto :goto_1

    :cond_a
    const/16 v2, 0xa

    if-ne v1, v2, :cond_b

    .line 354
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/platform/DecodeHelper;->dataAvailable()I

    move-result v1

    if-lt v1, v3, :cond_d

    .line 355
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/platform/DecodeHelper;->decodeColor-0d7_KjU()J

    move-result-wide v1

    invoke-virtual {v4, v1, v2}, Landroidx/compose/ui/platform/MutableSpanStyle;->setBackground-8_81llA(J)V

    goto/16 :goto_1

    :cond_b
    const/16 v2, 0xb

    if-ne v1, v2, :cond_c

    .line 360
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/platform/DecodeHelper;->dataAvailable()I

    move-result v1

    if-lt v1, v7, :cond_d

    .line 361
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/platform/DecodeHelper;->decodeTextDecoration()Landroidx/compose/ui/text/style/TextDecoration;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroidx/compose/ui/platform/MutableSpanStyle;->setTextDecoration(Landroidx/compose/ui/text/style/TextDecoration;)V

    goto/16 :goto_1

    :cond_c
    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    .line 366
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/platform/DecodeHelper;->dataAvailable()I

    move-result v1

    const/16 v2, 0x14

    if-lt v1, v2, :cond_d

    .line 367
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/platform/DecodeHelper;->decodeShadow()Landroidx/compose/ui/graphics/Shadow;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroidx/compose/ui/platform/MutableSpanStyle;->setShadow(Landroidx/compose/ui/graphics/Shadow;)V

    goto/16 :goto_1

    .line 374
    :cond_d
    :goto_2
    invoke-virtual {v4}, Landroidx/compose/ui/platform/MutableSpanStyle;->toSpanStyle()Landroidx/compose/ui/text/SpanStyle;

    move-result-object v1

    return-object v1
.end method

.method public final decodeTextUnit-XSAIIZE()J
    .locals 4

    .line 383
    invoke-direct {p0}, Landroidx/compose/ui/platform/DecodeHelper;->decodeByte()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 384
    sget-object v0, Landroidx/compose/ui/unit/TextUnitType;->Companion:Landroidx/compose/ui/unit/TextUnitType$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/TextUnitType$Companion;->getSp-UIouoOA()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 385
    sget-object v0, Landroidx/compose/ui/unit/TextUnitType;->Companion:Landroidx/compose/ui/unit/TextUnitType$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/TextUnitType$Companion;->getEm-UIouoOA()J

    move-result-wide v0

    goto :goto_0

    .line 386
    :cond_1
    sget-object v0, Landroidx/compose/ui/unit/TextUnitType;->Companion:Landroidx/compose/ui/unit/TextUnitType$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/TextUnitType$Companion;->getUnspecified-UIouoOA()J

    move-result-wide v0

    .line 388
    :goto_0
    sget-object v2, Landroidx/compose/ui/unit/TextUnitType;->Companion:Landroidx/compose/ui/unit/TextUnitType$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/unit/TextUnitType$Companion;->getUnspecified-UIouoOA()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 389
    sget-object v0, Landroidx/compose/ui/unit/TextUnit;->Companion:Landroidx/compose/ui/unit/TextUnit$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/TextUnit$Companion;->getUnspecified-XSAIIZE()J

    move-result-wide v0

    return-wide v0

    .line 391
    :cond_2
    invoke-direct {p0}, Landroidx/compose/ui/platform/DecodeHelper;->decodeFloat()F

    move-result v2

    .line 392
    invoke-static {v2, v0, v1}, Landroidx/compose/ui/unit/TextUnitKt;->TextUnit-anM5pPY(FJ)J

    move-result-wide v0

    return-wide v0
.end method
