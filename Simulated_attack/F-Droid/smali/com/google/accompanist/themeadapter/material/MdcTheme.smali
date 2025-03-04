.class public abstract Lcom/google/accompanist/themeadapter/material/MdcTheme;
.super Ljava/lang/Object;
.source "MdcTheme.kt"


# static fields
.field private static final emptyShapes:Landroidx/compose/material/Shapes;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 370
    new-instance v6, Landroidx/compose/material/Shapes;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroidx/compose/material/Shapes;-><init>(Landroidx/compose/foundation/shape/CornerBasedShape;Landroidx/compose/foundation/shape/CornerBasedShape;Landroidx/compose/foundation/shape/CornerBasedShape;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v6, Lcom/google/accompanist/themeadapter/material/MdcTheme;->emptyShapes:Landroidx/compose/material/Shapes;

    return-void
.end method

.method public static final createMdcTheme(Landroid/content/Context;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;ZZZZZ)Lcom/google/accompanist/themeadapter/material/ThemeParameters;
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p6

    const-string v4, "context"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "layoutDirection"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "density"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    sget-object v4, Lcom/google/accompanist/themeadapter/material/R$styleable;->ThemeAdapterMaterialTheme:[I

    invoke-virtual {v0, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v4

    const-string v5, "context.obtainStyledAttr\u2026hemeAdapterMaterialTheme)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    sget v5, Lcom/google/accompanist/themeadapter/material/R$styleable;->ThemeAdapterMaterialTheme_isMaterialTheme:I

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v11, 0x0

    if-eqz p3, :cond_1

    .line 180
    sget v6, Lcom/google/accompanist/themeadapter/material/R$styleable;->ThemeAdapterMaterialTheme_colorPrimary:I

    const-wide/16 v7, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    move-object v5, v4

    invoke-static/range {v5 .. v10}, Lcom/google/accompanist/themeadapter/core/ResourceUtilsKt;->parseColor-mxwnekA$default(Landroid/content/res/TypedArray;IJILjava/lang/Object;)J

    move-result-wide v12

    .line 181
    sget v6, Lcom/google/accompanist/themeadapter/material/R$styleable;->ThemeAdapterMaterialTheme_colorPrimaryVariant:I

    invoke-static/range {v5 .. v10}, Lcom/google/accompanist/themeadapter/core/ResourceUtilsKt;->parseColor-mxwnekA$default(Landroid/content/res/TypedArray;IJILjava/lang/Object;)J

    move-result-wide v14

    .line 182
    sget v6, Lcom/google/accompanist/themeadapter/material/R$styleable;->ThemeAdapterMaterialTheme_colorOnPrimary:I

    invoke-static/range {v5 .. v10}, Lcom/google/accompanist/themeadapter/core/ResourceUtilsKt;->parseColor-mxwnekA$default(Landroid/content/res/TypedArray;IJILjava/lang/Object;)J

    move-result-wide v26

    .line 183
    sget v6, Lcom/google/accompanist/themeadapter/material/R$styleable;->ThemeAdapterMaterialTheme_colorSecondary:I

    invoke-static/range {v5 .. v10}, Lcom/google/accompanist/themeadapter/core/ResourceUtilsKt;->parseColor-mxwnekA$default(Landroid/content/res/TypedArray;IJILjava/lang/Object;)J

    move-result-wide v16

    .line 184
    sget v6, Lcom/google/accompanist/themeadapter/material/R$styleable;->ThemeAdapterMaterialTheme_colorSecondaryVariant:I

    invoke-static/range {v5 .. v10}, Lcom/google/accompanist/themeadapter/core/ResourceUtilsKt;->parseColor-mxwnekA$default(Landroid/content/res/TypedArray;IJILjava/lang/Object;)J

    move-result-wide v18

    .line 185
    sget v6, Lcom/google/accompanist/themeadapter/material/R$styleable;->ThemeAdapterMaterialTheme_colorOnSecondary:I

    invoke-static/range {v5 .. v10}, Lcom/google/accompanist/themeadapter/core/ResourceUtilsKt;->parseColor-mxwnekA$default(Landroid/content/res/TypedArray;IJILjava/lang/Object;)J

    move-result-wide v28

    .line 186
    sget v6, Lcom/google/accompanist/themeadapter/material/R$styleable;->ThemeAdapterMaterialTheme_android_colorBackground:I

    invoke-static/range {v5 .. v10}, Lcom/google/accompanist/themeadapter/core/ResourceUtilsKt;->parseColor-mxwnekA$default(Landroid/content/res/TypedArray;IJILjava/lang/Object;)J

    move-result-wide v20

    .line 187
    sget v6, Lcom/google/accompanist/themeadapter/material/R$styleable;->ThemeAdapterMaterialTheme_colorOnBackground:I

    invoke-static/range {v5 .. v10}, Lcom/google/accompanist/themeadapter/core/ResourceUtilsKt;->parseColor-mxwnekA$default(Landroid/content/res/TypedArray;IJILjava/lang/Object;)J

    move-result-wide v30

    .line 188
    sget v6, Lcom/google/accompanist/themeadapter/material/R$styleable;->ThemeAdapterMaterialTheme_colorSurface:I

    invoke-static/range {v5 .. v10}, Lcom/google/accompanist/themeadapter/core/ResourceUtilsKt;->parseColor-mxwnekA$default(Landroid/content/res/TypedArray;IJILjava/lang/Object;)J

    move-result-wide v22

    .line 189
    sget v6, Lcom/google/accompanist/themeadapter/material/R$styleable;->ThemeAdapterMaterialTheme_colorOnSurface:I

    invoke-static/range {v5 .. v10}, Lcom/google/accompanist/themeadapter/core/ResourceUtilsKt;->parseColor-mxwnekA$default(Landroid/content/res/TypedArray;IJILjava/lang/Object;)J

    move-result-wide v32

    .line 190
    sget v6, Lcom/google/accompanist/themeadapter/material/R$styleable;->ThemeAdapterMaterialTheme_colorError:I

    invoke-static/range {v5 .. v10}, Lcom/google/accompanist/themeadapter/core/ResourceUtilsKt;->parseColor-mxwnekA$default(Landroid/content/res/TypedArray;IJILjava/lang/Object;)J

    move-result-wide v24

    .line 191
    sget v6, Lcom/google/accompanist/themeadapter/material/R$styleable;->ThemeAdapterMaterialTheme_colorOnError:I

    invoke-static/range {v5 .. v10}, Lcom/google/accompanist/themeadapter/core/ResourceUtilsKt;->parseColor-mxwnekA$default(Landroid/content/res/TypedArray;IJILjava/lang/Object;)J

    move-result-wide v34

    .line 193
    sget v5, Lcom/google/accompanist/themeadapter/material/R$styleable;->ThemeAdapterMaterialTheme_isLightTheme:I

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 196
    invoke-static/range {v12 .. v35}, Landroidx/compose/material/ColorsKt;->lightColors-2qZNXz8(JJJJJJJJJJJJ)Landroidx/compose/material/Colors;

    move-result-object v5

    goto :goto_0

    .line 211
    :cond_0
    invoke-static/range {v12 .. v35}, Landroidx/compose/material/ColorsKt;->darkColors-2qZNXz8(JJJJJJJJJJJJ)Landroidx/compose/material/Colors;

    move-result-object v5

    goto :goto_0

    :cond_1
    move-object v5, v11

    :goto_0
    if-eqz p4, :cond_5

    if-eqz p7, :cond_3

    .line 239
    sget v6, Lcom/google/accompanist/themeadapter/material/R$styleable;->ThemeAdapterMaterialTheme_fontFamily:I

    .line 238
    invoke-static {v4, v6}, Lcom/google/accompanist/themeadapter/core/ResourceUtilsKt;->parseFontFamily(Landroid/content/res/TypedArray;I)Lcom/google/accompanist/themeadapter/core/FontFamilyWithWeight;

    move-result-object v6

    if-nez v6, :cond_2

    .line 240
    sget v6, Lcom/google/accompanist/themeadapter/material/R$styleable;->ThemeAdapterMaterialTheme_android_fontFamily:I

    invoke-static {v4, v6}, Lcom/google/accompanist/themeadapter/core/ResourceUtilsKt;->parseFontFamily(Landroid/content/res/TypedArray;I)Lcom/google/accompanist/themeadapter/core/FontFamilyWithWeight;

    move-result-object v6

    :cond_2
    if-eqz v6, :cond_3

    .line 241
    invoke-virtual {v6}, Lcom/google/accompanist/themeadapter/core/FontFamilyWithWeight;->getFontFamily()Landroidx/compose/ui/text/font/FontFamily;

    move-result-object v6

    goto :goto_1

    :cond_3
    move-object v6, v11

    .line 245
    :goto_1
    new-instance v7, Landroidx/compose/material/Typography;

    if-nez v6, :cond_4

    sget-object v8, Landroidx/compose/ui/text/font/FontFamily;->Companion:Landroidx/compose/ui/text/font/FontFamily$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/text/font/FontFamily$Companion;->getDefault()Landroidx/compose/ui/text/font/SystemFontFamily;

    move-result-object v8

    move-object v13, v8

    goto :goto_2

    :cond_4
    move-object v13, v6

    :goto_2
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x3ffe

    const/16 v28, 0x0

    move-object v12, v7

    invoke-direct/range {v12 .. v28}, Landroidx/compose/material/Typography;-><init>(Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 248
    sget v8, Lcom/google/accompanist/themeadapter/material/R$styleable;->ThemeAdapterMaterialTheme_textAppearanceHeadline1:I

    invoke-static {v4, v8}, Landroidx/core/content/res/TypedArrayKt;->getResourceIdOrThrow(Landroid/content/res/TypedArray;I)I

    move-result v8

    .line 246
    invoke-static {v0, v8, v2, v3, v6}, Lcom/google/accompanist/themeadapter/core/ResourceUtilsKt;->parseTextAppearance(Landroid/content/Context;ILandroidx/compose/ui/unit/Density;ZLandroidx/compose/ui/text/font/FontFamily;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v13

    .line 255
    sget v8, Lcom/google/accompanist/themeadapter/material/R$styleable;->ThemeAdapterMaterialTheme_textAppearanceHeadline2:I

    invoke-static {v4, v8}, Landroidx/core/content/res/TypedArrayKt;->getResourceIdOrThrow(Landroid/content/res/TypedArray;I)I

    move-result v8

    .line 253
    invoke-static {v0, v8, v2, v3, v6}, Lcom/google/accompanist/themeadapter/core/ResourceUtilsKt;->parseTextAppearance(Landroid/content/Context;ILandroidx/compose/ui/unit/Density;ZLandroidx/compose/ui/text/font/FontFamily;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v14

    .line 262
    sget v8, Lcom/google/accompanist/themeadapter/material/R$styleable;->ThemeAdapterMaterialTheme_textAppearanceHeadline3:I

    invoke-static {v4, v8}, Landroidx/core/content/res/TypedArrayKt;->getResourceIdOrThrow(Landroid/content/res/TypedArray;I)I

    move-result v8

    .line 260
    invoke-static {v0, v8, v2, v3, v6}, Lcom/google/accompanist/themeadapter/core/ResourceUtilsKt;->parseTextAppearance(Landroid/content/Context;ILandroidx/compose/ui/unit/Density;ZLandroidx/compose/ui/text/font/FontFamily;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v15

    .line 269
    sget v8, Lcom/google/accompanist/themeadapter/material/R$styleable;->ThemeAdapterMaterialTheme_textAppearanceHeadline4:I

    invoke-static {v4, v8}, Landroidx/core/content/res/TypedArrayKt;->getResourceIdOrThrow(Landroid/content/res/TypedArray;I)I

    move-result v8

    .line 267
    invoke-static {v0, v8, v2, v3, v6}, Lcom/google/accompanist/themeadapter/core/ResourceUtilsKt;->parseTextAppearance(Landroid/content/Context;ILandroidx/compose/ui/unit/Density;ZLandroidx/compose/ui/text/font/FontFamily;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v16

    .line 276
    sget v8, Lcom/google/accompanist/themeadapter/material/R$styleable;->ThemeAdapterMaterialTheme_textAppearanceHeadline5:I

    invoke-static {v4, v8}, Landroidx/core/content/res/TypedArrayKt;->getResourceIdOrThrow(Landroid/content/res/TypedArray;I)I

    move-result v8

    .line 274
    invoke-static {v0, v8, v2, v3, v6}, Lcom/google/accompanist/themeadapter/core/ResourceUtilsKt;->parseTextAppearance(Landroid/content/Context;ILandroidx/compose/ui/unit/Density;ZLandroidx/compose/ui/text/font/FontFamily;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v17

    .line 283
    sget v8, Lcom/google/accompanist/themeadapter/material/R$styleable;->ThemeAdapterMaterialTheme_textAppearanceHeadline6:I

    invoke-static {v4, v8}, Landroidx/core/content/res/TypedArrayKt;->getResourceIdOrThrow(Landroid/content/res/TypedArray;I)I

    move-result v8

    .line 281
    invoke-static {v0, v8, v2, v3, v6}, Lcom/google/accompanist/themeadapter/core/ResourceUtilsKt;->parseTextAppearance(Landroid/content/Context;ILandroidx/compose/ui/unit/Density;ZLandroidx/compose/ui/text/font/FontFamily;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v18

    .line 290
    sget v8, Lcom/google/accompanist/themeadapter/material/R$styleable;->ThemeAdapterMaterialTheme_textAppearanceSubtitle1:I

    invoke-static {v4, v8}, Landroidx/core/content/res/TypedArrayKt;->getResourceIdOrThrow(Landroid/content/res/TypedArray;I)I

    move-result v8

    .line 288
    invoke-static {v0, v8, v2, v3, v6}, Lcom/google/accompanist/themeadapter/core/ResourceUtilsKt;->parseTextAppearance(Landroid/content/Context;ILandroidx/compose/ui/unit/Density;ZLandroidx/compose/ui/text/font/FontFamily;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v19

    .line 297
    sget v8, Lcom/google/accompanist/themeadapter/material/R$styleable;->ThemeAdapterMaterialTheme_textAppearanceSubtitle2:I

    invoke-static {v4, v8}, Landroidx/core/content/res/TypedArrayKt;->getResourceIdOrThrow(Landroid/content/res/TypedArray;I)I

    move-result v8

    .line 295
    invoke-static {v0, v8, v2, v3, v6}, Lcom/google/accompanist/themeadapter/core/ResourceUtilsKt;->parseTextAppearance(Landroid/content/Context;ILandroidx/compose/ui/unit/Density;ZLandroidx/compose/ui/text/font/FontFamily;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v20

    .line 304
    sget v8, Lcom/google/accompanist/themeadapter/material/R$styleable;->ThemeAdapterMaterialTheme_textAppearanceBody1:I

    invoke-static {v4, v8}, Landroidx/core/content/res/TypedArrayKt;->getResourceIdOrThrow(Landroid/content/res/TypedArray;I)I

    move-result v8

    .line 302
    invoke-static {v0, v8, v2, v3, v6}, Lcom/google/accompanist/themeadapter/core/ResourceUtilsKt;->parseTextAppearance(Landroid/content/Context;ILandroidx/compose/ui/unit/Density;ZLandroidx/compose/ui/text/font/FontFamily;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v21

    .line 311
    sget v8, Lcom/google/accompanist/themeadapter/material/R$styleable;->ThemeAdapterMaterialTheme_textAppearanceBody2:I

    invoke-static {v4, v8}, Landroidx/core/content/res/TypedArrayKt;->getResourceIdOrThrow(Landroid/content/res/TypedArray;I)I

    move-result v8

    .line 309
    invoke-static {v0, v8, v2, v3, v6}, Lcom/google/accompanist/themeadapter/core/ResourceUtilsKt;->parseTextAppearance(Landroid/content/Context;ILandroidx/compose/ui/unit/Density;ZLandroidx/compose/ui/text/font/FontFamily;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v22

    .line 318
    sget v8, Lcom/google/accompanist/themeadapter/material/R$styleable;->ThemeAdapterMaterialTheme_textAppearanceButton:I

    invoke-static {v4, v8}, Landroidx/core/content/res/TypedArrayKt;->getResourceIdOrThrow(Landroid/content/res/TypedArray;I)I

    move-result v8

    .line 316
    invoke-static {v0, v8, v2, v3, v6}, Lcom/google/accompanist/themeadapter/core/ResourceUtilsKt;->parseTextAppearance(Landroid/content/Context;ILandroidx/compose/ui/unit/Density;ZLandroidx/compose/ui/text/font/FontFamily;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v23

    .line 325
    sget v8, Lcom/google/accompanist/themeadapter/material/R$styleable;->ThemeAdapterMaterialTheme_textAppearanceCaption:I

    invoke-static {v4, v8}, Landroidx/core/content/res/TypedArrayKt;->getResourceIdOrThrow(Landroid/content/res/TypedArray;I)I

    move-result v8

    .line 323
    invoke-static {v0, v8, v2, v3, v6}, Lcom/google/accompanist/themeadapter/core/ResourceUtilsKt;->parseTextAppearance(Landroid/content/Context;ILandroidx/compose/ui/unit/Density;ZLandroidx/compose/ui/text/font/FontFamily;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v24

    .line 332
    sget v8, Lcom/google/accompanist/themeadapter/material/R$styleable;->ThemeAdapterMaterialTheme_textAppearanceOverline:I

    invoke-static {v4, v8}, Landroidx/core/content/res/TypedArrayKt;->getResourceIdOrThrow(Landroid/content/res/TypedArray;I)I

    move-result v8

    .line 330
    invoke-static {v0, v8, v2, v3, v6}, Lcom/google/accompanist/themeadapter/core/ResourceUtilsKt;->parseTextAppearance(Landroid/content/Context;ILandroidx/compose/ui/unit/Density;ZLandroidx/compose/ui/text/font/FontFamily;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v25

    .line 245
    invoke-static/range {v12 .. v25}, Lcom/google/accompanist/themeadapter/material/TypographyKt;->merge(Landroidx/compose/material/Typography;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;)Landroidx/compose/material/Typography;

    move-result-object v2

    goto :goto_3

    :cond_5
    move-object v2, v11

    :goto_3
    if-eqz p5, :cond_6

    .line 344
    new-instance v11, Landroidx/compose/material/Shapes;

    .line 347
    sget v3, Lcom/google/accompanist/themeadapter/material/R$styleable;->ThemeAdapterMaterialTheme_shapeAppearanceSmallComponent:I

    invoke-static {v4, v3}, Landroidx/core/content/res/TypedArrayKt;->getResourceIdOrThrow(Landroid/content/res/TypedArray;I)I

    move-result v3

    sget-object v6, Lcom/google/accompanist/themeadapter/material/MdcTheme;->emptyShapes:Landroidx/compose/material/Shapes;

    .line 349
    invoke-virtual {v6}, Landroidx/compose/material/Shapes;->getSmall()Landroidx/compose/foundation/shape/CornerBasedShape;

    move-result-object v7

    .line 345
    invoke-static {v0, v3, v1, v7}, Lcom/google/accompanist/themeadapter/core/ResourceUtilsKt;->parseShapeAppearance(Landroid/content/Context;ILandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/foundation/shape/CornerBasedShape;)Landroidx/compose/foundation/shape/CornerBasedShape;

    move-result-object v3

    .line 353
    sget v7, Lcom/google/accompanist/themeadapter/material/R$styleable;->ThemeAdapterMaterialTheme_shapeAppearanceMediumComponent:I

    invoke-static {v4, v7}, Landroidx/core/content/res/TypedArrayKt;->getResourceIdOrThrow(Landroid/content/res/TypedArray;I)I

    move-result v7

    .line 355
    invoke-virtual {v6}, Landroidx/compose/material/Shapes;->getMedium()Landroidx/compose/foundation/shape/CornerBasedShape;

    move-result-object v8

    .line 351
    invoke-static {v0, v7, v1, v8}, Lcom/google/accompanist/themeadapter/core/ResourceUtilsKt;->parseShapeAppearance(Landroid/content/Context;ILandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/foundation/shape/CornerBasedShape;)Landroidx/compose/foundation/shape/CornerBasedShape;

    move-result-object v7

    .line 359
    sget v8, Lcom/google/accompanist/themeadapter/material/R$styleable;->ThemeAdapterMaterialTheme_shapeAppearanceLargeComponent:I

    invoke-static {v4, v8}, Landroidx/core/content/res/TypedArrayKt;->getResourceIdOrThrow(Landroid/content/res/TypedArray;I)I

    move-result v8

    .line 361
    invoke-virtual {v6}, Landroidx/compose/material/Shapes;->getLarge()Landroidx/compose/foundation/shape/CornerBasedShape;

    move-result-object v6

    .line 357
    invoke-static {v0, v8, v1, v6}, Lcom/google/accompanist/themeadapter/core/ResourceUtilsKt;->parseShapeAppearance(Landroid/content/Context;ILandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/foundation/shape/CornerBasedShape;)Landroidx/compose/foundation/shape/CornerBasedShape;

    move-result-object v0

    .line 344
    invoke-direct {v11, v3, v7, v0}, Landroidx/compose/material/Shapes;-><init>(Landroidx/compose/foundation/shape/CornerBasedShape;Landroidx/compose/foundation/shape/CornerBasedShape;Landroidx/compose/foundation/shape/CornerBasedShape;)V

    .line 366
    :cond_6
    new-instance v0, Lcom/google/accompanist/themeadapter/material/ThemeParameters;

    invoke-direct {v0, v5, v2, v11}, Lcom/google/accompanist/themeadapter/material/ThemeParameters;-><init>(Landroidx/compose/material/Colors;Landroidx/compose/material/Typography;Landroidx/compose/material/Shapes;)V

    .line 234
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    .line 173
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "createMdcTheme requires the host context\'s theme to extend Theme.MaterialComponents"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic createMdcTheme$default(Landroid/content/Context;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;ZZZZZILjava/lang/Object;)Lcom/google/accompanist/themeadapter/material/ThemeParameters;
    .locals 7

    move v0, p8

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    .line 165
    invoke-static {p0}, Landroidx/compose/ui/unit/AndroidDensity_androidKt;->Density(Landroid/content/Context;)Landroidx/compose/ui/unit/Density;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    and-int/lit8 v2, v0, 0x8

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, p3

    :goto_1
    and-int/lit8 v4, v0, 0x10

    if-eqz v4, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    move v4, p4

    :goto_2
    and-int/lit8 v5, v0, 0x20

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    move v3, p5

    :goto_3
    and-int/lit8 v5, v0, 0x40

    const/4 v6, 0x0

    if-eqz v5, :cond_4

    move v5, v6

    goto :goto_4

    :cond_4
    move v5, p6

    :goto_4
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_5

    goto :goto_5

    :cond_5
    move v6, p7

    :goto_5
    move-object p2, p0

    move-object p3, p1

    move-object p4, v1

    move p5, v2

    move p6, v4

    move p7, v3

    move p8, v5

    move/from16 p9, v6

    .line 162
    invoke-static/range {p2 .. p9}, Lcom/google/accompanist/themeadapter/material/MdcTheme;->createMdcTheme(Landroid/content/Context;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;ZZZZZ)Lcom/google/accompanist/themeadapter/material/ThemeParameters;

    move-result-object v0

    return-object v0
.end method
