.class public final Landroidx/compose/ui/graphics/vector/DrawCache;
.super Ljava/lang/Object;
.source "DrawCache.kt"


# instance fields
.field private final cacheScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

.field private cachedCanvas:Landroidx/compose/ui/graphics/Canvas;

.field private layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

.field private mCachedImage:Landroidx/compose/ui/graphics/ImageBitmap;

.field private scopeDensity:Landroidx/compose/ui/unit/Density;

.field private size:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    sget-object v0, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/DrawCache;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 45
    sget-object v0, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntSize$Companion;->getZero-YbymL2g()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/ui/graphics/vector/DrawCache;->size:J

    .line 47
    new-instance v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/DrawCache;->cacheScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    return-void
.end method

.method private final clear(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
    .locals 14

    .line 104
    sget-object v0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    sget-object v0, Landroidx/compose/ui/graphics/BlendMode;->Companion:Landroidx/compose/ui/graphics/BlendMode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/BlendMode$Companion;->getClear-0nO6VwU()I

    move-result v11

    const/16 v12, 0x3e

    const/4 v13, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v13}, Landroidx/compose/ui/graphics/drawscope/DrawScope$-CC;->drawRect-n-J9OG0$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final drawCachedImage-CJJAR-o(JLandroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;Lkotlin/jvm/functions/Function1;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    const-string v4, "density"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "layoutDirection"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "block"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v0, Landroidx/compose/ui/graphics/vector/DrawCache;->scopeDensity:Landroidx/compose/ui/unit/Density;

    iput-object v2, v0, Landroidx/compose/ui/graphics/vector/DrawCache;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    iget-object v4, v0, Landroidx/compose/ui/graphics/vector/DrawCache;->mCachedImage:Landroidx/compose/ui/graphics/ImageBitmap;

    iget-object v5, v0, Landroidx/compose/ui/graphics/vector/DrawCache;->cachedCanvas:Landroidx/compose/ui/graphics/Canvas;

    if-eqz v4, :cond_1

    if-eqz v5, :cond_1

    .line 66
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    move-result v6

    invoke-interface {v4}, Landroidx/compose/ui/graphics/ImageBitmap;->getWidth()I

    move-result v7

    if-gt v6, v7, :cond_1

    .line 67
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    move-result v6

    invoke-interface {v4}, Landroidx/compose/ui/graphics/ImageBitmap;->getHeight()I

    move-result v7

    if-le v6, v7, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move-wide/from16 v6, p1

    goto :goto_2

    .line 69
    :cond_1
    :goto_1
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    move-result v8

    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x1c

    const/4 v14, 0x0

    invoke-static/range {v8 .. v14}, Landroidx/compose/ui/graphics/ImageBitmapKt;->ImageBitmap-x__-hDU$default(IIIZLandroidx/compose/ui/graphics/colorspace/ColorSpace;ILjava/lang/Object;)Landroidx/compose/ui/graphics/ImageBitmap;

    move-result-object v4

    .line 70
    invoke-static {v4}, Landroidx/compose/ui/graphics/CanvasKt;->Canvas(Landroidx/compose/ui/graphics/ImageBitmap;)Landroidx/compose/ui/graphics/Canvas;

    move-result-object v5

    iput-object v4, v0, Landroidx/compose/ui/graphics/vector/DrawCache;->mCachedImage:Landroidx/compose/ui/graphics/ImageBitmap;

    iput-object v5, v0, Landroidx/compose/ui/graphics/vector/DrawCache;->cachedCanvas:Landroidx/compose/ui/graphics/Canvas;

    goto :goto_0

    :goto_2
    iput-wide v6, v0, Landroidx/compose/ui/graphics/vector/DrawCache;->size:J

    iget-object v8, v0, Landroidx/compose/ui/graphics/vector/DrawCache;->cacheScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 76
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    move-result-wide v6

    .line 558
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->getDrawParams()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->component1()Landroidx/compose/ui/unit/Density;

    move-result-object v10

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->component2()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v11

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->component3()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v12

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->component4-NH-jbRc()J

    move-result-wide v13

    .line 559
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->getDrawParams()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    move-result-object v9

    .line 560
    invoke-virtual {v9, v1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setDensity(Landroidx/compose/ui/unit/Density;)V

    .line 561
    invoke-virtual {v9, v2}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 562
    invoke-virtual {v9, v5}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setCanvas(Landroidx/compose/ui/graphics/Canvas;)V

    .line 563
    invoke-virtual {v9, v6, v7}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setSize-uvyYCjk(J)V

    .line 565
    invoke-interface {v5}, Landroidx/compose/ui/graphics/Canvas;->save()V

    .line 77
    invoke-direct {p0, v8}, Landroidx/compose/ui/graphics/vector/DrawCache;->clear(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V

    .line 78
    invoke-interface {v3, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    invoke-interface {v5}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    .line 568
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->getDrawParams()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    move-result-object v1

    .line 569
    invoke-virtual {v1, v10}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setDensity(Landroidx/compose/ui/unit/Density;)V

    .line 570
    invoke-virtual {v1, v11}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 571
    invoke-virtual {v1, v12}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setCanvas(Landroidx/compose/ui/graphics/Canvas;)V

    .line 572
    invoke-virtual {v1, v13, v14}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setSize-uvyYCjk(J)V

    .line 80
    invoke-interface {v4}, Landroidx/compose/ui/graphics/ImageBitmap;->prepareToDraw()V

    return-void
.end method

.method public final drawInto(Landroidx/compose/ui/graphics/drawscope/DrawScope;FLandroidx/compose/ui/graphics/ColorFilter;)V
    .locals 19

    move-object/from16 v0, p0

    const-string v1, "target"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Landroidx/compose/ui/graphics/vector/DrawCache;->mCachedImage:Landroidx/compose/ui/graphics/ImageBitmap;

    if-eqz v3, :cond_0

    const-wide/16 v4, 0x0

    iget-wide v6, v0, Landroidx/compose/ui/graphics/vector/DrawCache;->size:J

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x35a

    const/16 v18, 0x0

    move-object/from16 v2, p1

    move/from16 v12, p2

    move-object/from16 v14, p3

    .line 96
    invoke-static/range {v2 .. v18}, Landroidx/compose/ui/graphics/drawscope/DrawScope$-CC;->drawImage-AZ2fEMs$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/ImageBitmap;JJJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IIILjava/lang/Object;)V

    return-void

    .line 92
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "drawCachedImage must be invoked first before attempting to draw the result into another destination"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
