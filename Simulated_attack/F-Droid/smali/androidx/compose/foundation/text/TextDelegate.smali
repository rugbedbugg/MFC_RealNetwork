.class public final Landroidx/compose/foundation/text/TextDelegate;
.super Ljava/lang/Object;
.source "TextDelegate.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/text/TextDelegate$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/foundation/text/TextDelegate$Companion;


# instance fields
.field private final density:Landroidx/compose/ui/unit/Density;

.field private final fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

.field private intrinsicsLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

.field private final maxLines:I

.field private final minLines:I

.field private final overflow:I

.field private paragraphIntrinsics:Landroidx/compose/ui/text/MultiParagraphIntrinsics;

.field private final placeholders:Ljava/util/List;

.field private final softWrap:Z

.field private final style:Landroidx/compose/ui/text/TextStyle;

.field private final text:Landroidx/compose/ui/text/AnnotatedString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Landroidx/compose/foundation/text/TextDelegate$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/foundation/text/TextDelegate$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/foundation/text/TextDelegate;->Companion:Landroidx/compose/foundation/text/TextDelegate$Companion;

    return-void
.end method

.method private constructor <init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;IIZILandroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;)V
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "style"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "density"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fontFamilyResolver"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placeholders"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/TextDelegate;->text:Landroidx/compose/ui/text/AnnotatedString;

    iput-object p2, p0, Landroidx/compose/foundation/text/TextDelegate;->style:Landroidx/compose/ui/text/TextStyle;

    iput p3, p0, Landroidx/compose/foundation/text/TextDelegate;->maxLines:I

    iput p4, p0, Landroidx/compose/foundation/text/TextDelegate;->minLines:I

    iput-boolean p5, p0, Landroidx/compose/foundation/text/TextDelegate;->softWrap:Z

    iput p6, p0, Landroidx/compose/foundation/text/TextDelegate;->overflow:I

    iput-object p7, p0, Landroidx/compose/foundation/text/TextDelegate;->density:Landroidx/compose/ui/unit/Density;

    iput-object p8, p0, Landroidx/compose/foundation/text/TextDelegate;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    iput-object p9, p0, Landroidx/compose/foundation/text/TextDelegate;->placeholders:Ljava/util/List;

    const-string p1, "Check failed."

    if-lez p3, :cond_2

    if-lez p4, :cond_1

    if-gt p4, p3, :cond_0

    return-void

    .line 126
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 125
    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 124
    :cond_2
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;IIZILandroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 13

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    const v1, 0x7fffffff

    move v5, v1

    goto :goto_0

    :cond_0
    move/from16 v5, p3

    :goto_0
    and-int/lit8 v1, v0, 0x8

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    move v6, v2

    goto :goto_1

    :cond_1
    move/from16 v6, p4

    :goto_1
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_2

    move v7, v2

    goto :goto_2

    :cond_2
    move/from16 v7, p5

    :goto_2
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    .line 94
    sget-object v1, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->getClip-gIe3tQ8()I

    move-result v1

    move v8, v1

    goto :goto_3

    :cond_3
    move/from16 v8, p6

    :goto_3
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_4

    .line 97
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    move-object v11, v0

    goto :goto_4

    :cond_4
    move-object/from16 v11, p9

    :goto_4
    const/4 v12, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    .line 88
    invoke-direct/range {v2 .. v12}, Landroidx/compose/foundation/text/TextDelegate;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;IIZILandroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;IIZILandroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p9}, Landroidx/compose/foundation/text/TextDelegate;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;IIZILandroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;)V

    return-void
.end method

.method private final getNonNullIntrinsics()Landroidx/compose/ui/text/MultiParagraphIntrinsics;
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/text/TextDelegate;->paragraphIntrinsics:Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    if-eqz v0, :cond_0

    return-object v0

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "layoutIntrinsics must be called first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final layoutText-K40F9xA(JLandroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/MultiParagraph;
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p3

    .line 161
    invoke-virtual {p0, v1}, Landroidx/compose/foundation/text/TextDelegate;->layoutIntrinsics(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 163
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v1

    iget-boolean v2, v0, Landroidx/compose/foundation/text/TextDelegate;->softWrap:Z

    if-nez v2, :cond_0

    iget v2, v0, Landroidx/compose/foundation/text/TextDelegate;->overflow:I

    .line 164
    sget-object v3, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->getEllipsis-gIe3tQ8()I

    move-result v3

    invoke-static {v2, v3}, Landroidx/compose/ui/text/style/TextOverflow;->equals-impl0(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 165
    :cond_0
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/unit/Constraints;->getHasBoundedWidth-impl(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 166
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v2

    goto :goto_0

    :cond_1
    const v2, 0x7fffffff

    :goto_0
    iget-boolean v3, v0, Landroidx/compose/foundation/text/TextDelegate;->softWrap:Z

    if-nez v3, :cond_2

    iget v3, v0, Landroidx/compose/foundation/text/TextDelegate;->overflow:I

    .line 185
    sget-object v4, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->getEllipsis-gIe3tQ8()I

    move-result v4

    invoke-static {v3, v4}, Landroidx/compose/ui/text/style/TextOverflow;->equals-impl0(II)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    move v8, v3

    goto :goto_2

    :cond_2
    iget v3, v0, Landroidx/compose/foundation/text/TextDelegate;->maxLines:I

    goto :goto_1

    :goto_2
    if-ne v1, v2, :cond_3

    :goto_3
    move v10, v2

    goto :goto_4

    .line 200
    :cond_3
    invoke-virtual {p0}, Landroidx/compose/foundation/text/TextDelegate;->getMaxIntrinsicWidth()I

    move-result v3

    invoke-static {v3, v1, v2}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v2

    goto :goto_3

    .line 203
    :goto_4
    new-instance v1, Landroidx/compose/ui/text/MultiParagraph;

    .line 204
    invoke-direct {p0}, Landroidx/compose/foundation/text/TextDelegate;->getNonNullIntrinsics()Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    move-result-object v5

    const/4 v9, 0x0

    const/4 v11, 0x0

    .line 205
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v12

    const/4 v13, 0x5

    const/4 v14, 0x0

    invoke-static/range {v9 .. v14}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(IIIIILjava/lang/Object;)J

    move-result-wide v6

    iget v2, v0, Landroidx/compose/foundation/text/TextDelegate;->overflow:I

    .line 208
    sget-object v3, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->getEllipsis-gIe3tQ8()I

    move-result v3

    invoke-static {v2, v3}, Landroidx/compose/ui/text/style/TextOverflow;->equals-impl0(II)Z

    move-result v9

    const/4 v10, 0x0

    move-object v4, v1

    .line 203
    invoke-direct/range {v4 .. v10}, Landroidx/compose/ui/text/MultiParagraph;-><init>(Landroidx/compose/ui/text/MultiParagraphIntrinsics;JIZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method


# virtual methods
.method public final getDensity()Landroidx/compose/ui/unit/Density;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/foundation/text/TextDelegate;->density:Landroidx/compose/ui/unit/Density;

    return-object v0
.end method

.method public final getFontFamilyResolver()Landroidx/compose/ui/text/font/FontFamily$Resolver;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/foundation/text/TextDelegate;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    return-object v0
.end method

.method public final getMaxIntrinsicWidth()I
    .locals 1

    .line 121
    invoke-direct {p0}, Landroidx/compose/foundation/text/TextDelegate;->getNonNullIntrinsics()Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->getMaxIntrinsicWidth()F

    move-result v0

    invoke-static {v0}, Landroidx/compose/foundation/text/TextDelegateKt;->ceilToIntPx(F)I

    move-result v0

    return v0
.end method

.method public final getMaxLines()I
    .locals 1

    .line 0
    iget v0, p0, Landroidx/compose/foundation/text/TextDelegate;->maxLines:I

    return v0
.end method

.method public final getMinLines()I
    .locals 1

    .line 0
    iget v0, p0, Landroidx/compose/foundation/text/TextDelegate;->minLines:I

    return v0
.end method

.method public final getOverflow-gIe3tQ8()I
    .locals 1

    .line 0
    iget v0, p0, Landroidx/compose/foundation/text/TextDelegate;->overflow:I

    return v0
.end method

.method public final getPlaceholders()Ljava/util/List;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/foundation/text/TextDelegate;->placeholders:Ljava/util/List;

    return-object v0
.end method

.method public final getSoftWrap()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Landroidx/compose/foundation/text/TextDelegate;->softWrap:Z

    return v0
.end method

.method public final getStyle()Landroidx/compose/ui/text/TextStyle;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/foundation/text/TextDelegate;->style:Landroidx/compose/ui/text/TextStyle;

    return-object v0
.end method

.method public final getText()Landroidx/compose/ui/text/AnnotatedString;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/foundation/text/TextDelegate;->text:Landroidx/compose/ui/text/AnnotatedString;

    return-object v0
.end method

.method public final layout-NN6Ew-U(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/TextLayoutResult;)Landroidx/compose/ui/text/TextLayoutResult;
    .locals 21

    move-object/from16 v0, p0

    move-wide/from16 v14, p1

    move-object/from16 v13, p4

    const-string v1, "layoutDirection"

    move-object/from16 v11, p3

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v13, :cond_0

    iget-object v2, v0, Landroidx/compose/foundation/text/TextDelegate;->text:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v3, v0, Landroidx/compose/foundation/text/TextDelegate;->style:Landroidx/compose/ui/text/TextStyle;

    iget-object v4, v0, Landroidx/compose/foundation/text/TextDelegate;->placeholders:Ljava/util/List;

    iget v5, v0, Landroidx/compose/foundation/text/TextDelegate;->maxLines:I

    iget-boolean v6, v0, Landroidx/compose/foundation/text/TextDelegate;->softWrap:Z

    iget v7, v0, Landroidx/compose/foundation/text/TextDelegate;->overflow:I

    iget-object v8, v0, Landroidx/compose/foundation/text/TextDelegate;->density:Landroidx/compose/ui/unit/Density;

    iget-object v10, v0, Landroidx/compose/foundation/text/TextDelegate;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    move-object/from16 v1, p4

    move-object/from16 v9, p3

    move-wide/from16 v11, p1

    .line 217
    invoke-static/range {v1 .. v12}, Landroidx/compose/foundation/text/TextLayoutHelperKt;->canReuse-7_7YC6M(Landroidx/compose/ui/text/TextLayoutResult;Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;IZILandroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/font/FontFamily$Resolver;J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    new-instance v11, Landroidx/compose/ui/text/TextLayoutInput;

    .line 227
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/ui/text/TextLayoutResult;->getLayoutInput()Landroidx/compose/ui/text/TextLayoutInput;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/text/TextLayoutInput;->getText()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v2

    iget-object v3, v0, Landroidx/compose/foundation/text/TextDelegate;->style:Landroidx/compose/ui/text/TextStyle;

    .line 229
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/ui/text/TextLayoutResult;->getLayoutInput()Landroidx/compose/ui/text/TextLayoutInput;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/text/TextLayoutInput;->getPlaceholders()Ljava/util/List;

    move-result-object v4

    .line 230
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/ui/text/TextLayoutResult;->getLayoutInput()Landroidx/compose/ui/text/TextLayoutInput;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/text/TextLayoutInput;->getMaxLines()I

    move-result v5

    .line 231
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/ui/text/TextLayoutResult;->getLayoutInput()Landroidx/compose/ui/text/TextLayoutInput;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/text/TextLayoutInput;->getSoftWrap()Z

    move-result v6

    .line 232
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/ui/text/TextLayoutResult;->getLayoutInput()Landroidx/compose/ui/text/TextLayoutInput;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/text/TextLayoutInput;->getOverflow-gIe3tQ8()I

    move-result v7

    .line 233
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/ui/text/TextLayoutResult;->getLayoutInput()Landroidx/compose/ui/text/TextLayoutInput;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/text/TextLayoutInput;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object v8

    .line 234
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/ui/text/TextLayoutResult;->getLayoutInput()Landroidx/compose/ui/text/TextLayoutInput;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/text/TextLayoutInput;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v9

    .line 235
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/ui/text/TextLayoutResult;->getLayoutInput()Landroidx/compose/ui/text/TextLayoutInput;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/text/TextLayoutInput;->getFontFamilyResolver()Landroidx/compose/ui/text/font/FontFamily$Resolver;

    move-result-object v10

    const/16 v16, 0x0

    move-object v1, v11

    move-object v0, v11

    move-wide/from16 v11, p1

    move-object/from16 v13, v16

    .line 226
    invoke-direct/range {v1 .. v13}, Landroidx/compose/ui/text/TextLayoutInput;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;IZILandroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/font/FontFamily$Resolver;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 240
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/ui/text/TextLayoutResult;->getMultiParagraph()Landroidx/compose/ui/text/MultiParagraph;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/text/MultiParagraph;->getWidth()F

    move-result v1

    invoke-static {v1}, Landroidx/compose/foundation/text/TextDelegateKt;->ceilToIntPx(F)I

    move-result v1

    .line 241
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/ui/text/TextLayoutResult;->getMultiParagraph()Landroidx/compose/ui/text/MultiParagraph;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/text/MultiParagraph;->getHeight()F

    move-result v2

    invoke-static {v2}, Landroidx/compose/foundation/text/TextDelegateKt;->ceilToIntPx(F)I

    move-result v2

    .line 239
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    move-result-wide v1

    .line 238
    invoke-static {v14, v15, v1, v2}, Landroidx/compose/ui/unit/ConstraintsKt;->constrain-4WqzIAM(JJ)J

    move-result-wide v1

    move-object/from16 v3, p4

    .line 225
    invoke-virtual {v3, v0, v1, v2}, Landroidx/compose/ui/text/TextLayoutResult;->copy-O0kMr_c(Landroidx/compose/ui/text/TextLayoutInput;J)Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object v0

    return-object v0

    .line 248
    :cond_0
    invoke-direct/range {p0 .. p3}, Landroidx/compose/foundation/text/TextDelegate;->layoutText-K40F9xA(JLandroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/MultiParagraph;

    move-result-object v0

    .line 255
    invoke-virtual {v0}, Landroidx/compose/ui/text/MultiParagraph;->getWidth()F

    move-result v1

    invoke-static {v1}, Landroidx/compose/foundation/text/TextDelegateKt;->ceilToIntPx(F)I

    move-result v1

    .line 256
    invoke-virtual {v0}, Landroidx/compose/ui/text/MultiParagraph;->getHeight()F

    move-result v2

    invoke-static {v2}, Landroidx/compose/foundation/text/TextDelegateKt;->ceilToIntPx(F)I

    move-result v2

    .line 254
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    move-result-wide v1

    .line 253
    invoke-static {v14, v15, v1, v2}, Landroidx/compose/ui/unit/ConstraintsKt;->constrain-4WqzIAM(JJ)J

    move-result-wide v16

    .line 264
    new-instance v18, Landroidx/compose/ui/text/TextLayoutResult;

    .line 265
    new-instance v19, Landroidx/compose/ui/text/TextLayoutInput;

    move-object/from16 v13, p0

    iget-object v2, v13, Landroidx/compose/foundation/text/TextDelegate;->text:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v3, v13, Landroidx/compose/foundation/text/TextDelegate;->style:Landroidx/compose/ui/text/TextStyle;

    iget-object v4, v13, Landroidx/compose/foundation/text/TextDelegate;->placeholders:Ljava/util/List;

    iget v5, v13, Landroidx/compose/foundation/text/TextDelegate;->maxLines:I

    iget-boolean v6, v13, Landroidx/compose/foundation/text/TextDelegate;->softWrap:Z

    iget v7, v13, Landroidx/compose/foundation/text/TextDelegate;->overflow:I

    iget-object v8, v13, Landroidx/compose/foundation/text/TextDelegate;->density:Landroidx/compose/ui/unit/Density;

    iget-object v10, v13, Landroidx/compose/foundation/text/TextDelegate;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    const/16 v20, 0x0

    move-object/from16 v1, v19

    move-object/from16 v9, p3

    move-wide/from16 v11, p1

    move-object/from16 v13, v20

    invoke-direct/range {v1 .. v13}, Landroidx/compose/ui/text/TextLayoutInput;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;IZILandroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/font/FontFamily$Resolver;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v6, 0x0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object v3, v0

    move-wide/from16 v4, v16

    .line 264
    invoke-direct/range {v1 .. v6}, Landroidx/compose/ui/text/TextLayoutResult;-><init>(Landroidx/compose/ui/text/TextLayoutInput;Landroidx/compose/ui/text/MultiParagraph;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v18
.end method

.method public final layoutIntrinsics(Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 8

    const-string v0, "layoutDirection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/foundation/text/TextDelegate;->paragraphIntrinsics:Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/compose/foundation/text/TextDelegate;->intrinsicsLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne p1, v1, :cond_0

    .line 134
    invoke-virtual {v0}, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->getHasStaleResolvedFonts()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iput-object p1, p0, Landroidx/compose/foundation/text/TextDelegate;->intrinsicsLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    iget-object v3, p0, Landroidx/compose/foundation/text/TextDelegate;->text:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v0, p0, Landroidx/compose/foundation/text/TextDelegate;->style:Landroidx/compose/ui/text/TextStyle;

    .line 139
    invoke-static {v0, p1}, Landroidx/compose/ui/text/TextStyleKt;->resolveDefaults(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v4

    iget-object v6, p0, Landroidx/compose/foundation/text/TextDelegate;->density:Landroidx/compose/ui/unit/Density;

    iget-object v7, p0, Landroidx/compose/foundation/text/TextDelegate;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    iget-object v5, p0, Landroidx/compose/foundation/text/TextDelegate;->placeholders:Ljava/util/List;

    .line 137
    new-instance v0, Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroidx/compose/ui/text/MultiParagraphIntrinsics;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;)V

    :cond_1
    iput-object v0, p0, Landroidx/compose/foundation/text/TextDelegate;->paragraphIntrinsics:Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    return-void
.end method
