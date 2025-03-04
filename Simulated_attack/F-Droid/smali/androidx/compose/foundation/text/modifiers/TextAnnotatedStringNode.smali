.class public final Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "TextAnnotatedStringNode.kt"

# interfaces
.implements Landroidx/compose/ui/node/LayoutModifierNode;
.implements Landroidx/compose/ui/node/DrawModifierNode;
.implements Landroidx/compose/ui/node/SemanticsModifierNode;


# instance fields
.field private _layoutCache:Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;

.field private baselineCache:Ljava/util/Map;

.field private fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

.field private maxLines:I

.field private minLines:I

.field private onPlaceholderLayout:Lkotlin/jvm/functions/Function1;

.field private onTextLayout:Lkotlin/jvm/functions/Function1;

.field private overflow:I

.field private overrideColor:Landroidx/compose/ui/graphics/ColorProducer;

.field private placeholders:Ljava/util/List;

.field private selectionController:Landroidx/compose/foundation/text/modifiers/SelectionController;

.field private semanticsTextLayoutResult:Lkotlin/jvm/functions/Function1;

.field private softWrap:Z

.field private style:Landroidx/compose/ui/text/TextStyle;

.field private text:Landroidx/compose/ui/text/AnnotatedString;


# direct methods
.method private constructor <init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;Lkotlin/jvm/functions/Function1;IZIILjava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/modifiers/SelectionController;Landroidx/compose/ui/graphics/ColorProducer;)V
    .locals 0

    const-string p11, "text"

    invoke-static {p1, p11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p11, "style"

    invoke-static {p2, p11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p11, "fontFamilyResolver"

    invoke-static {p3, p11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->text:Landroidx/compose/ui/text/AnnotatedString;

    iput-object p2, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->style:Landroidx/compose/ui/text/TextStyle;

    iput-object p3, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    iput-object p4, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->onTextLayout:Lkotlin/jvm/functions/Function1;

    iput p5, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->overflow:I

    iput-boolean p6, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->softWrap:Z

    iput p7, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->maxLines:I

    iput p8, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->minLines:I

    iput-object p9, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->placeholders:Ljava/util/List;

    iput-object p10, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->onPlaceholderLayout:Lkotlin/jvm/functions/Function1;

    iput-object p12, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->overrideColor:Landroidx/compose/ui/graphics/ColorProducer;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;Lkotlin/jvm/functions/Function1;IZIILjava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/modifiers/SelectionController;Landroidx/compose/ui/graphics/ColorProducer;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p12}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;Lkotlin/jvm/functions/Function1;IZIILjava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/modifiers/SelectionController;Landroidx/compose/ui/graphics/ColorProducer;)V

    return-void
.end method

.method public static final synthetic access$getLayoutCache(Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;)Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;
    .locals 0

    .line 63
    invoke-direct {p0}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->getLayoutCache()Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;

    move-result-object p0

    return-object p0
.end method

.method private final getLayoutCache()Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;
    .locals 11

    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->_layoutCache:Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;

    iget-object v2, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->text:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v3, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->style:Landroidx/compose/ui/text/TextStyle;

    iget-object v4, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    iget v5, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->overflow:I

    iget-boolean v6, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->softWrap:Z

    iget v7, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->maxLines:I

    iget v8, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->minLines:I

    iget-object v9, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->placeholders:Ljava/util/List;

    const/4 v10, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;IZIILjava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->_layoutCache:Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;

    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->_layoutCache:Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;

    .line 94
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method private final getLayoutCache(Landroidx/compose/ui/unit/Density;)Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;
    .locals 1

    .line 98
    invoke-direct {p0}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->getLayoutCache()Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->setDensity$foundation_release(Landroidx/compose/ui/unit/Density;)V

    return-object v0
.end method


# virtual methods
.method public applySemantics(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
    .locals 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->semanticsTextLayoutResult:Lkotlin/jvm/functions/Function1;

    if-nez v0, :cond_0

    .line 241
    new-instance v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$applySemantics$1;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$applySemantics$1;-><init>(Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;)V

    iput-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->semanticsTextLayoutResult:Lkotlin/jvm/functions/Function1;

    :cond_0
    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->text:Landroidx/compose/ui/text/AnnotatedString;

    .line 249
    invoke-static {p1, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setText(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/ui/text/AnnotatedString;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 250
    invoke-static {p1, v2, v0, v1, v2}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->getTextLayoutResult$default(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method public final doInvalidations(ZZZZ)V
    .locals 10

    .line 209
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->semanticsTextLayoutResult:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_2

    .line 214
    :cond_1
    invoke-static {p0}, Landroidx/compose/ui/node/SemanticsModifierNodeKt;->invalidateSemantics(Landroidx/compose/ui/node/SemanticsModifierNode;)V

    :cond_2
    if-nez p2, :cond_3

    if-nez p3, :cond_3

    if-eqz p4, :cond_4

    .line 218
    :cond_3
    invoke-direct {p0}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->getLayoutCache()Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;

    move-result-object v1

    iget-object v2, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->text:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v3, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->style:Landroidx/compose/ui/text/TextStyle;

    iget-object v4, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    iget v5, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->overflow:I

    iget-boolean v6, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->softWrap:Z

    iget v7, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->maxLines:I

    iget v8, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->minLines:I

    iget-object v9, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->placeholders:Ljava/util/List;

    invoke-virtual/range {v1 .. v9}, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->update-ZNqEYIc(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;IZIILjava/util/List;)V

    .line 228
    invoke-static {p0}, Landroidx/compose/ui/node/LayoutModifierNodeKt;->invalidateMeasurement(Landroidx/compose/ui/node/LayoutModifierNode;)V

    .line 229
    invoke-static {p0}, Landroidx/compose/ui/node/DrawModifierNodeKt;->invalidateDraw(Landroidx/compose/ui/node/DrawModifierNode;)V

    :cond_4
    if-eqz p1, :cond_5

    .line 232
    invoke-static {p0}, Landroidx/compose/ui/node/DrawModifierNodeKt;->invalidateDraw(Landroidx/compose/ui/node/DrawModifierNode;)V

    :cond_5
    return-void
.end method

.method public draw(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V
    .locals 12

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 363
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 245
    :cond_0
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v0

    .line 369
    invoke-direct {p0}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->getLayoutCache()Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->getTextLayoutResult()Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object v1

    .line 370
    invoke-virtual {v1}, Landroidx/compose/ui/text/TextLayoutResult;->getMultiParagraph()Landroidx/compose/ui/text/MultiParagraph;

    move-result-object v2

    .line 371
    invoke-virtual {v1}, Landroidx/compose/ui/text/TextLayoutResult;->getHasVisualOverflow()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iget v3, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->overflow:I

    sget-object v5, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->getVisible-gIe3tQ8()I

    move-result v5

    invoke-static {v3, v5}, Landroidx/compose/ui/text/style/TextOverflow;->equals-impl0(II)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    move v11, v3

    goto :goto_0

    :cond_1
    move v11, v4

    :goto_0
    if-eqz v11, :cond_2

    .line 373
    invoke-virtual {v1}, Landroidx/compose/ui/text/TextLayoutResult;->getSize-YbymL2g()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    move-result v3

    int-to-float v3, v3

    .line 374
    invoke-virtual {v1}, Landroidx/compose/ui/text/TextLayoutResult;->getSize-YbymL2g()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    move-result v1

    int-to-float v1, v1

    .line 375
    sget-object v5, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v5

    invoke-static {v3, v1}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/geometry/RectKt;->Rect-tz77jQw(JJ)Landroidx/compose/ui/geometry/Rect;

    move-result-object v1

    .line 376
    invoke-interface {v0}, Landroidx/compose/ui/graphics/Canvas;->save()V

    const/4 v3, 0x2

    const/4 v5, 0x0

    .line 377
    invoke-static {v0, v1, v4, v3, v5}, Landroidx/compose/ui/graphics/Canvas$-CC;->clipRect-mtrdD-E$default(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/geometry/Rect;IILjava/lang/Object;)V

    :cond_2
    :try_start_0
    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->style:Landroidx/compose/ui/text/TextStyle;

    .line 380
    invoke-virtual {v1}, Landroidx/compose/ui/text/TextStyle;->getTextDecoration()Landroidx/compose/ui/text/style/TextDecoration;

    move-result-object v1

    if-nez v1, :cond_3

    sget-object v1, Landroidx/compose/ui/text/style/TextDecoration;->Companion:Landroidx/compose/ui/text/style/TextDecoration$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/text/style/TextDecoration$Companion;->getNone()Landroidx/compose/ui/text/style/TextDecoration;

    move-result-object v1

    :cond_3
    move-object v6, v1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :goto_1
    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->style:Landroidx/compose/ui/text/TextStyle;

    .line 381
    invoke-virtual {v1}, Landroidx/compose/ui/text/TextStyle;->getShadow()Landroidx/compose/ui/graphics/Shadow;

    move-result-object v1

    if-nez v1, :cond_4

    sget-object v1, Landroidx/compose/ui/graphics/Shadow;->Companion:Landroidx/compose/ui/graphics/Shadow$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Shadow$Companion;->getNone()Landroidx/compose/ui/graphics/Shadow;

    move-result-object v1

    :cond_4
    move-object v5, v1

    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->style:Landroidx/compose/ui/text/TextStyle;

    .line 382
    invoke-virtual {v1}, Landroidx/compose/ui/text/TextStyle;->getDrawStyle()Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    move-result-object v1

    if-nez v1, :cond_5

    sget-object v1, Landroidx/compose/ui/graphics/drawscope/Fill;->INSTANCE:Landroidx/compose/ui/graphics/drawscope/Fill;

    :cond_5
    move-object v7, v1

    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->style:Landroidx/compose/ui/text/TextStyle;

    .line 383
    invoke-virtual {v1}, Landroidx/compose/ui/text/TextStyle;->getBrush()Landroidx/compose/ui/graphics/Brush;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->style:Landroidx/compose/ui/text/TextStyle;

    .line 385
    invoke-virtual {v1}, Landroidx/compose/ui/text/TextStyle;->getAlpha()F

    move-result v4

    const/4 v8, 0x0

    const/16 v9, 0x40

    const/4 v10, 0x0

    move-object v1, v2

    move-object v2, v0

    .line 386
    invoke-static/range {v1 .. v10}, Landroidx/compose/ui/text/MultiParagraph;->paint-hn5TExg$default(Landroidx/compose/ui/text/MultiParagraph;Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/drawscope/DrawStyle;IILjava/lang/Object;)V

    goto :goto_4

    :cond_6
    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->overrideColor:Landroidx/compose/ui/graphics/ColorProducer;

    if-eqz v1, :cond_7

    .line 395
    invoke-interface {v1}, Landroidx/compose/ui/graphics/ColorProducer;->invoke-0d7_KjU()J

    move-result-wide v3

    goto :goto_2

    :cond_7
    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v3

    .line 646
    :goto_2
    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v8

    cmp-long v8, v3, v8

    if-eqz v8, :cond_8

    goto :goto_3

    :cond_8
    iget-object v3, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->style:Landroidx/compose/ui/text/TextStyle;

    .line 398
    invoke-virtual {v3}, Landroidx/compose/ui/text/TextStyle;->getColor-0d7_KjU()J

    move-result-wide v3

    .line 646
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v8

    cmp-long v3, v3, v8

    if-eqz v3, :cond_9

    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->style:Landroidx/compose/ui/text/TextStyle;

    .line 399
    invoke-virtual {v1}, Landroidx/compose/ui/text/TextStyle;->getColor-0d7_KjU()J

    move-result-wide v3

    goto :goto_3

    .line 401
    :cond_9
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v3

    :goto_3
    const/4 v8, 0x0

    const/16 v9, 0x20

    const/4 v10, 0x0

    move-object v1, v2

    move-object v2, v0

    .line 403
    invoke-static/range {v1 .. v10}, Landroidx/compose/ui/text/MultiParagraph;->paint-LG529CI$default(Landroidx/compose/ui/text/MultiParagraph;Landroidx/compose/ui/graphics/Canvas;JLandroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/drawscope/DrawStyle;IILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_4
    if-eqz v11, :cond_a

    .line 413
    invoke-interface {v0}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    :cond_a
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->placeholders:Ljava/util/List;

    if-eqz v0, :cond_c

    .line 417
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_5

    .line 418
    :cond_b
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->drawContent()V

    :cond_c
    :goto_5
    return-void

    :goto_6
    if-eqz v11, :cond_d

    .line 413
    invoke-interface {v0}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    :cond_d
    throw p1
.end method

.method public final drawNonExtension(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V
    .locals 1

    const-string v0, "contentDrawScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 360
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->draw(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V

    return-void
.end method

.method public synthetic getShouldClearDescendantSemantics()Z
    .locals 1

    .line 0
    invoke-static {p0}, Landroidx/compose/ui/node/SemanticsModifierNode$-CC;->$default$getShouldClearDescendantSemantics(Landroidx/compose/ui/node/SemanticsModifierNode;)Z

    move-result v0

    return v0
.end method

.method public synthetic getShouldMergeDescendantSemantics()Z
    .locals 1

    .line 0
    invoke-static {p0}, Landroidx/compose/ui/node/SemanticsModifierNode$-CC;->$default$getShouldMergeDescendantSemantics(Landroidx/compose/ui/node/SemanticsModifierNode;)Z

    move-result v0

    return v0
.end method

.method public maxIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "measurable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 355
    invoke-direct {p0, p1}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->getLayoutCache(Landroidx/compose/ui/unit/Density;)Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;

    move-result-object p2

    invoke-interface {p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->intrinsicHeight(ILandroidx/compose/ui/unit/LayoutDirection;)I

    move-result p1

    return p1
.end method

.method public final maxIntrinsicHeightNonExtension(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 1

    const-string v0, "intrinsicMeasureScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "measurable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 350
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->maxIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I

    move-result p1

    return p1
.end method

.method public maxIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 0

    const-string p3, "<this>"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "measurable"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    invoke-direct {p0, p1}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->getLayoutCache(Landroidx/compose/ui/unit/Density;)Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;

    move-result-object p2

    invoke-interface {p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->maxIntrinsicWidth(Landroidx/compose/ui/unit/LayoutDirection;)I

    move-result p1

    return p1
.end method

.method public final maxIntrinsicWidthNonExtension(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 1

    const-string v0, "intrinsicMeasureScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "measurable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 339
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->maxIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I

    move-result p1

    return p1
.end method

.method public measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 3

    const-string v0, "$this$measure"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "measurable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    invoke-direct {p0, p1}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->getLayoutCache(Landroidx/compose/ui/unit/Density;)Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;

    move-result-object v0

    .line 270
    invoke-interface {p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v1

    invoke-virtual {v0, p3, p4, v1}, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->layoutWithConstraints-K40F9xA(JLandroidx/compose/ui/unit/LayoutDirection;)Z

    move-result p3

    .line 271
    invoke-virtual {v0}, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->getTextLayoutResult()Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object p4

    .line 274
    invoke-virtual {p4}, Landroidx/compose/ui/text/TextLayoutResult;->getMultiParagraph()Landroidx/compose/ui/text/MultiParagraph;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/text/MultiParagraph;->getIntrinsics()Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->getHasStaleResolvedFonts()Z

    if-eqz p3, :cond_1

    .line 277
    invoke-static {p0}, Landroidx/compose/ui/node/LayoutModifierNodeKt;->invalidateLayer(Landroidx/compose/ui/node/LayoutModifierNode;)V

    iget-object p3, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->onTextLayout:Lkotlin/jvm/functions/Function1;

    if-eqz p3, :cond_0

    .line 278
    invoke-interface {p3, p4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 p3, 0x2

    new-array p3, p3, [Lkotlin/Pair;

    .line 281
    invoke-static {}, Landroidx/compose/ui/layout/AlignmentLineKt;->getFirstBaseline()Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    move-result-object v0

    invoke-virtual {p4}, Landroidx/compose/ui/text/TextLayoutResult;->getFirstBaseline()F

    move-result v1

    invoke-static {v1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p3, v1

    .line 282
    invoke-static {}, Landroidx/compose/ui/layout/AlignmentLineKt;->getLastBaseline()Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    move-result-object v0

    invoke-virtual {p4}, Landroidx/compose/ui/text/TextLayoutResult;->getLastBaseline()F

    move-result v1

    invoke-static {v1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p3, v1

    .line 280
    invoke-static {p3}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p3

    iput-object p3, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->baselineCache:Ljava/util/Map;

    :cond_1
    iget-object p3, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->onPlaceholderLayout:Lkotlin/jvm/functions/Function1;

    if-eqz p3, :cond_2

    .line 287
    invoke-virtual {p4}, Landroidx/compose/ui/text/TextLayoutResult;->getPlaceholderRects()Ljava/util/List;

    move-result-object v0

    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    :cond_2
    sget-object p3, Landroidx/compose/ui/unit/Constraints;->Companion:Landroidx/compose/ui/unit/Constraints$Companion;

    .line 292
    invoke-virtual {p4}, Landroidx/compose/ui/text/TextLayoutResult;->getSize-YbymL2g()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    move-result v0

    .line 293
    invoke-virtual {p4}, Landroidx/compose/ui/text/TextLayoutResult;->getSize-YbymL2g()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    move-result v1

    .line 291
    invoke-virtual {p3, v0, v1}, Landroidx/compose/ui/unit/Constraints$Companion;->fixed-JhjzzOo(II)J

    move-result-wide v0

    .line 290
    invoke-interface {p2, v0, v1}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object p2

    .line 298
    invoke-virtual {p4}, Landroidx/compose/ui/text/TextLayoutResult;->getSize-YbymL2g()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    move-result p3

    .line 299
    invoke-virtual {p4}, Landroidx/compose/ui/text/TextLayoutResult;->getSize-YbymL2g()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    move-result p4

    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->baselineCache:Ljava/util/Map;

    .line 300
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 297
    new-instance v1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$measure$1;

    invoke-direct {v1, p2}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$measure$1;-><init>(Landroidx/compose/ui/layout/Placeable;)V

    invoke-interface {p1, p3, p4, v0, v1}, Landroidx/compose/ui/layout/MeasureScope;->layout(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p1

    return-object p1
.end method

.method public final measureNonExtension-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 1

    const-string v0, "measureScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "measurable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p1

    return-object p1
.end method

.method public minIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "measurable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 333
    invoke-direct {p0, p1}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->getLayoutCache(Landroidx/compose/ui/unit/Density;)Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;

    move-result-object p2

    invoke-interface {p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->intrinsicHeight(ILandroidx/compose/ui/unit/LayoutDirection;)I

    move-result p1

    return p1
.end method

.method public final minIntrinsicHeightNonExtension(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 1

    const-string v0, "intrinsicMeasureScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "measurable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 327
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->minIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I

    move-result p1

    return p1
.end method

.method public minIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 0

    const-string p3, "<this>"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "measurable"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 319
    invoke-direct {p0, p1}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->getLayoutCache(Landroidx/compose/ui/unit/Density;)Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;

    move-result-object p2

    invoke-interface {p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->minIntrinsicWidth(Landroidx/compose/ui/unit/LayoutDirection;)I

    move-result p1

    return p1
.end method

.method public final minIntrinsicWidthNonExtension(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 1

    const-string v0, "intrinsicMeasureScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "measurable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->minIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I

    move-result p1

    return p1
.end method

.method public synthetic onMeasureResultChanged()V
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/compose/ui/node/DrawModifierNode$-CC;->$default$onMeasureResultChanged(Landroidx/compose/ui/node/DrawModifierNode;)V

    return-void
.end method

.method public final updateCallbacks(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/modifiers/SelectionController;)Z
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->onTextLayout:Lkotlin/jvm/functions/Function1;

    .line 183
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput-object p1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->onTextLayout:Lkotlin/jvm/functions/Function1;

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->onPlaceholderLayout:Lkotlin/jvm/functions/Function1;

    .line 188
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p2, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->onPlaceholderLayout:Lkotlin/jvm/functions/Function1;

    move p1, v1

    :cond_1
    iget-object p2, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->selectionController:Landroidx/compose/foundation/text/modifiers/SelectionController;

    .line 193
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    move v1, p1

    :goto_1
    return v1
.end method

.method public final updateDraw(Landroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/ui/text/TextStyle;)Z
    .locals 2

    const-string v0, "style"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->overrideColor:Landroidx/compose/ui/graphics/ColorProducer;

    .line 106
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-object p1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->overrideColor:Landroidx/compose/ui/graphics/ColorProducer;

    if-nez v0, :cond_1

    iget-object p1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->style:Landroidx/compose/ui/text/TextStyle;

    .line 110
    invoke-virtual {p2, p1}, Landroidx/compose/ui/text/TextStyle;->hasSameDrawAffectingAttributes(Landroidx/compose/ui/text/TextStyle;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final updateLayoutRelatedArgs-MPT68mk(Landroidx/compose/ui/text/TextStyle;Ljava/util/List;IIZLandroidx/compose/ui/text/font/FontFamily$Resolver;I)Z
    .locals 2

    const-string v0, "style"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fontFamilyResolver"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->style:Landroidx/compose/ui/text/TextStyle;

    .line 137
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/TextStyle;->hasSameLayoutAffectingAttributes(Landroidx/compose/ui/text/TextStyle;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-object p1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->style:Landroidx/compose/ui/text/TextStyle;

    iget-object p1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->placeholders:Ljava/util/List;

    .line 140
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iput-object p2, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->placeholders:Ljava/util/List;

    move v0, v1

    :cond_0
    iget p1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->minLines:I

    if-eq p1, p3, :cond_1

    iput p3, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->minLines:I

    move v0, v1

    :cond_1
    iget p1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->maxLines:I

    if-eq p1, p4, :cond_2

    iput p4, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->maxLines:I

    move v0, v1

    :cond_2
    iget-boolean p1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->softWrap:Z

    if-eq p1, p5, :cond_3

    iput-boolean p5, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->softWrap:Z

    move v0, v1

    :cond_3
    iget-object p1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 160
    invoke-static {p1, p6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    iput-object p6, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    move v0, v1

    :cond_4
    iget p1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->overflow:I

    .line 165
    invoke-static {p1, p7}, Landroidx/compose/ui/text/style/TextOverflow;->equals-impl0(II)Z

    move-result p1

    if-nez p1, :cond_5

    iput p7, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->overflow:I

    goto :goto_0

    :cond_5
    move v1, v0

    :goto_0
    return v1
.end method

.method public final updateText(Landroidx/compose/ui/text/AnnotatedString;)Z
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->text:Landroidx/compose/ui/text/AnnotatedString;

    .line 118
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iput-object p1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->text:Landroidx/compose/ui/text/AnnotatedString;

    const/4 p1, 0x1

    return p1
.end method
