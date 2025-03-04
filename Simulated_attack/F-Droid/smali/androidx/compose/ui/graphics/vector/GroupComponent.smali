.class public final Landroidx/compose/ui/graphics/vector/GroupComponent;
.super Landroidx/compose/ui/graphics/vector/VNode;
.source "Vector.kt"


# instance fields
.field private final children:Ljava/util/List;

.field private clipPath:Landroidx/compose/ui/graphics/Path;

.field private clipPathData:Ljava/util/List;

.field private groupMatrix:[F

.field private invalidateListener:Lkotlin/jvm/functions/Function0;

.field private isClipPathDirty:Z

.field private isMatrixDirty:Z

.field private name:Ljava/lang/String;

.field private pivotX:F

.field private pivotY:F

.field private rotation:F

.field private scaleX:F

.field private scaleY:F

.field private translationX:F

.field private translationY:F


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 342
    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/vector/VNode;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 345
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->children:Ljava/util/List;

    .line 347
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getEmptyPath()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->clipPathData:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->isClipPathDirty:Z

    const-string v1, ""

    iput-object v1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->name:Ljava/lang/String;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->scaleX:F

    iput v1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->scaleY:F

    iput-boolean v0, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->isMatrixDirty:Z

    return-void
.end method

.method private final getWillClipPath()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->clipPathData:Ljava/util/List;

    .line 355
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private final updateClipPath()V
    .locals 2

    .line 370
    invoke-direct {p0}, Landroidx/compose/ui/graphics/vector/GroupComponent;->getWillClipPath()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->clipPath:Landroidx/compose/ui/graphics/Path;

    if-nez v0, :cond_0

    .line 373
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->clipPath:Landroidx/compose/ui/graphics/Path;

    :cond_0
    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->clipPathData:Ljava/util/List;

    .line 378
    invoke-static {v1, v0}, Landroidx/compose/ui/graphics/vector/PathParserKt;->toPath(Ljava/util/List;Landroidx/compose/ui/graphics/Path;)Landroidx/compose/ui/graphics/Path;

    :cond_1
    return-void
.end method

.method private final updateMatrix()V
    .locals 7

    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->groupMatrix:[F

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 448
    invoke-static {v1, v0, v1}, Landroidx/compose/ui/graphics/Matrix;->constructor-impl$default([FILkotlin/jvm/internal/DefaultConstructorMarker;)[F

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->groupMatrix:[F

    goto :goto_0

    .line 452
    :cond_0
    invoke-static {v0}, Landroidx/compose/ui/graphics/Matrix;->reset-impl([F)V

    :goto_0
    iget v1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->translationX:F

    iget v2, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->pivotX:F

    add-float/2addr v2, v1

    iget v1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->translationY:F

    iget v3, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->pivotY:F

    add-float/2addr v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v0

    .line 457
    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/graphics/Matrix;->translate-impl$default([FFFFILjava/lang/Object;)V

    iget v1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->rotation:F

    .line 458
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Matrix;->rotateZ-impl([FF)V

    iget v1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->scaleX:F

    iget v2, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->scaleY:F

    const/high16 v3, 0x3f800000    # 1.0f

    .line 459
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/Matrix;->scale-impl([FFFF)V

    iget v1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->pivotX:F

    neg-float v2, v1

    iget v1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->pivotY:F

    neg-float v3, v1

    move-object v1, v0

    .line 460
    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/graphics/Matrix;->translate-impl$default([FFFFILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public draw(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
    .locals 8

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->isMatrixDirty:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 504
    invoke-direct {p0}, Landroidx/compose/ui/graphics/vector/GroupComponent;->updateMatrix()V

    iput-boolean v1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->isMatrixDirty:Z

    :cond_0
    iget-boolean v0, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->isClipPathDirty:Z

    if-eqz v0, :cond_1

    .line 509
    invoke-direct {p0}, Landroidx/compose/ui/graphics/vector/GroupComponent;->updateClipPath()V

    iput-boolean v1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->isClipPathDirty:Z

    .line 261
    :cond_1
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object v0

    .line 265
    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getSize-NH-jbRc()J

    move-result-wide v2

    .line 266
    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v4

    invoke-interface {v4}, Landroidx/compose/ui/graphics/Canvas;->save()V

    .line 267
    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getTransform()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    move-result-object v4

    iget-object v5, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->groupMatrix:[F

    if-eqz v5, :cond_2

    .line 514
    invoke-static {v5}, Landroidx/compose/ui/graphics/Matrix;->box-impl([F)Landroidx/compose/ui/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/Matrix;->unbox-impl()[F

    move-result-object v5

    invoke-interface {v4, v5}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->transform-58bKbWc([F)V

    :cond_2
    iget-object v5, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->clipPath:Landroidx/compose/ui/graphics/Path;

    .line 516
    invoke-direct {p0}, Landroidx/compose/ui/graphics/vector/GroupComponent;->getWillClipPath()Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v5, :cond_3

    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 517
    invoke-static {v4, v5, v1, v6, v7}, Landroidx/compose/ui/graphics/drawscope/DrawTransform$-CC;->clipPath-mtrdD-E$default(Landroidx/compose/ui/graphics/drawscope/DrawTransform;Landroidx/compose/ui/graphics/Path;IILjava/lang/Object;)V

    :cond_3
    iget-object v4, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->children:Ljava/util/List;

    .line 34
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    :goto_0
    if-ge v1, v5, :cond_4

    .line 35
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 36
    check-cast v6, Landroidx/compose/ui/graphics/vector/VNode;

    .line 522
    invoke-virtual {v6, p1}, Landroidx/compose/ui/graphics/vector/VNode;->draw(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 269
    :cond_4
    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object p1

    invoke-interface {p1}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    .line 270
    invoke-interface {v0, v2, v3}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->setSize-uvyYCjk(J)V

    return-void
.end method

.method public getInvalidateListener$ui_release()Lkotlin/jvm/functions/Function0;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->invalidateListener:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getNumChildren()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->children:Ljava/util/List;

    .line 440
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final insertAt(ILandroidx/compose/ui/graphics/vector/VNode;)V
    .locals 1

    const-string v0, "instance"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 464
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/GroupComponent;->getNumChildren()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->children:Ljava/util/List;

    .line 465
    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->children:Ljava/util/List;

    .line 467
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 469
    :goto_0
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/GroupComponent;->getInvalidateListener$ui_release()Lkotlin/jvm/functions/Function0;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/compose/ui/graphics/vector/VNode;->setInvalidateListener$ui_release(Lkotlin/jvm/functions/Function0;)V

    .line 470
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    return-void
.end method

.method public final move(III)V
    .locals 4

    const/4 v0, 0x0

    if-le p1, p2, :cond_0

    :goto_0
    if-ge v0, p3, :cond_1

    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->children:Ljava/util/List;

    .line 477
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/graphics/vector/VNode;

    iget-object v2, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->children:Ljava/util/List;

    .line 478
    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->children:Ljava/util/List;

    .line 479
    invoke-interface {v2, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v0, p3, :cond_1

    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->children:Ljava/util/List;

    .line 484
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/graphics/vector/VNode;

    iget-object v2, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->children:Ljava/util/List;

    .line 485
    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->children:Ljava/util/List;

    add-int/lit8 v3, p2, -0x1

    .line 486
    invoke-interface {v2, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 489
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    return-void
.end method

.method public final remove(II)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->children:Ljava/util/List;

    .line 494
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->children:Ljava/util/List;

    .line 495
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/graphics/vector/VNode;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/compose/ui/graphics/vector/VNode;->setInvalidateListener$ui_release(Lkotlin/jvm/functions/Function0;)V

    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->children:Ljava/util/List;

    .line 496
    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 499
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    return-void
.end method

.method public final setClipPathData(Ljava/util/List;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->clipPathData:Ljava/util/List;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->isClipPathDirty:Z

    .line 351
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    return-void
.end method

.method public setInvalidateListener$ui_release(Lkotlin/jvm/functions/Function0;)V
    .locals 4

    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->invalidateListener:Lkotlin/jvm/functions/Function0;

    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->children:Ljava/util/List;

    .line 34
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 35
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 36
    check-cast v3, Landroidx/compose/ui/graphics/vector/VNode;

    .line 365
    invoke-virtual {v3, p1}, Landroidx/compose/ui/graphics/vector/VNode;->setInvalidateListener$ui_release(Lkotlin/jvm/functions/Function0;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->name:Ljava/lang/String;

    .line 387
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    return-void
.end method

.method public final setPivotX(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->pivotX:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->isMatrixDirty:Z

    .line 401
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    return-void
.end method

.method public final setPivotY(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->pivotY:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->isMatrixDirty:Z

    .line 408
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    return-void
.end method

.method public final setRotation(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->rotation:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->isMatrixDirty:Z

    .line 394
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    return-void
.end method

.method public final setScaleX(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->scaleX:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->isMatrixDirty:Z

    .line 415
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    return-void
.end method

.method public final setScaleY(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->scaleY:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->isMatrixDirty:Z

    .line 422
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    return-void
.end method

.method public final setTranslationX(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->translationX:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->isMatrixDirty:Z

    .line 429
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    return-void
.end method

.method public final setTranslationY(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->translationY:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->isMatrixDirty:Z

    .line 436
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VGroup: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->children:Ljava/util/List;

    .line 34
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 35
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 36
    check-cast v4, Landroidx/compose/ui/graphics/vector/VNode;

    const-string v5, "\t"

    .line 531
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 533
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sb.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
