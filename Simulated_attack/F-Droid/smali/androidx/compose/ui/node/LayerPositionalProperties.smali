.class final Landroidx/compose/ui/node/LayerPositionalProperties;
.super Ljava/lang/Object;
.source "NodeCoordinator.kt"


# instance fields
.field private cameraDistance:F

.field private rotationX:F

.field private rotationY:F

.field private rotationZ:F

.field private scaleX:F

.field private scaleY:F

.field private transformOrigin:J

.field private translationX:F

.field private translationY:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/compose/ui/node/LayerPositionalProperties;->scaleX:F

    iput v0, p0, Landroidx/compose/ui/node/LayerPositionalProperties;->scaleY:F

    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p0, Landroidx/compose/ui/node/LayerPositionalProperties;->cameraDistance:F

    .line 1295
    sget-object v0, Landroidx/compose/ui/graphics/TransformOrigin;->Companion:Landroidx/compose/ui/graphics/TransformOrigin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/TransformOrigin$Companion;->getCenter-SzJe1aQ()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/ui/node/LayerPositionalProperties;->transformOrigin:J

    return-void
.end method


# virtual methods
.method public final copyFrom(Landroidx/compose/ui/graphics/GraphicsLayerScope;)V
    .locals 2

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1310
    invoke-interface {p1}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->getScaleX()F

    move-result v0

    iput v0, p0, Landroidx/compose/ui/node/LayerPositionalProperties;->scaleX:F

    .line 1311
    invoke-interface {p1}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->getScaleY()F

    move-result v0

    iput v0, p0, Landroidx/compose/ui/node/LayerPositionalProperties;->scaleY:F

    .line 1312
    invoke-interface {p1}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->getTranslationX()F

    move-result v0

    iput v0, p0, Landroidx/compose/ui/node/LayerPositionalProperties;->translationX:F

    .line 1313
    invoke-interface {p1}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->getTranslationY()F

    move-result v0

    iput v0, p0, Landroidx/compose/ui/node/LayerPositionalProperties;->translationY:F

    .line 1314
    invoke-interface {p1}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->getRotationX()F

    move-result v0

    iput v0, p0, Landroidx/compose/ui/node/LayerPositionalProperties;->rotationX:F

    .line 1315
    invoke-interface {p1}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->getRotationY()F

    move-result v0

    iput v0, p0, Landroidx/compose/ui/node/LayerPositionalProperties;->rotationY:F

    .line 1316
    invoke-interface {p1}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->getRotationZ()F

    move-result v0

    iput v0, p0, Landroidx/compose/ui/node/LayerPositionalProperties;->rotationZ:F

    .line 1317
    invoke-interface {p1}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->getCameraDistance()F

    move-result v0

    iput v0, p0, Landroidx/compose/ui/node/LayerPositionalProperties;->cameraDistance:F

    .line 1318
    invoke-interface {p1}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->getTransformOrigin-SzJe1aQ()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/ui/node/LayerPositionalProperties;->transformOrigin:J

    return-void
.end method

.method public final copyFrom(Landroidx/compose/ui/node/LayerPositionalProperties;)V
    .locals 2

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1298
    iget v0, p1, Landroidx/compose/ui/node/LayerPositionalProperties;->scaleX:F

    iput v0, p0, Landroidx/compose/ui/node/LayerPositionalProperties;->scaleX:F

    .line 1299
    iget v0, p1, Landroidx/compose/ui/node/LayerPositionalProperties;->scaleY:F

    iput v0, p0, Landroidx/compose/ui/node/LayerPositionalProperties;->scaleY:F

    .line 1300
    iget v0, p1, Landroidx/compose/ui/node/LayerPositionalProperties;->translationX:F

    iput v0, p0, Landroidx/compose/ui/node/LayerPositionalProperties;->translationX:F

    .line 1301
    iget v0, p1, Landroidx/compose/ui/node/LayerPositionalProperties;->translationY:F

    iput v0, p0, Landroidx/compose/ui/node/LayerPositionalProperties;->translationY:F

    .line 1302
    iget v0, p1, Landroidx/compose/ui/node/LayerPositionalProperties;->rotationX:F

    iput v0, p0, Landroidx/compose/ui/node/LayerPositionalProperties;->rotationX:F

    .line 1303
    iget v0, p1, Landroidx/compose/ui/node/LayerPositionalProperties;->rotationY:F

    iput v0, p0, Landroidx/compose/ui/node/LayerPositionalProperties;->rotationY:F

    .line 1304
    iget v0, p1, Landroidx/compose/ui/node/LayerPositionalProperties;->rotationZ:F

    iput v0, p0, Landroidx/compose/ui/node/LayerPositionalProperties;->rotationZ:F

    .line 1305
    iget v0, p1, Landroidx/compose/ui/node/LayerPositionalProperties;->cameraDistance:F

    iput v0, p0, Landroidx/compose/ui/node/LayerPositionalProperties;->cameraDistance:F

    .line 1306
    iget-wide v0, p1, Landroidx/compose/ui/node/LayerPositionalProperties;->transformOrigin:J

    iput-wide v0, p0, Landroidx/compose/ui/node/LayerPositionalProperties;->transformOrigin:J

    return-void
.end method

.method public final hasSameValuesAs(Landroidx/compose/ui/node/LayerPositionalProperties;)Z
    .locals 4

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Landroidx/compose/ui/node/LayerPositionalProperties;->scaleX:F

    .line 1322
    iget v1, p1, Landroidx/compose/ui/node/LayerPositionalProperties;->scaleX:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/compose/ui/node/LayerPositionalProperties;->scaleY:F

    .line 1323
    iget v1, p1, Landroidx/compose/ui/node/LayerPositionalProperties;->scaleY:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/compose/ui/node/LayerPositionalProperties;->translationX:F

    .line 1324
    iget v1, p1, Landroidx/compose/ui/node/LayerPositionalProperties;->translationX:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/compose/ui/node/LayerPositionalProperties;->translationY:F

    .line 1325
    iget v1, p1, Landroidx/compose/ui/node/LayerPositionalProperties;->translationY:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/compose/ui/node/LayerPositionalProperties;->rotationX:F

    .line 1326
    iget v1, p1, Landroidx/compose/ui/node/LayerPositionalProperties;->rotationX:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/compose/ui/node/LayerPositionalProperties;->rotationY:F

    .line 1327
    iget v1, p1, Landroidx/compose/ui/node/LayerPositionalProperties;->rotationY:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/compose/ui/node/LayerPositionalProperties;->rotationZ:F

    .line 1328
    iget v1, p1, Landroidx/compose/ui/node/LayerPositionalProperties;->rotationZ:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/compose/ui/node/LayerPositionalProperties;->cameraDistance:F

    .line 1329
    iget v1, p1, Landroidx/compose/ui/node/LayerPositionalProperties;->cameraDistance:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroidx/compose/ui/node/LayerPositionalProperties;->transformOrigin:J

    .line 1330
    iget-wide v2, p1, Landroidx/compose/ui/node/LayerPositionalProperties;->transformOrigin:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/TransformOrigin;->equals-impl0(JJ)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
