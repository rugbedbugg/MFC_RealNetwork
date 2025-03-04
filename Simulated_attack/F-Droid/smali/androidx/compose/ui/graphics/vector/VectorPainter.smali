.class public final Landroidx/compose/ui/graphics/vector/VectorPainter;
.super Landroidx/compose/ui/graphics/painter/Painter;
.source "VectorPainter.kt"


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final autoMirror$delegate:Landroidx/compose/runtime/MutableState;

.field private composition:Landroidx/compose/runtime/Composition;

.field private currentAlpha:F

.field private currentColorFilter:Landroidx/compose/ui/graphics/ColorFilter;

.field private final isDirty$delegate:Landroidx/compose/runtime/MutableState;

.field private final size$delegate:Landroidx/compose/runtime/MutableState;

.field private final vector:Landroidx/compose/ui/graphics/vector/VectorComponent;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 176
    invoke-direct {p0}, Landroidx/compose/ui/graphics/painter/Painter;-><init>()V

    .line 178
    sget-object v0, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Size$Companion;->getZero-NH-jbRc()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->box-impl(J)Landroidx/compose/ui/geometry/Size;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorPainter;->size$delegate:Landroidx/compose/runtime/MutableState;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 180
    invoke-static {v0, v1, v2, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorPainter;->autoMirror$delegate:Landroidx/compose/runtime/MutableState;

    .line 191
    new-instance v0, Landroidx/compose/ui/graphics/vector/VectorComponent;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/vector/VectorComponent;-><init>()V

    .line 192
    new-instance v3, Landroidx/compose/ui/graphics/vector/VectorPainter$vector$1$1;

    invoke-direct {v3, p0}, Landroidx/compose/ui/graphics/vector/VectorPainter$vector$1$1;-><init>(Landroidx/compose/ui/graphics/vector/VectorPainter;)V

    invoke-virtual {v0, v3}, Landroidx/compose/ui/graphics/vector/VectorComponent;->setInvalidateCallback$ui_release(Lkotlin/jvm/functions/Function0;)V

    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorPainter;->vector:Landroidx/compose/ui/graphics/vector/VectorComponent;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 219
    invoke-static {v0, v1, v2, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorPainter;->isDirty$delegate:Landroidx/compose/runtime/MutableState;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/compose/ui/graphics/vector/VectorPainter;->currentAlpha:F

    return-void
.end method

.method public static final synthetic access$getVector$p(Landroidx/compose/ui/graphics/vector/VectorPainter;)Landroidx/compose/ui/graphics/vector/VectorComponent;
    .locals 0

    .line 176
    iget-object p0, p0, Landroidx/compose/ui/graphics/vector/VectorPainter;->vector:Landroidx/compose/ui/graphics/vector/VectorComponent;

    return-object p0
.end method

.method public static final synthetic access$setDirty(Landroidx/compose/ui/graphics/vector/VectorPainter;Z)V
    .locals 0

    .line 176
    invoke-direct {p0, p1}, Landroidx/compose/ui/graphics/vector/VectorPainter;->setDirty(Z)V

    return-void
.end method

.method private final composeVector(Landroidx/compose/runtime/CompositionContext;Lkotlin/jvm/functions/Function4;)Landroidx/compose/runtime/Composition;
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorPainter;->composition:Landroidx/compose/runtime/Composition;

    if-eqz v0, :cond_0

    .line 204
    invoke-interface {v0}, Landroidx/compose/runtime/Composition;->isDisposed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 206
    :cond_0
    new-instance v0, Landroidx/compose/ui/graphics/vector/VectorApplier;

    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/VectorPainter;->vector:Landroidx/compose/ui/graphics/vector/VectorComponent;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/VectorComponent;->getRoot()Landroidx/compose/ui/graphics/vector/GroupComponent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/vector/VectorApplier;-><init>(Landroidx/compose/ui/graphics/vector/VNode;)V

    .line 205
    invoke-static {v0, p1}, Landroidx/compose/runtime/CompositionKt;->Composition(Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/CompositionContext;)Landroidx/compose/runtime/Composition;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorPainter;->composition:Landroidx/compose/runtime/Composition;

    .line 213
    new-instance p1, Landroidx/compose/ui/graphics/vector/VectorPainter$composeVector$1;

    invoke-direct {p1, p2, p0}, Landroidx/compose/ui/graphics/vector/VectorPainter$composeVector$1;-><init>(Lkotlin/jvm/functions/Function4;Landroidx/compose/ui/graphics/vector/VectorPainter;)V

    const p2, -0x723b937d

    const/4 v1, 0x1

    invoke-static {p2, v1, p1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object p1

    invoke-interface {v0, p1}, Landroidx/compose/runtime/Composition;->setContent(Lkotlin/jvm/functions/Function2;)V

    return-object v0
.end method

.method private final isDirty()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorPainter;->isDirty$delegate:Landroidx/compose/runtime/MutableState;

    .line 81
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private final setDirty(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorPainter;->isDirty$delegate:Landroidx/compose/runtime/MutableState;

    .line 219
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 107
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final RenderVector$ui_release(Ljava/lang/String;FFLkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;I)V
    .locals 8

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x4b64c23f    # 1.4991935E7f

    .line 227
    invoke-interface {p5, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "androidx.compose.ui.graphics.vector.VectorPainter.RenderVector (VectorPainter.kt:221)"

    invoke-static {v0, p6, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorPainter;->vector:Landroidx/compose/ui/graphics/vector/VectorComponent;

    .line 229
    invoke-virtual {v0, p1}, Landroidx/compose/ui/graphics/vector/VectorComponent;->setName(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v0, p2}, Landroidx/compose/ui/graphics/vector/VectorComponent;->setViewportWidth(F)V

    .line 231
    invoke-virtual {v0, p3}, Landroidx/compose/ui/graphics/vector/VectorComponent;->setViewportHeight(F)V

    const/4 v0, 0x0

    .line 234
    invoke-static {p5, v0}, Landroidx/compose/runtime/ComposablesKt;->rememberCompositionContext(Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/CompositionContext;

    move-result-object v0

    .line 233
    invoke-direct {p0, v0, p4}, Landroidx/compose/ui/graphics/vector/VectorPainter;->composeVector(Landroidx/compose/runtime/CompositionContext;Lkotlin/jvm/functions/Function4;)Landroidx/compose/runtime/Composition;

    move-result-object v0

    .line 238
    new-instance v1, Landroidx/compose/ui/graphics/vector/VectorPainter$RenderVector$2;

    invoke-direct {v1, v0}, Landroidx/compose/ui/graphics/vector/VectorPainter$RenderVector$2;-><init>(Landroidx/compose/runtime/Composition;)V

    const/16 v2, 0x8

    invoke-static {v0, v1, p5, v2}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object p5

    if-nez p5, :cond_2

    goto :goto_0

    :cond_2
    new-instance v7, Landroidx/compose/ui/graphics/vector/VectorPainter$RenderVector$3;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p6

    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/VectorPainter$RenderVector$3;-><init>(Landroidx/compose/ui/graphics/vector/VectorPainter;Ljava/lang/String;FFLkotlin/jvm/functions/Function4;I)V

    invoke-interface {p5, v7}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_0
    return-void
.end method

.method protected applyAlpha(F)Z
    .locals 0

    .line 0
    iput p1, p0, Landroidx/compose/ui/graphics/vector/VectorPainter;->currentAlpha:F

    const/4 p1, 0x1

    return p1
.end method

.method protected applyColorFilter(Landroidx/compose/ui/graphics/ColorFilter;)Z
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/VectorPainter;->currentColorFilter:Landroidx/compose/ui/graphics/ColorFilter;

    const/4 p1, 0x1

    return p1
.end method

.method public final getAutoMirror$ui_release()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorPainter;->autoMirror$delegate:Landroidx/compose/runtime/MutableState;

    .line 81
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getIntrinsicSize-NH-jbRc()J
    .locals 2

    .line 249
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VectorPainter;->getSize-NH-jbRc$ui_release()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getSize-NH-jbRc$ui_release()J
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorPainter;->size$delegate:Landroidx/compose/runtime/MutableState;

    .line 81
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/geometry/Size;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Size;->unbox-impl()J

    move-result-wide v0

    return-wide v0
.end method

.method protected onDraw(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
    .locals 10

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorPainter;->vector:Landroidx/compose/ui/graphics/vector/VectorComponent;

    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/VectorPainter;->currentColorFilter:Landroidx/compose/ui/graphics/ColorFilter;

    if-nez v1, :cond_0

    .line 253
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/VectorComponent;->getIntrinsicColorFilter$ui_release()Landroidx/compose/ui/graphics/ColorFilter;

    move-result-object v1

    .line 254
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VectorPainter;->getAutoMirror$ui_release()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v2

    sget-object v3, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v2, v3, :cond_1

    .line 176
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getCenter-F1C5BW0()J

    move-result-wide v2

    .line 261
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object v4

    .line 265
    invoke-interface {v4}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getSize-NH-jbRc()J

    move-result-wide v5

    .line 266
    invoke-interface {v4}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v7

    invoke-interface {v7}, Landroidx/compose/ui/graphics/Canvas;->save()V

    .line 267
    invoke-interface {v4}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getTransform()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    move-result-object v7

    const/high16 v8, -0x40800000    # -1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    .line 178
    invoke-interface {v7, v8, v9, v2, v3}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->scale-0AR0LA0(FFJ)V

    iget v2, p0, Landroidx/compose/ui/graphics/vector/VectorPainter;->currentAlpha:F

    .line 256
    invoke-virtual {v0, p1, v2, v1}, Landroidx/compose/ui/graphics/vector/VectorComponent;->draw(Landroidx/compose/ui/graphics/drawscope/DrawScope;FLandroidx/compose/ui/graphics/ColorFilter;)V

    .line 269
    invoke-interface {v4}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object p1

    invoke-interface {p1}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    .line 270
    invoke-interface {v4, v5, v6}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->setSize-uvyYCjk(J)V

    goto :goto_0

    :cond_1
    iget v2, p0, Landroidx/compose/ui/graphics/vector/VectorPainter;->currentAlpha:F

    .line 259
    invoke-virtual {v0, p1, v2, v1}, Landroidx/compose/ui/graphics/vector/VectorComponent;->draw(Landroidx/compose/ui/graphics/drawscope/DrawScope;FLandroidx/compose/ui/graphics/ColorFilter;)V

    .line 264
    :goto_0
    invoke-direct {p0}, Landroidx/compose/ui/graphics/vector/VectorPainter;->isDirty()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 265
    invoke-direct {p0, p1}, Landroidx/compose/ui/graphics/vector/VectorPainter;->setDirty(Z)V

    :cond_2
    return-void
.end method

.method public final setAutoMirror$ui_release(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorPainter;->autoMirror$delegate:Landroidx/compose/runtime/MutableState;

    .line 180
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 107
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setIntrinsicColorFilter$ui_release(Landroidx/compose/ui/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorPainter;->vector:Landroidx/compose/ui/graphics/vector/VectorComponent;

    .line 188
    invoke-virtual {v0, p1}, Landroidx/compose/ui/graphics/vector/VectorComponent;->setIntrinsicColorFilter$ui_release(Landroidx/compose/ui/graphics/ColorFilter;)V

    return-void
.end method

.method public final setSize-uvyYCjk$ui_release(J)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorPainter;->size$delegate:Landroidx/compose/runtime/MutableState;

    .line 178
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Size;->box-impl(J)Landroidx/compose/ui/geometry/Size;

    move-result-object p1

    .line 107
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method
