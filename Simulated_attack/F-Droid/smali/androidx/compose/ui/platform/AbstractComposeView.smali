.class public abstract Landroidx/compose/ui/platform/AbstractComposeView;
.super Landroid/view/ViewGroup;
.source "ComposeView.android.kt"


# instance fields
.field private cachedViewTreeCompositionContext:Ljava/lang/ref/WeakReference;

.field private composition:Landroidx/compose/runtime/Composition;

.field private creatingComposition:Z

.field private disposeViewCompositionStrategy:Lkotlin/jvm/functions/Function0;

.field private isTransitionGroupSet:Z

.field private parentContext:Landroidx/compose/runtime/CompositionContext;

.field private previousAttachedWindowToken:Landroid/os/IBinder;

.field private showLayoutBounds:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 55
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 56
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 125
    sget-object p1, Landroidx/compose/ui/platform/ViewCompositionStrategy;->Companion:Landroidx/compose/ui/platform/ViewCompositionStrategy$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/platform/ViewCompositionStrategy$Companion;->getDefault()Landroidx/compose/ui/platform/ViewCompositionStrategy;

    move-result-object p1

    invoke-interface {p1, p0}, Landroidx/compose/ui/platform/ViewCompositionStrategy;->installFor(Landroidx/compose/ui/platform/AbstractComposeView;)Lkotlin/jvm/functions/Function0;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/platform/AbstractComposeView;->disposeViewCompositionStrategy:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 48
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/platform/AbstractComposeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final cacheIfAlive(Landroidx/compose/runtime/CompositionContext;)Landroidx/compose/runtime/CompositionContext;
    .locals 2

    .line 223
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AbstractComposeView;->isAlive(Landroidx/compose/runtime/CompositionContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 224
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroidx/compose/ui/platform/AbstractComposeView;->cachedViewTreeCompositionContext:Ljava/lang/ref/WeakReference;

    :cond_1
    return-object p1
.end method

.method private final checkAddView()V
    .locals 3

    iget-boolean v0, p0, Landroidx/compose/ui/platform/AbstractComposeView;->creatingComposition:Z

    if-eqz v0, :cond_0

    return-void

    .line 202
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot add views to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 203
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; only Compose content is supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 202
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final ensureCompositionCreated()V
    .locals 5

    iget-object v0, p0, Landroidx/compose/ui/platform/AbstractComposeView;->composition:Landroidx/compose/runtime/Composition;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroidx/compose/ui/platform/AbstractComposeView;->creatingComposition:Z

    .line 251
    invoke-direct {p0}, Landroidx/compose/ui/platform/AbstractComposeView;->resolveParentCompositionContext()Landroidx/compose/runtime/CompositionContext;

    move-result-object v2

    new-instance v3, Landroidx/compose/ui/platform/AbstractComposeView$ensureCompositionCreated$1;

    invoke-direct {v3, p0}, Landroidx/compose/ui/platform/AbstractComposeView$ensureCompositionCreated$1;-><init>(Landroidx/compose/ui/platform/AbstractComposeView;)V

    const v4, -0x271bffc0

    invoke-static {v4, v1, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    invoke-static {p0, v2, v1}, Landroidx/compose/ui/platform/Wrapper_androidKt;->setContent(Landroidx/compose/ui/platform/AbstractComposeView;Landroidx/compose/runtime/CompositionContext;Lkotlin/jvm/functions/Function2;)Landroidx/compose/runtime/Composition;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/ui/platform/AbstractComposeView;->composition:Landroidx/compose/runtime/Composition;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v0, p0, Landroidx/compose/ui/platform/AbstractComposeView;->creatingComposition:Z

    goto :goto_0

    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Landroidx/compose/ui/platform/AbstractComposeView;->creatingComposition:Z

    .line 255
    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method private static synthetic getDisposeViewCompositionStrategy$annotations()V
    .locals 0

    .line 0
    return-void
.end method

.method public static synthetic getShowLayoutBounds$annotations()V
    .locals 0

    .line 0
    return-void
.end method

.method private final isAlive(Landroidx/compose/runtime/CompositionContext;)Z
    .locals 1

    .line 216
    instance-of v0, p1, Landroidx/compose/runtime/Recomposer;

    if-eqz v0, :cond_1

    check-cast p1, Landroidx/compose/runtime/Recomposer;

    invoke-virtual {p1}, Landroidx/compose/runtime/Recomposer;->getCurrentState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/runtime/Recomposer$State;

    sget-object v0, Landroidx/compose/runtime/Recomposer$State;->ShuttingDown:Landroidx/compose/runtime/Recomposer$State;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private final resolveParentCompositionContext()Landroidx/compose/runtime/CompositionContext;
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/platform/AbstractComposeView;->parentContext:Landroidx/compose/runtime/CompositionContext;

    if-nez v0, :cond_2

    .line 242
    invoke-static {p0}, Landroidx/compose/ui/platform/WindowRecomposer_androidKt;->findViewTreeCompositionContext(Landroid/view/View;)Landroidx/compose/runtime/CompositionContext;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/AbstractComposeView;->cacheIfAlive(Landroidx/compose/runtime/CompositionContext;)Landroidx/compose/runtime/CompositionContext;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/compose/ui/platform/AbstractComposeView;->cachedViewTreeCompositionContext:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 243
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/CompositionContext;

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/AbstractComposeView;->isAlive(Landroidx/compose/runtime/CompositionContext;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v1, v0

    :cond_1
    move-object v0, v1

    if-nez v0, :cond_2

    .line 244
    invoke-static {p0}, Landroidx/compose/ui/platform/WindowRecomposer_androidKt;->getWindowRecomposer(Landroid/view/View;)Landroidx/compose/runtime/Recomposer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/AbstractComposeView;->cacheIfAlive(Landroidx/compose/runtime/CompositionContext;)Landroidx/compose/runtime/CompositionContext;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method private final setParentContext(Landroidx/compose/runtime/CompositionContext;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/AbstractComposeView;->parentContext:Landroidx/compose/runtime/CompositionContext;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Landroidx/compose/ui/platform/AbstractComposeView;->parentContext:Landroidx/compose/runtime/CompositionContext;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iput-object v0, p0, Landroidx/compose/ui/platform/AbstractComposeView;->cachedViewTreeCompositionContext:Ljava/lang/ref/WeakReference;

    :cond_0
    iget-object p1, p0, Landroidx/compose/ui/platform/AbstractComposeView;->composition:Landroidx/compose/runtime/Composition;

    if-eqz p1, :cond_1

    .line 101
    invoke-interface {p1}, Landroidx/compose/runtime/Composition;->dispose()V

    iput-object v0, p0, Landroidx/compose/ui/platform/AbstractComposeView;->composition:Landroidx/compose/runtime/Composition;

    .line 105
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 106
    invoke-direct {p0}, Landroidx/compose/ui/platform/AbstractComposeView;->ensureCompositionCreated()V

    :cond_1
    return-void
.end method

.method private final setPreviousAttachedWindowToken(Landroid/os/IBinder;)V
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/ui/platform/AbstractComposeView;->previousAttachedWindowToken:Landroid/os/IBinder;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Landroidx/compose/ui/platform/AbstractComposeView;->previousAttachedWindowToken:Landroid/os/IBinder;

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/compose/ui/platform/AbstractComposeView;->cachedViewTreeCompositionContext:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract Content(Landroidx/compose/runtime/Composer;I)V
.end method

.method public addView(Landroid/view/View;)V
    .locals 0

    .line 363
    invoke-direct {p0}, Landroidx/compose/ui/platform/AbstractComposeView;->checkAddView()V

    .line 364
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 0

    .line 368
    invoke-direct {p0}, Landroidx/compose/ui/platform/AbstractComposeView;->checkAddView()V

    .line 369
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public addView(Landroid/view/View;II)V
    .locals 0

    .line 373
    invoke-direct {p0}, Landroidx/compose/ui/platform/AbstractComposeView;->checkAddView()V

    .line 374
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 383
    invoke-direct {p0}, Landroidx/compose/ui/platform/AbstractComposeView;->checkAddView()V

    .line 384
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 378
    invoke-direct {p0}, Landroidx/compose/ui/platform/AbstractComposeView;->checkAddView()V

    .line 379
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 388
    invoke-direct {p0}, Landroidx/compose/ui/platform/AbstractComposeView;->checkAddView()V

    .line 389
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    move-result p1

    return p1
.end method

.method protected addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z
    .locals 0

    .line 398
    invoke-direct {p0}, Landroidx/compose/ui/platform/AbstractComposeView;->checkAddView()V

    .line 399
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    move-result p1

    return p1
.end method

.method public final createComposition()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/platform/AbstractComposeView;->parentContext:Landroidx/compose/runtime/CompositionContext;

    if-nez v0, :cond_1

    .line 192
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "createComposition requires either a parent reference or the View to be attachedto a window. Attach the View or call setParentCompositionReference."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_1
    :goto_0
    invoke-direct {p0}, Landroidx/compose/ui/platform/AbstractComposeView;->ensureCompositionCreated()V

    return-void
.end method

.method public final disposeComposition()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/AbstractComposeView;->composition:Landroidx/compose/runtime/Composition;

    if-eqz v0, :cond_0

    .line 266
    invoke-interface {v0}, Landroidx/compose/runtime/Composition;->dispose()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/ui/platform/AbstractComposeView;->composition:Landroidx/compose/runtime/Composition;

    .line 268
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final getHasComposition()Z
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/ui/platform/AbstractComposeView;->composition:Landroidx/compose/runtime/Composition;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected getShouldCreateCompositionOnAttachedToWindow()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public final getShowLayoutBounds()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Landroidx/compose/ui/platform/AbstractComposeView;->showLayoutBounds:Z

    return v0
.end method

.method public internalOnLayout$ui_release(ZIIII)V
    .locals 2

    const/4 p1, 0x0

    .line 322
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 323
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 324
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr p4, p2

    .line 325
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 326
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p2

    sub-int/2addr p5, p2

    .line 322
    invoke-virtual {p1, v0, v1, p4, p5}, Landroid/view/View;->layout(IIII)V

    :cond_0
    return-void
.end method

.method public internalOnMeasure$ui_release(II)V
    .locals 5

    const/4 v0, 0x0

    .line 294
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 296
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    return-void

    .line 300
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 301
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 303
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    invoke-static {v2, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 304
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 302
    invoke-virtual {v1, p1, p2}, Landroid/view/View;->measure(II)V

    .line 307
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    add-int/2addr p1, p2

    .line 308
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    .line 306
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public isTransitionGroup()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/platform/AbstractComposeView;->isTransitionGroupSet:Z

    if-eqz v0, :cond_1

    .line 353
    invoke-super {p0}, Landroid/view/ViewGroup;->isTransitionGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 278
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 280
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/AbstractComposeView;->setPreviousAttachedWindowToken(Landroid/os/IBinder;)V

    .line 282
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AbstractComposeView;->getShouldCreateCompositionOnAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    invoke-direct {p0}, Landroidx/compose/ui/platform/AbstractComposeView;->ensureCompositionCreated()V

    :cond_0
    return-void
.end method

.method protected final onLayout(ZIIII)V
    .locals 0

    .line 313
    invoke-virtual/range {p0 .. p5}, Landroidx/compose/ui/platform/AbstractComposeView;->internalOnLayout$ui_release(ZIIII)V

    return-void
.end method

.method protected final onMeasure(II)V
    .locals 0

    .line 288
    invoke-direct {p0}, Landroidx/compose/ui/platform/AbstractComposeView;->ensureCompositionCreated()V

    .line 289
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/platform/AbstractComposeView;->internalOnMeasure$ui_release(II)V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1

    const/4 v0, 0x0

    .line 335
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutDirection(I)V

    :goto_0
    return-void
.end method

.method public final setParentCompositionContext(Landroidx/compose/runtime/CompositionContext;)V
    .locals 0

    .line 118
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AbstractComposeView;->setParentContext(Landroidx/compose/runtime/CompositionContext;)V

    return-void
.end method

.method public final setShowLayoutBounds(Z)V
    .locals 1

    iput-boolean p1, p0, Landroidx/compose/ui/platform/AbstractComposeView;->showLayoutBounds:Z

    const/4 v0, 0x0

    .line 163
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    check-cast v0, Landroidx/compose/ui/node/Owner;

    invoke-interface {v0, p1}, Landroidx/compose/ui/node/Owner;->setShowLayoutBounds(Z)V

    :cond_0
    return-void
.end method

.method public setTransitionGroup(Z)V
    .locals 0

    .line 356
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setTransitionGroup(Z)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/ui/platform/AbstractComposeView;->isTransitionGroupSet:Z

    return-void
.end method

.method public final setViewCompositionStrategy(Landroidx/compose/ui/platform/ViewCompositionStrategy;)V
    .locals 1

    const-string v0, "strategy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/ui/platform/AbstractComposeView;->disposeViewCompositionStrategy:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_0

    .line 137
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 138
    :cond_0
    invoke-interface {p1, p0}, Landroidx/compose/ui/platform/ViewCompositionStrategy;->installFor(Landroidx/compose/ui/platform/AbstractComposeView;)Lkotlin/jvm/functions/Function0;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/platform/AbstractComposeView;->disposeViewCompositionStrategy:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method
