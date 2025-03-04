.class public abstract Landroidx/compose/foundation/text/TextDelegateKt;
.super Ljava/lang/Object;
.source "TextDelegate.kt"


# direct methods
.method public static final ceilToIntPx(F)I
    .locals 2

    float-to-double v0, p0

    .line 302
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float p0, v0

    invoke-static {p0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p0

    return p0
.end method

.method public static final updateTextDelegate-rm0N8CA(Landroidx/compose/foundation/text/TextDelegate;Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;ZIIILjava/util/List;)Landroidx/compose/foundation/text/TextDelegate;
    .locals 13

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p9

    const-string v0, "current"

    move-object v3, p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "style"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "density"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fontFamilyResolver"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placeholders"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    invoke-virtual {p0}, Landroidx/compose/foundation/text/TextDelegate;->getText()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 324
    invoke-virtual {p0}, Landroidx/compose/foundation/text/TextDelegate;->getStyle()Landroidx/compose/ui/text/TextStyle;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 325
    invoke-virtual {p0}, Landroidx/compose/foundation/text/TextDelegate;->getSoftWrap()Z

    move-result v0

    move/from16 v5, p5

    if-ne v0, v5, :cond_3

    .line 326
    invoke-virtual {p0}, Landroidx/compose/foundation/text/TextDelegate;->getOverflow-gIe3tQ8()I

    move-result v0

    move/from16 v6, p6

    invoke-static {v0, v6}, Landroidx/compose/ui/text/style/TextOverflow;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 327
    invoke-virtual {p0}, Landroidx/compose/foundation/text/TextDelegate;->getMaxLines()I

    move-result v0

    move/from16 v4, p7

    if-ne v0, v4, :cond_1

    .line 328
    invoke-virtual {p0}, Landroidx/compose/foundation/text/TextDelegate;->getMinLines()I

    move-result v0

    move/from16 v10, p8

    if-ne v0, v10, :cond_5

    .line 329
    invoke-virtual {p0}, Landroidx/compose/foundation/text/TextDelegate;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object v0

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 330
    invoke-virtual {p0}, Landroidx/compose/foundation/text/TextDelegate;->getPlaceholders()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 331
    invoke-virtual {p0}, Landroidx/compose/foundation/text/TextDelegate;->getFontFamilyResolver()Landroidx/compose/ui/text/font/FontFamily$Resolver;

    move-result-object v0

    if-eq v0, v8, :cond_0

    goto :goto_3

    :cond_0
    move-object v11, v3

    goto :goto_4

    :cond_1
    :goto_0
    move/from16 v10, p8

    goto :goto_3

    :cond_2
    :goto_1
    move/from16 v4, p7

    goto :goto_0

    :cond_3
    :goto_2
    move/from16 v6, p6

    goto :goto_1

    :cond_4
    move/from16 v5, p5

    goto :goto_2

    .line 333
    :cond_5
    :goto_3
    new-instance v11, Landroidx/compose/foundation/text/TextDelegate;

    const/4 v12, 0x0

    move-object v0, v11

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p7

    move/from16 v4, p8

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p9

    move-object v10, v12

    invoke-direct/range {v0 .. v10}, Landroidx/compose/foundation/text/TextDelegate;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;IIZILandroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_4
    return-object v11
.end method

.method public static synthetic updateTextDelegate-rm0N8CA$default(Landroidx/compose/foundation/text/TextDelegate;Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;ZIIILjava/util/List;ILjava/lang/Object;)Landroidx/compose/foundation/text/TextDelegate;
    .locals 13

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v8, v2

    goto :goto_0

    :cond_0
    move/from16 v8, p5

    :goto_0
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_1

    .line 316
    sget-object v1, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->getClip-gIe3tQ8()I

    move-result v1

    move v9, v1

    goto :goto_1

    :cond_1
    move/from16 v9, p6

    :goto_1
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_2

    const v1, 0x7fffffff

    move v10, v1

    goto :goto_2

    :cond_2
    move/from16 v10, p7

    :goto_2
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_3

    move v11, v2

    goto :goto_3

    :cond_3
    move/from16 v11, p8

    :goto_3
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v12, p9

    .line 309
    invoke-static/range {v3 .. v12}, Landroidx/compose/foundation/text/TextDelegateKt;->updateTextDelegate-rm0N8CA(Landroidx/compose/foundation/text/TextDelegate;Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;ZIIILjava/util/List;)Landroidx/compose/foundation/text/TextDelegate;

    move-result-object v0

    return-object v0
.end method
