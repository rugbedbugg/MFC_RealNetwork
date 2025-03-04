.class public final Landroidx/compose/ui/platform/OutlineResolver;
.super Ljava/lang/Object;
.source "OutlineResolver.android.kt"


# instance fields
.field private cacheIsDirty:Z

.field private final cachedOutline:Landroid/graphics/Outline;

.field private cachedRrectPath:Landroidx/compose/ui/graphics/Path;

.field private calculatedOutline:Landroidx/compose/ui/graphics/Outline;

.field private density:Landroidx/compose/ui/unit/Density;

.field private isSupportedOutline:Z

.field private layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

.field private outlineNeeded:Z

.field private outlinePath:Landroidx/compose/ui/graphics/Path;

.field private rectSize:J

.field private rectTopLeft:J

.field private roundedCornerRadius:F

.field private shape:Landroidx/compose/ui/graphics/Shape;

.field private size:J

.field private tmpOpPath:Landroidx/compose/ui/graphics/Path;

.field private tmpPath:Landroidx/compose/ui/graphics/Path;

.field private tmpRoundRect:Landroidx/compose/ui/geometry/RoundRect;

.field private tmpTouchPointPath:Landroidx/compose/ui/graphics/Path;

.field private usePathForClip:Z


# direct methods
.method public constructor <init>(Landroidx/compose/ui/unit/Density;)V
    .locals 2

    const-string v0, "density"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/platform/OutlineResolver;->density:Landroidx/compose/ui/unit/Density;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/ui/platform/OutlineResolver;->isSupportedOutline:Z

    .line 51
    new-instance p1, Landroid/graphics/Outline;

    invoke-direct {p1}, Landroid/graphics/Outline;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setAlpha(F)V

    iput-object p1, p0, Landroidx/compose/ui/platform/OutlineResolver;->cachedOutline:Landroid/graphics/Outline;

    .line 56
    sget-object p1, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Size$Companion;->getZero-NH-jbRc()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->size:J

    .line 61
    invoke-static {}, Landroidx/compose/ui/graphics/RectangleShapeKt;->getRectangleShape()Landroidx/compose/ui/graphics/Shape;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->shape:Landroidx/compose/ui/graphics/Shape;

    .line 142
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->rectTopLeft:J

    .line 149
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Size$Companion;->getZero-NH-jbRc()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->rectSize:J

    .line 156
    sget-object p1, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    iput-object p1, p0, Landroidx/compose/ui/platform/OutlineResolver;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    return-void
.end method

.method private final isSameBounds-4L21HEs(Landroidx/compose/ui/geometry/RoundRect;JJF)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 346
    invoke-static {p1}, Landroidx/compose/ui/geometry/RoundRectKt;->isSimple(Landroidx/compose/ui/geometry/RoundRect;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 349
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/RoundRect;->getLeft()F

    move-result v1

    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v2

    cmpg-float v1, v1, v2

    if-nez v1, :cond_1

    .line 350
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/RoundRect;->getTop()F

    move-result v1

    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v2

    cmpg-float v1, v1, v2

    if-nez v1, :cond_1

    .line 351
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/RoundRect;->getRight()F

    move-result v1

    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v2

    invoke-static {p4, p5}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v3

    add-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-nez v1, :cond_1

    .line 352
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/RoundRect;->getBottom()F

    move-result v1

    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p2

    invoke-static {p4, p5}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result p3

    add-float/2addr p2, p3

    cmpg-float p2, v1, p2

    if-nez p2, :cond_1

    .line 353
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/RoundRect;->getTopLeftCornerRadius-kKHJgLs()J

    move-result-wide p1

    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/CornerRadius;->getX-impl(J)F

    move-result p1

    cmpg-float p1, p1, p6

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method private final updateCache()V
    .locals 5

    iget-boolean v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->cacheIsDirty:Z

    if-eqz v0, :cond_3

    .line 270
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->rectTopLeft:J

    iget-wide v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->size:J

    iput-wide v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->rectSize:J

    const/4 v2, 0x0

    iput v2, p0, Landroidx/compose/ui/platform/OutlineResolver;->roundedCornerRadius:F

    const/4 v3, 0x0

    iput-object v3, p0, Landroidx/compose/ui/platform/OutlineResolver;->outlinePath:Landroidx/compose/ui/graphics/Path;

    const/4 v3, 0x0

    iput-boolean v3, p0, Landroidx/compose/ui/platform/OutlineResolver;->cacheIsDirty:Z

    iput-boolean v3, p0, Landroidx/compose/ui/platform/OutlineResolver;->usePathForClip:Z

    iget-boolean v3, p0, Landroidx/compose/ui/platform/OutlineResolver;->outlineNeeded:Z

    if-eqz v3, :cond_2

    .line 276
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    iget-wide v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->size:J

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->isSupportedOutline:Z

    iget-object v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->shape:Landroidx/compose/ui/graphics/Shape;

    iget-wide v1, p0, Landroidx/compose/ui/platform/OutlineResolver;->size:J

    iget-object v3, p0, Landroidx/compose/ui/platform/OutlineResolver;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    iget-object v4, p0, Landroidx/compose/ui/platform/OutlineResolver;->density:Landroidx/compose/ui/unit/Density;

    .line 281
    invoke-interface {v0, v1, v2, v3, v4}, Landroidx/compose/ui/graphics/Shape;->createOutline-Pq9zytI(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)Landroidx/compose/ui/graphics/Outline;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->calculatedOutline:Landroidx/compose/ui/graphics/Outline;

    .line 284
    instance-of v1, v0, Landroidx/compose/ui/graphics/Outline$Rectangle;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/compose/ui/graphics/Outline$Rectangle;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Outline$Rectangle;->getRect()Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/OutlineResolver;->updateCacheWithRect(Landroidx/compose/ui/geometry/Rect;)V

    goto :goto_0

    .line 285
    :cond_0
    instance-of v1, v0, Landroidx/compose/ui/graphics/Outline$Rounded;

    if-eqz v1, :cond_1

    check-cast v0, Landroidx/compose/ui/graphics/Outline$Rounded;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Outline$Rounded;->getRoundRect()Landroidx/compose/ui/geometry/RoundRect;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/OutlineResolver;->updateCacheWithRoundRect(Landroidx/compose/ui/geometry/RoundRect;)V

    goto :goto_0

    .line 286
    :cond_1
    instance-of v1, v0, Landroidx/compose/ui/graphics/Outline$Generic;

    if-eqz v1, :cond_3

    check-cast v0, Landroidx/compose/ui/graphics/Outline$Generic;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Outline$Generic;->getPath()Landroidx/compose/ui/graphics/Path;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/OutlineResolver;->updateCacheWithPath(Landroidx/compose/ui/graphics/Path;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->cachedOutline:Landroid/graphics/Outline;

    .line 289
    invoke-virtual {v0}, Landroid/graphics/Outline;->setEmpty()V

    :cond_3
    :goto_0
    return-void
.end method

.method private final updateCacheWithPath(Landroidx/compose/ui/graphics/Path;)V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    const/4 v2, 0x1

    if-gt v0, v1, :cond_1

    .line 328
    invoke-interface {p1}, Landroidx/compose/ui/graphics/Path;->isConvex()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->isSupportedOutline:Z

    iget-object v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->cachedOutline:Landroid/graphics/Outline;

    .line 334
    invoke-virtual {v0}, Landroid/graphics/Outline;->setEmpty()V

    iput-boolean v2, p0, Landroidx/compose/ui/platform/OutlineResolver;->usePathForClip:Z

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->cachedOutline:Landroid/graphics/Outline;

    .line 35
    instance-of v1, p1, Landroidx/compose/ui/graphics/AndroidPath;

    if-eqz v1, :cond_2

    .line 36
    move-object v1, p1

    check-cast v1, Landroidx/compose/ui/graphics/AndroidPath;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/AndroidPath;->getInternalPath()Landroid/graphics/Path;

    move-result-object v1

    .line 330
    invoke-virtual {v0, v1}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V

    iget-object v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->cachedOutline:Landroid/graphics/Outline;

    .line 331
    invoke-virtual {v0}, Landroid/graphics/Outline;->canClip()Z

    move-result v0

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->usePathForClip:Z

    :goto_1
    iput-object p1, p0, Landroidx/compose/ui/platform/OutlineResolver;->outlinePath:Landroidx/compose/ui/graphics/Path;

    return-void

    .line 38
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Unable to obtain android.graphics.Path"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final updateCacheWithRect(Landroidx/compose/ui/geometry/Rect;)V
    .locals 4

    .line 295
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->rectTopLeft:J

    .line 296
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getWidth()F

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getHeight()F

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->rectSize:J

    iget-object v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->cachedOutline:Landroid/graphics/Outline;

    .line 298
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v1

    invoke-static {v1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v1

    .line 299
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v2

    invoke-static {v2}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v2

    .line 300
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v3

    invoke-static {v3}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v3

    .line 301
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result p1

    invoke-static {p1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p1

    .line 297
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/Outline;->setRect(IIII)V

    return-void
.end method

.method private final updateCacheWithRoundRect(Landroidx/compose/ui/geometry/RoundRect;)V
    .locals 8

    .line 306
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/RoundRect;->getTopLeftCornerRadius-kKHJgLs()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/CornerRadius;->getX-impl(J)F

    move-result v0

    .line 307
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/RoundRect;->getLeft()F

    move-result v1

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/RoundRect;->getTop()F

    move-result v2

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/compose/ui/platform/OutlineResolver;->rectTopLeft:J

    .line 308
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/RoundRect;->getWidth()F

    move-result v1

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/RoundRect;->getHeight()F

    move-result v2

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/compose/ui/platform/OutlineResolver;->rectSize:J

    .line 309
    invoke-static {p1}, Landroidx/compose/ui/geometry/RoundRectKt;->isSimple(Landroidx/compose/ui/geometry/RoundRect;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroidx/compose/ui/platform/OutlineResolver;->cachedOutline:Landroid/graphics/Outline;

    .line 311
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/RoundRect;->getLeft()F

    move-result v1

    invoke-static {v1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v3

    .line 312
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/RoundRect;->getTop()F

    move-result v1

    invoke-static {v1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v4

    .line 313
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/RoundRect;->getRight()F

    move-result v1

    invoke-static {v1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v5

    .line 314
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/RoundRect;->getBottom()F

    move-result p1

    invoke-static {p1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v6

    move v7, v0

    .line 310
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    iput v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->roundedCornerRadius:F

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->cachedRrectPath:Landroidx/compose/ui/graphics/Path;

    if-nez v0, :cond_1

    .line 319
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->cachedRrectPath:Landroidx/compose/ui/graphics/Path;

    .line 320
    :cond_1
    invoke-interface {v0}, Landroidx/compose/ui/graphics/Path;->reset()V

    .line 321
    invoke-interface {v0, p1}, Landroidx/compose/ui/graphics/Path;->addRoundRect(Landroidx/compose/ui/geometry/RoundRect;)V

    .line 322
    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/OutlineResolver;->updateCacheWithPath(Landroidx/compose/ui/graphics/Path;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final clipToOutline(Landroidx/compose/ui/graphics/Canvas;)V
    .locals 20

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    const-string v0, "canvas"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/platform/OutlineResolver;->getClipPath()Landroidx/compose/ui/graphics/Path;

    move-result-object v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x2

    if-eqz v0, :cond_0

    .line 218
    invoke-static {v8, v0, v9, v11, v10}, Landroidx/compose/ui/graphics/Canvas$-CC;->clipPath-mtrdD-E$default(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/Path;IILjava/lang/Object;)V

    goto/16 :goto_1

    :cond_0
    iget v6, v7, Landroidx/compose/ui/platform/OutlineResolver;->roundedCornerRadius:F

    const/4 v12, 0x0

    cmpl-float v0, v6, v12

    if-lez v0, :cond_4

    iget-object v13, v7, Landroidx/compose/ui/platform/OutlineResolver;->tmpPath:Landroidx/compose/ui/graphics/Path;

    iget-object v1, v7, Landroidx/compose/ui/platform/OutlineResolver;->tmpRoundRect:Landroidx/compose/ui/geometry/RoundRect;

    if-eqz v13, :cond_1

    iget-wide v2, v7, Landroidx/compose/ui/platform/OutlineResolver;->rectTopLeft:J

    iget-wide v4, v7, Landroidx/compose/ui/platform/OutlineResolver;->rectSize:J

    move-object/from16 v0, p0

    .line 228
    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/platform/OutlineResolver;->isSameBounds-4L21HEs(Landroidx/compose/ui/geometry/RoundRect;JJF)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-wide v0, v7, Landroidx/compose/ui/platform/OutlineResolver;->rectTopLeft:J

    .line 230
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v14

    iget-wide v0, v7, Landroidx/compose/ui/platform/OutlineResolver;->rectTopLeft:J

    .line 231
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v15

    iget-wide v0, v7, Landroidx/compose/ui/platform/OutlineResolver;->rectTopLeft:J

    .line 232
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v0

    iget-wide v1, v7, Landroidx/compose/ui/platform/OutlineResolver;->rectSize:J

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v1

    add-float v16, v0, v1

    iget-wide v0, v7, Landroidx/compose/ui/platform/OutlineResolver;->rectTopLeft:J

    .line 233
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v0

    iget-wide v1, v7, Landroidx/compose/ui/platform/OutlineResolver;->rectSize:J

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v1

    add-float v17, v0, v1

    iget v0, v7, Landroidx/compose/ui/platform/OutlineResolver;->roundedCornerRadius:F

    .line 234
    invoke-static {v0, v12, v11, v10}, Landroidx/compose/ui/geometry/CornerRadiusKt;->CornerRadius$default(FFILjava/lang/Object;)J

    move-result-wide v18

    .line 229
    invoke-static/range {v14 .. v19}, Landroidx/compose/ui/geometry/RoundRectKt;->RoundRect-gG7oq9Y(FFFFJ)Landroidx/compose/ui/geometry/RoundRect;

    move-result-object v0

    if-nez v13, :cond_2

    .line 237
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/Path;

    move-result-object v13

    goto :goto_0

    .line 239
    :cond_2
    invoke-interface {v13}, Landroidx/compose/ui/graphics/Path;->reset()V

    .line 241
    :goto_0
    invoke-interface {v13, v0}, Landroidx/compose/ui/graphics/Path;->addRoundRect(Landroidx/compose/ui/geometry/RoundRect;)V

    iput-object v0, v7, Landroidx/compose/ui/platform/OutlineResolver;->tmpRoundRect:Landroidx/compose/ui/geometry/RoundRect;

    iput-object v13, v7, Landroidx/compose/ui/platform/OutlineResolver;->tmpPath:Landroidx/compose/ui/graphics/Path;

    .line 245
    :cond_3
    invoke-static {v8, v13, v9, v11, v10}, Landroidx/compose/ui/graphics/Canvas$-CC;->clipPath-mtrdD-E$default(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/Path;IILjava/lang/Object;)V

    goto :goto_1

    :cond_4
    iget-wide v0, v7, Landroidx/compose/ui/platform/OutlineResolver;->rectTopLeft:J

    .line 249
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v9

    iget-wide v0, v7, Landroidx/compose/ui/platform/OutlineResolver;->rectTopLeft:J

    .line 250
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v10

    iget-wide v0, v7, Landroidx/compose/ui/platform/OutlineResolver;->rectTopLeft:J

    .line 251
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v0

    iget-wide v1, v7, Landroidx/compose/ui/platform/OutlineResolver;->rectSize:J

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v1

    add-float v11, v0, v1

    iget-wide v0, v7, Landroidx/compose/ui/platform/OutlineResolver;->rectTopLeft:J

    .line 252
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v0

    iget-wide v1, v7, Landroidx/compose/ui/platform/OutlineResolver;->rectSize:J

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v1

    add-float v12, v0, v1

    const/4 v13, 0x0

    const/16 v14, 0x10

    const/4 v15, 0x0

    move-object/from16 v8, p1

    .line 248
    invoke-static/range {v8 .. v15}, Landroidx/compose/ui/graphics/Canvas$-CC;->clipRect-N_I0leg$default(Landroidx/compose/ui/graphics/Canvas;FFFFIILjava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public final getClipPath()Landroidx/compose/ui/graphics/Path;
    .locals 1

    .line 133
    invoke-direct {p0}, Landroidx/compose/ui/platform/OutlineResolver;->updateCache()V

    iget-object v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->outlinePath:Landroidx/compose/ui/graphics/Path;

    return-object v0
.end method

.method public final getOutline()Landroid/graphics/Outline;
    .locals 1

    .line 111
    invoke-direct {p0}, Landroidx/compose/ui/platform/OutlineResolver;->updateCache()V

    iget-boolean v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->outlineNeeded:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->isSupportedOutline:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->cachedOutline:Landroid/graphics/Outline;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public final getOutlineClipSupported()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->usePathForClip:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final isInOutline-k-4lQ0M(J)Z
    .locals 3

    iget-boolean v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->outlineNeeded:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->calculatedOutline:Landroidx/compose/ui/graphics/Outline;

    if-nez v0, :cond_1

    return v1

    .line 204
    :cond_1
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v1

    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p1

    iget-object p2, p0, Landroidx/compose/ui/platform/OutlineResolver;->tmpTouchPointPath:Landroidx/compose/ui/graphics/Path;

    iget-object v2, p0, Landroidx/compose/ui/platform/OutlineResolver;->tmpOpPath:Landroidx/compose/ui/graphics/Path;

    invoke-static {v0, v1, p1, p2, v2}, Landroidx/compose/ui/platform/ShapeContainingUtilKt;->isInOutline(Landroidx/compose/ui/graphics/Outline;FFLandroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Path;)Z

    move-result p1

    return p1
.end method

.method public final update(Landroidx/compose/ui/graphics/Shape;FZFLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)Z
    .locals 1

    const-string v0, "shape"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutDirection"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "density"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->cachedOutline:Landroid/graphics/Outline;

    .line 173
    invoke-virtual {v0, p2}, Landroid/graphics/Outline;->setAlpha(F)V

    iget-object p2, p0, Landroidx/compose/ui/platform/OutlineResolver;->shape:Landroidx/compose/ui/graphics/Shape;

    .line 174
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    if-eqz p2, :cond_0

    iput-object p1, p0, Landroidx/compose/ui/platform/OutlineResolver;->shape:Landroidx/compose/ui/graphics/Shape;

    iput-boolean v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->cacheIsDirty:Z

    :cond_0
    if-nez p3, :cond_2

    const/4 p1, 0x0

    cmpl-float p1, p4, p1

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move p1, v0

    :goto_1
    iget-boolean p3, p0, Landroidx/compose/ui/platform/OutlineResolver;->outlineNeeded:Z

    if-eq p3, p1, :cond_3

    iput-boolean p1, p0, Landroidx/compose/ui/platform/OutlineResolver;->outlineNeeded:Z

    iput-boolean v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->cacheIsDirty:Z

    :cond_3
    iget-object p1, p0, Landroidx/compose/ui/platform/OutlineResolver;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    if-eq p1, p5, :cond_4

    iput-object p5, p0, Landroidx/compose/ui/platform/OutlineResolver;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    iput-boolean v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->cacheIsDirty:Z

    :cond_4
    iget-object p1, p0, Landroidx/compose/ui/platform/OutlineResolver;->density:Landroidx/compose/ui/unit/Density;

    .line 188
    invoke-static {p1, p6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    iput-object p6, p0, Landroidx/compose/ui/platform/OutlineResolver;->density:Landroidx/compose/ui/unit/Density;

    iput-boolean v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->cacheIsDirty:Z

    :cond_5
    return p2
.end method

.method public final update-uvyYCjk(J)V
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->size:J

    .line 262
    invoke-static {v0, v1, p1, p2}, Landroidx/compose/ui/geometry/Size;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    iput-wide p1, p0, Landroidx/compose/ui/platform/OutlineResolver;->size:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/ui/platform/OutlineResolver;->cacheIsDirty:Z

    :cond_0
    return-void
.end method
