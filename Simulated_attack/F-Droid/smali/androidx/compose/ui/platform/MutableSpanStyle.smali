.class final Landroidx/compose/ui/platform/MutableSpanStyle;
.super Ljava/lang/Object;
.source "AndroidClipboardManager.android.kt"


# instance fields
.field private background:J

.field private baselineShift:Landroidx/compose/ui/text/style/BaselineShift;

.field private color:J

.field private fontFamily:Landroidx/compose/ui/text/font/FontFamily;

.field private fontFeatureSettings:Ljava/lang/String;

.field private fontSize:J

.field private fontStyle:Landroidx/compose/ui/text/font/FontStyle;

.field private fontSynthesis:Landroidx/compose/ui/text/font/FontSynthesis;

.field private fontWeight:Landroidx/compose/ui/text/font/FontWeight;

.field private letterSpacing:J

.field private localeList:Landroidx/compose/ui/text/intl/LocaleList;

.field private shadow:Landroidx/compose/ui/graphics/Shadow;

.field private textDecoration:Landroidx/compose/ui/text/style/TextDecoration;

.field private textGeometricTransform:Landroidx/compose/ui/text/style/TextGeometricTransform;


# direct methods
.method private constructor <init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;)V
    .locals 3

    move-object v0, p0

    .line 477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    iput-wide v1, v0, Landroidx/compose/ui/platform/MutableSpanStyle;->color:J

    move-wide v1, p3

    iput-wide v1, v0, Landroidx/compose/ui/platform/MutableSpanStyle;->fontSize:J

    move-object v1, p5

    iput-object v1, v0, Landroidx/compose/ui/platform/MutableSpanStyle;->fontWeight:Landroidx/compose/ui/text/font/FontWeight;

    move-object v1, p6

    iput-object v1, v0, Landroidx/compose/ui/platform/MutableSpanStyle;->fontStyle:Landroidx/compose/ui/text/font/FontStyle;

    move-object v1, p7

    iput-object v1, v0, Landroidx/compose/ui/platform/MutableSpanStyle;->fontSynthesis:Landroidx/compose/ui/text/font/FontSynthesis;

    move-object v1, p8

    iput-object v1, v0, Landroidx/compose/ui/platform/MutableSpanStyle;->fontFamily:Landroidx/compose/ui/text/font/FontFamily;

    move-object v1, p9

    iput-object v1, v0, Landroidx/compose/ui/platform/MutableSpanStyle;->fontFeatureSettings:Ljava/lang/String;

    move-wide v1, p10

    iput-wide v1, v0, Landroidx/compose/ui/platform/MutableSpanStyle;->letterSpacing:J

    move-object v1, p12

    iput-object v1, v0, Landroidx/compose/ui/platform/MutableSpanStyle;->baselineShift:Landroidx/compose/ui/text/style/BaselineShift;

    move-object/from16 v1, p13

    iput-object v1, v0, Landroidx/compose/ui/platform/MutableSpanStyle;->textGeometricTransform:Landroidx/compose/ui/text/style/TextGeometricTransform;

    move-object/from16 v1, p14

    iput-object v1, v0, Landroidx/compose/ui/platform/MutableSpanStyle;->localeList:Landroidx/compose/ui/text/intl/LocaleList;

    move-wide/from16 v1, p15

    iput-wide v1, v0, Landroidx/compose/ui/platform/MutableSpanStyle;->background:J

    move-object/from16 v1, p17

    iput-object v1, v0, Landroidx/compose/ui/platform/MutableSpanStyle;->textDecoration:Landroidx/compose/ui/text/style/TextDecoration;

    move-object/from16 v1, p18

    iput-object v1, v0, Landroidx/compose/ui/platform/MutableSpanStyle;->shadow:Landroidx/compose/ui/graphics/Shadow;

    return-void
.end method

.method public synthetic constructor <init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 19

    move/from16 v0, p19

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 478
    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    move-wide/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    .line 479
    sget-object v3, Landroidx/compose/ui/unit/TextUnit;->Companion:Landroidx/compose/ui/unit/TextUnit$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/unit/TextUnit$Companion;->getUnspecified-XSAIIZE()J

    move-result-wide v3

    goto :goto_1

    :cond_1
    move-wide/from16 v3, p3

    :goto_1
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    move-object/from16 v5, p5

    :goto_2
    and-int/lit8 v7, v0, 0x8

    if-eqz v7, :cond_3

    const/4 v7, 0x0

    goto :goto_3

    :cond_3
    move-object/from16 v7, p6

    :goto_3
    and-int/lit8 v8, v0, 0x10

    if-eqz v8, :cond_4

    const/4 v8, 0x0

    goto :goto_4

    :cond_4
    move-object/from16 v8, p7

    :goto_4
    and-int/lit8 v9, v0, 0x20

    if-eqz v9, :cond_5

    const/4 v9, 0x0

    goto :goto_5

    :cond_5
    move-object/from16 v9, p8

    :goto_5
    and-int/lit8 v10, v0, 0x40

    if-eqz v10, :cond_6

    const/4 v10, 0x0

    goto :goto_6

    :cond_6
    move-object/from16 v10, p9

    :goto_6
    and-int/lit16 v11, v0, 0x80

    if-eqz v11, :cond_7

    .line 485
    sget-object v11, Landroidx/compose/ui/unit/TextUnit;->Companion:Landroidx/compose/ui/unit/TextUnit$Companion;

    invoke-virtual {v11}, Landroidx/compose/ui/unit/TextUnit$Companion;->getUnspecified-XSAIIZE()J

    move-result-wide v11

    goto :goto_7

    :cond_7
    move-wide/from16 v11, p10

    :goto_7
    and-int/lit16 v13, v0, 0x100

    if-eqz v13, :cond_8

    const/4 v13, 0x0

    goto :goto_8

    :cond_8
    move-object/from16 v13, p12

    :goto_8
    and-int/lit16 v14, v0, 0x200

    if-eqz v14, :cond_9

    const/4 v14, 0x0

    goto :goto_9

    :cond_9
    move-object/from16 v14, p13

    :goto_9
    and-int/lit16 v15, v0, 0x400

    if-eqz v15, :cond_a

    const/4 v15, 0x0

    goto :goto_a

    :cond_a
    move-object/from16 v15, p14

    :goto_a
    and-int/lit16 v6, v0, 0x800

    if-eqz v6, :cond_b

    .line 489
    sget-object v6, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v16

    goto :goto_b

    :cond_b
    move-wide/from16 v16, p15

    :goto_b
    and-int/lit16 v6, v0, 0x1000

    if-eqz v6, :cond_c

    const/4 v6, 0x0

    goto :goto_c

    :cond_c
    move-object/from16 v6, p17

    :goto_c
    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    goto :goto_d

    :cond_d
    move-object/from16 v0, p18

    :goto_d
    const/16 v18, 0x0

    move-object/from16 p20, v18

    move-object/from16 p1, p0

    move-wide/from16 p2, v1

    move-wide/from16 p4, v3

    move-object/from16 p6, v5

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-wide/from16 p11, v11

    move-object/from16 p13, v13

    move-object/from16 p14, v14

    move-object/from16 p15, v15

    move-wide/from16 p16, v16

    move-object/from16 p18, v6

    move-object/from16 p19, v0

    .line 477
    invoke-direct/range {p1 .. p20}, Landroidx/compose/ui/platform/MutableSpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p18}, Landroidx/compose/ui/platform/MutableSpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;)V

    return-void
.end method


# virtual methods
.method public final setBackground-8_81llA(J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Landroidx/compose/ui/platform/MutableSpanStyle;->background:J

    return-void
.end method

.method public final setBaselineShift-_isdbwI(Landroidx/compose/ui/text/style/BaselineShift;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/ui/platform/MutableSpanStyle;->baselineShift:Landroidx/compose/ui/text/style/BaselineShift;

    return-void
.end method

.method public final setColor-8_81llA(J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Landroidx/compose/ui/platform/MutableSpanStyle;->color:J

    return-void
.end method

.method public final setFontFeatureSettings(Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/ui/platform/MutableSpanStyle;->fontFeatureSettings:Ljava/lang/String;

    return-void
.end method

.method public final setFontSize--R2X_6o(J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Landroidx/compose/ui/platform/MutableSpanStyle;->fontSize:J

    return-void
.end method

.method public final setFontStyle-mLjRB2g(Landroidx/compose/ui/text/font/FontStyle;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/ui/platform/MutableSpanStyle;->fontStyle:Landroidx/compose/ui/text/font/FontStyle;

    return-void
.end method

.method public final setFontSynthesis-tDdu0R4(Landroidx/compose/ui/text/font/FontSynthesis;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/ui/platform/MutableSpanStyle;->fontSynthesis:Landroidx/compose/ui/text/font/FontSynthesis;

    return-void
.end method

.method public final setFontWeight(Landroidx/compose/ui/text/font/FontWeight;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/ui/platform/MutableSpanStyle;->fontWeight:Landroidx/compose/ui/text/font/FontWeight;

    return-void
.end method

.method public final setLetterSpacing--R2X_6o(J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Landroidx/compose/ui/platform/MutableSpanStyle;->letterSpacing:J

    return-void
.end method

.method public final setShadow(Landroidx/compose/ui/graphics/Shadow;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/ui/platform/MutableSpanStyle;->shadow:Landroidx/compose/ui/graphics/Shadow;

    return-void
.end method

.method public final setTextDecoration(Landroidx/compose/ui/text/style/TextDecoration;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/ui/platform/MutableSpanStyle;->textDecoration:Landroidx/compose/ui/text/style/TextDecoration;

    return-void
.end method

.method public final setTextGeometricTransform(Landroidx/compose/ui/text/style/TextGeometricTransform;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/ui/platform/MutableSpanStyle;->textGeometricTransform:Landroidx/compose/ui/text/style/TextGeometricTransform;

    return-void
.end method

.method public final toSpanStyle()Landroidx/compose/ui/text/SpanStyle;
    .locals 28

    move-object/from16 v0, p0

    .line 494
    new-instance v24, Landroidx/compose/ui/text/SpanStyle;

    move-object/from16 v1, v24

    iget-wide v2, v0, Landroidx/compose/ui/platform/MutableSpanStyle;->color:J

    iget-wide v4, v0, Landroidx/compose/ui/platform/MutableSpanStyle;->fontSize:J

    iget-object v6, v0, Landroidx/compose/ui/platform/MutableSpanStyle;->fontWeight:Landroidx/compose/ui/text/font/FontWeight;

    iget-object v7, v0, Landroidx/compose/ui/platform/MutableSpanStyle;->fontStyle:Landroidx/compose/ui/text/font/FontStyle;

    iget-object v8, v0, Landroidx/compose/ui/platform/MutableSpanStyle;->fontSynthesis:Landroidx/compose/ui/text/font/FontSynthesis;

    iget-object v9, v0, Landroidx/compose/ui/platform/MutableSpanStyle;->fontFamily:Landroidx/compose/ui/text/font/FontFamily;

    iget-object v10, v0, Landroidx/compose/ui/platform/MutableSpanStyle;->fontFeatureSettings:Ljava/lang/String;

    iget-wide v11, v0, Landroidx/compose/ui/platform/MutableSpanStyle;->letterSpacing:J

    iget-object v13, v0, Landroidx/compose/ui/platform/MutableSpanStyle;->baselineShift:Landroidx/compose/ui/text/style/BaselineShift;

    iget-object v14, v0, Landroidx/compose/ui/platform/MutableSpanStyle;->textGeometricTransform:Landroidx/compose/ui/text/style/TextGeometricTransform;

    iget-object v15, v0, Landroidx/compose/ui/platform/MutableSpanStyle;->localeList:Landroidx/compose/ui/text/intl/LocaleList;

    move-object/from16 v25, v1

    move-wide/from16 v26, v2

    iget-wide v1, v0, Landroidx/compose/ui/platform/MutableSpanStyle;->background:J

    move-wide/from16 v16, v1

    iget-object v1, v0, Landroidx/compose/ui/platform/MutableSpanStyle;->textDecoration:Landroidx/compose/ui/text/style/TextDecoration;

    move-object/from16 v18, v1

    iget-object v1, v0, Landroidx/compose/ui/platform/MutableSpanStyle;->shadow:Landroidx/compose/ui/graphics/Shadow;

    move-object/from16 v19, v1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const v22, 0xc000

    const/16 v23, 0x0

    move-object/from16 v1, v25

    move-wide/from16 v2, v26

    invoke-direct/range {v1 .. v23}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/PlatformSpanStyle;Landroidx/compose/ui/graphics/drawscope/DrawStyle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v24
.end method
