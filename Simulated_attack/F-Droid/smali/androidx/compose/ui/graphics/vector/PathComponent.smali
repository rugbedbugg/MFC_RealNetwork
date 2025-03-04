.class public final Landroidx/compose/ui/graphics/vector/PathComponent;
.super Landroidx/compose/ui/graphics/vector/VNode;
.source "Vector.kt"


# instance fields
.field private fill:Landroidx/compose/ui/graphics/Brush;

.field private fillAlpha:F

.field private isPathDirty:Z

.field private isStrokeDirty:Z

.field private isTrimPathDirty:Z

.field private name:Ljava/lang/String;

.field private final path:Landroidx/compose/ui/graphics/Path;

.field private pathData:Ljava/util/List;

.field private pathFillType:I

.field private final pathMeasure$delegate:Lkotlin/Lazy;

.field private renderPath:Landroidx/compose/ui/graphics/Path;

.field private stroke:Landroidx/compose/ui/graphics/Brush;

.field private strokeAlpha:F

.field private strokeLineCap:I

.field private strokeLineJoin:I

.field private strokeLineMiter:F

.field private strokeLineWidth:F

.field private strokeStyle:Landroidx/compose/ui/graphics/drawscope/Stroke;

.field private trimPathEnd:F

.field private trimPathOffset:F

.field private trimPathStart:F


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 175
    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/vector/VNode;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v0, ""

    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->name:Ljava/lang/String;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->fillAlpha:F

    .line 194
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getEmptyPath()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->pathData:Ljava/util/List;

    .line 201
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v1

    iput v1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->pathFillType:I

    iput v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->strokeAlpha:F

    .line 226
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultStrokeLineCap()I

    move-result v1

    iput v1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->strokeLineCap:I

    .line 233
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultStrokeLineJoin()I

    move-result v1

    iput v1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->strokeLineJoin:I

    const/high16 v1, 0x40800000    # 4.0f

    iput v1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->strokeLineMiter:F

    iput v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->trimPathEnd:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->isPathDirty:Z

    iput-boolean v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->isStrokeDirty:Z

    .line 280
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->path:Landroidx/compose/ui/graphics/Path;

    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->renderPath:Landroidx/compose/ui/graphics/Path;

    .line 283
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Landroidx/compose/ui/graphics/vector/PathComponent$pathMeasure$2;->INSTANCE:Landroidx/compose/ui/graphics/vector/PathComponent$pathMeasure$2;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->pathMeasure$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getPathMeasure()Landroidx/compose/ui/graphics/PathMeasure;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->pathMeasure$delegate:Lkotlin/Lazy;

    .line 283
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/graphics/PathMeasure;

    return-object v0
.end method

.method private final updatePath()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->pathData:Ljava/util/List;

    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->path:Landroidx/compose/ui/graphics/Path;

    .line 287
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/vector/PathParserKt;->toPath(Ljava/util/List;Landroidx/compose/ui/graphics/Path;)Landroidx/compose/ui/graphics/Path;

    .line 288
    invoke-direct {p0}, Landroidx/compose/ui/graphics/vector/PathComponent;->updateRenderPath()V

    return-void
.end method

.method private final updateRenderPath()V
    .locals 7

    iget v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->trimPathStart:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->trimPathEnd:F

    cmpg-float v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->path:Landroidx/compose/ui/graphics/Path;

    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->renderPath:Landroidx/compose/ui/graphics/Path;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->renderPath:Landroidx/compose/ui/graphics/Path;

    iget-object v3, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->path:Landroidx/compose/ui/graphics/Path;

    .line 295
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 296
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->renderPath:Landroidx/compose/ui/graphics/Path;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->renderPath:Landroidx/compose/ui/graphics/Path;

    .line 299
    invoke-interface {v0}, Landroidx/compose/ui/graphics/Path;->getFillType-Rg-k1Os()I

    move-result v0

    iget-object v3, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->renderPath:Landroidx/compose/ui/graphics/Path;

    .line 300
    invoke-interface {v3}, Landroidx/compose/ui/graphics/Path;->rewind()V

    iget-object v3, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->renderPath:Landroidx/compose/ui/graphics/Path;

    .line 301
    invoke-interface {v3, v0}, Landroidx/compose/ui/graphics/Path;->setFillType-oQ8Xj4U(I)V

    .line 304
    :goto_0
    invoke-direct {p0}, Landroidx/compose/ui/graphics/vector/PathComponent;->getPathMeasure()Landroidx/compose/ui/graphics/PathMeasure;

    move-result-object v0

    iget-object v3, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->path:Landroidx/compose/ui/graphics/Path;

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroidx/compose/ui/graphics/PathMeasure;->setPath(Landroidx/compose/ui/graphics/Path;Z)V

    .line 305
    invoke-direct {p0}, Landroidx/compose/ui/graphics/vector/PathComponent;->getPathMeasure()Landroidx/compose/ui/graphics/PathMeasure;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/graphics/PathMeasure;->getLength()F

    move-result v0

    iget v3, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->trimPathStart:F

    iget v4, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->trimPathOffset:F

    add-float/2addr v3, v4

    rem-float/2addr v3, v2

    mul-float/2addr v3, v0

    iget v5, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->trimPathEnd:F

    add-float/2addr v5, v4

    rem-float/2addr v5, v2

    mul-float/2addr v5, v0

    cmpl-float v2, v3, v5

    const/4 v4, 0x1

    if-lez v2, :cond_2

    .line 309
    invoke-direct {p0}, Landroidx/compose/ui/graphics/vector/PathComponent;->getPathMeasure()Landroidx/compose/ui/graphics/PathMeasure;

    move-result-object v2

    iget-object v6, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->renderPath:Landroidx/compose/ui/graphics/Path;

    invoke-interface {v2, v3, v0, v6, v4}, Landroidx/compose/ui/graphics/PathMeasure;->getSegment(FFLandroidx/compose/ui/graphics/Path;Z)Z

    .line 310
    invoke-direct {p0}, Landroidx/compose/ui/graphics/vector/PathComponent;->getPathMeasure()Landroidx/compose/ui/graphics/PathMeasure;

    move-result-object v0

    iget-object v2, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->renderPath:Landroidx/compose/ui/graphics/Path;

    invoke-interface {v0, v1, v5, v2, v4}, Landroidx/compose/ui/graphics/PathMeasure;->getSegment(FFLandroidx/compose/ui/graphics/Path;Z)Z

    goto :goto_1

    .line 312
    :cond_2
    invoke-direct {p0}, Landroidx/compose/ui/graphics/vector/PathComponent;->getPathMeasure()Landroidx/compose/ui/graphics/PathMeasure;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->renderPath:Landroidx/compose/ui/graphics/Path;

    invoke-interface {v0, v3, v5, v1, v4}, Landroidx/compose/ui/graphics/PathMeasure;->getSegment(FFLandroidx/compose/ui/graphics/Path;Z)Z

    :goto_1
    return-void
.end method


# virtual methods
.method public draw(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
    .locals 20

    move-object/from16 v0, p0

    const-string v1, "<this>"

    move-object/from16 v11, p1

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v1, v0, Landroidx/compose/ui/graphics/vector/PathComponent;->isPathDirty:Z

    if-eqz v1, :cond_0

    .line 319
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/graphics/vector/PathComponent;->updatePath()V

    goto :goto_0

    :cond_0
    iget-boolean v1, v0, Landroidx/compose/ui/graphics/vector/PathComponent;->isTrimPathDirty:Z

    if-eqz v1, :cond_1

    .line 321
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/graphics/vector/PathComponent;->updateRenderPath()V

    :cond_1
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/compose/ui/graphics/vector/PathComponent;->isPathDirty:Z

    iput-boolean v1, v0, Landroidx/compose/ui/graphics/vector/PathComponent;->isTrimPathDirty:Z

    iget-object v4, v0, Landroidx/compose/ui/graphics/vector/PathComponent;->fill:Landroidx/compose/ui/graphics/Brush;

    if-eqz v4, :cond_2

    iget-object v3, v0, Landroidx/compose/ui/graphics/vector/PathComponent;->renderPath:Landroidx/compose/ui/graphics/Path;

    iget v5, v0, Landroidx/compose/ui/graphics/vector/PathComponent;->fillAlpha:F

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x38

    const/4 v10, 0x0

    move-object/from16 v2, p1

    .line 326
    invoke-static/range {v2 .. v10}, Landroidx/compose/ui/graphics/drawscope/DrawScope$-CC;->drawPath-GBMwjPU$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    :cond_2
    iget-object v4, v0, Landroidx/compose/ui/graphics/vector/PathComponent;->stroke:Landroidx/compose/ui/graphics/Brush;

    if-eqz v4, :cond_5

    iget-object v2, v0, Landroidx/compose/ui/graphics/vector/PathComponent;->strokeStyle:Landroidx/compose/ui/graphics/drawscope/Stroke;

    iget-boolean v3, v0, Landroidx/compose/ui/graphics/vector/PathComponent;->isStrokeDirty:Z

    if-nez v3, :cond_4

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    move-object v6, v2

    goto :goto_3

    .line 331
    :cond_4
    :goto_2
    new-instance v2, Landroidx/compose/ui/graphics/drawscope/Stroke;

    iget v13, v0, Landroidx/compose/ui/graphics/vector/PathComponent;->strokeLineWidth:F

    iget v14, v0, Landroidx/compose/ui/graphics/vector/PathComponent;->strokeLineMiter:F

    iget v15, v0, Landroidx/compose/ui/graphics/vector/PathComponent;->strokeLineCap:I

    iget v3, v0, Landroidx/compose/ui/graphics/vector/PathComponent;->strokeLineJoin:I

    const/16 v17, 0x0

    const/16 v18, 0x10

    const/16 v19, 0x0

    move-object v12, v2

    move/from16 v16, v3

    invoke-direct/range {v12 .. v19}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIILandroidx/compose/ui/graphics/PathEffect;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v2, v0, Landroidx/compose/ui/graphics/vector/PathComponent;->strokeStyle:Landroidx/compose/ui/graphics/drawscope/Stroke;

    iput-boolean v1, v0, Landroidx/compose/ui/graphics/vector/PathComponent;->isStrokeDirty:Z

    goto :goto_1

    :goto_3
    iget-object v3, v0, Landroidx/compose/ui/graphics/vector/PathComponent;->renderPath:Landroidx/compose/ui/graphics/Path;

    iget v5, v0, Landroidx/compose/ui/graphics/vector/PathComponent;->strokeAlpha:F

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x30

    const/4 v10, 0x0

    move-object/from16 v2, p1

    .line 335
    invoke-static/range {v2 .. v10}, Landroidx/compose/ui/graphics/drawscope/DrawScope$-CC;->drawPath-GBMwjPU$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    :cond_5
    return-void
.end method

.method public final setFill(Landroidx/compose/ui/graphics/Brush;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->fill:Landroidx/compose/ui/graphics/Brush;

    .line 185
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    return-void
.end method

.method public final setFillAlpha(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->fillAlpha:F

    .line 191
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->name:Ljava/lang/String;

    .line 179
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    return-void
.end method

.method public final setPathData(Ljava/util/List;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->pathData:Ljava/util/List;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->isPathDirty:Z

    .line 198
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    return-void
.end method

.method public final setPathFillType-oQ8Xj4U(I)V
    .locals 1

    iput p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->pathFillType:I

    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->renderPath:Landroidx/compose/ui/graphics/Path;

    .line 204
    invoke-interface {v0, p1}, Landroidx/compose/ui/graphics/Path;->setFillType-oQ8Xj4U(I)V

    .line 205
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    return-void
.end method

.method public final setStroke(Landroidx/compose/ui/graphics/Brush;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->stroke:Landroidx/compose/ui/graphics/Brush;

    .line 223
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    return-void
.end method

.method public final setStrokeAlpha(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->strokeAlpha:F

    .line 211
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    return-void
.end method

.method public final setStrokeLineCap-BeK7IIE(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->strokeLineCap:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->isStrokeDirty:Z

    .line 230
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    return-void
.end method

.method public final setStrokeLineJoin-Ww9F2mQ(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->strokeLineJoin:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->isStrokeDirty:Z

    .line 237
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    return-void
.end method

.method public final setStrokeLineMiter(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->strokeLineMiter:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->isStrokeDirty:Z

    .line 244
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    return-void
.end method

.method public final setStrokeLineWidth(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->strokeLineWidth:F

    .line 217
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    return-void
.end method

.method public final setTrimPathEnd(F)V
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->trimPathEnd:F

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->trimPathEnd:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->isTrimPathDirty:Z

    .line 261
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    :goto_0
    return-void
.end method

.method public final setTrimPathOffset(F)V
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->trimPathOffset:F

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->trimPathOffset:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->isTrimPathDirty:Z

    .line 270
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    :goto_0
    return-void
.end method

.method public final setTrimPathStart(F)V
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->trimPathStart:F

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->trimPathStart:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->isTrimPathDirty:Z

    .line 252
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->path:Landroidx/compose/ui/graphics/Path;

    .line 339
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
