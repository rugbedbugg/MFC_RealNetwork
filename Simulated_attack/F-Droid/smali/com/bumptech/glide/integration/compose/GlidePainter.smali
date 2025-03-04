.class public final Lcom/bumptech/glide/integration/compose/GlidePainter;
.super Landroidx/compose/ui/graphics/painter/Painter;
.source "GlidePainter.kt"

# interfaces
.implements Landroidx/compose/runtime/RememberObserver;


# instance fields
.field private final alpha$delegate:Landroidx/compose/runtime/MutableState;

.field private final colorFilter$delegate:Landroidx/compose/runtime/MutableState;

.field private final currentDrawable:Landroidx/compose/runtime/MutableState;

.field private final delegate$delegate:Landroidx/compose/runtime/MutableState;

.field private final requestBuilder:Lcom/bumptech/glide/RequestBuilder;

.field private final scope:Lkotlinx/coroutines/CoroutineScope;

.field private final size:Lcom/bumptech/glide/integration/ktx/ResolvableGlideSize;

.field private final status$delegate:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/RequestBuilder;Lcom/bumptech/glide/integration/ktx/ResolvableGlideSize;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 1

    const-string v0, "requestBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "size"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0}, Landroidx/compose/ui/graphics/painter/Painter;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/integration/compose/GlidePainter;->requestBuilder:Lcom/bumptech/glide/RequestBuilder;

    iput-object p2, p0, Lcom/bumptech/glide/integration/compose/GlidePainter;->size:Lcom/bumptech/glide/integration/ktx/ResolvableGlideSize;

    .line 48
    sget-object p1, Lcom/bumptech/glide/integration/ktx/Status;->CLEARED:Lcom/bumptech/glide/integration/ktx/Status;

    const/4 p2, 0x0

    const/4 v0, 0x2

    invoke-static {p1, p2, v0, p2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/integration/compose/GlidePainter;->status$delegate:Landroidx/compose/runtime/MutableState;

    .line 49
    invoke-static {p2, p2, v0, p2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/integration/compose/GlidePainter;->currentDrawable:Landroidx/compose/runtime/MutableState;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 50
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p1, p2, v0, p2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/integration/compose/GlidePainter;->alpha$delegate:Landroidx/compose/runtime/MutableState;

    .line 51
    invoke-static {p2, p2, v0, p2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/integration/compose/GlidePainter;->colorFilter$delegate:Landroidx/compose/runtime/MutableState;

    .line 52
    invoke-static {p2, p2, v0, p2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/integration/compose/GlidePainter;->delegate$delegate:Landroidx/compose/runtime/MutableState;

    .line 54
    invoke-interface {p3}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/JobKt;->getJob(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/Job;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob(Lkotlinx/coroutines/Job;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p1

    invoke-static {p3, p1}, Lkotlinx/coroutines/CoroutineScopeKt;->plus(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p2

    invoke-virtual {p2}, Lkotlinx/coroutines/MainCoroutineDispatcher;->getImmediate()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlinx/coroutines/CoroutineScopeKt;->plus(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/integration/compose/GlidePainter;->scope:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method

.method public static final synthetic access$getRequestBuilder$p(Lcom/bumptech/glide/integration/compose/GlidePainter;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/bumptech/glide/integration/compose/GlidePainter;->requestBuilder:Lcom/bumptech/glide/RequestBuilder;

    return-object p0
.end method

.method public static final synthetic access$getSize$p(Lcom/bumptech/glide/integration/compose/GlidePainter;)Lcom/bumptech/glide/integration/ktx/ResolvableGlideSize;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/bumptech/glide/integration/compose/GlidePainter;->size:Lcom/bumptech/glide/integration/ktx/ResolvableGlideSize;

    return-object p0
.end method

.method public static final synthetic access$updateDelegate(Lcom/bumptech/glide/integration/compose/GlidePainter;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/bumptech/glide/integration/compose/GlidePainter;->updateDelegate(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private final getAlpha()F
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/integration/compose/GlidePainter;->alpha$delegate:Landroidx/compose/runtime/MutableState;

    .line 123
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method private final getColorFilter()Landroidx/compose/ui/graphics/ColorFilter;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/integration/compose/GlidePainter;->colorFilter$delegate:Landroidx/compose/runtime/MutableState;

    .line 126
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/graphics/ColorFilter;

    return-object v0
.end method

.method private final getDelegate()Landroidx/compose/ui/graphics/painter/Painter;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/integration/compose/GlidePainter;->delegate$delegate:Landroidx/compose/runtime/MutableState;

    .line 129
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/graphics/painter/Painter;

    return-object v0
.end method

.method private final launchRequest()V
    .locals 6

    iget-object v0, p0, Lcom/bumptech/glide/integration/compose/GlidePainter;->scope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 78
    new-instance v3, Lcom/bumptech/glide/integration/compose/GlidePainter$launchRequest$1;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/bumptech/glide/integration/compose/GlidePainter$launchRequest$1;-><init>(Lcom/bumptech/glide/integration/compose/GlidePainter;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final setAlpha(F)V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/integration/compose/GlidePainter;->alpha$delegate:Landroidx/compose/runtime/MutableState;

    .line 50
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 124
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final setColorFilter(Landroidx/compose/ui/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/integration/compose/GlidePainter;->colorFilter$delegate:Landroidx/compose/runtime/MutableState;

    .line 127
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final setDelegate(Landroidx/compose/ui/graphics/painter/Painter;)V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/integration/compose/GlidePainter;->delegate$delegate:Landroidx/compose/runtime/MutableState;

    .line 130
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final toPainter(Landroid/graphics/drawable/Drawable;)Landroidx/compose/ui/graphics/painter/Painter;
    .locals 9

    .line 93
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/compose/ui/graphics/painter/BitmapPainter;

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    const-string v1, "bitmap"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/compose/ui/graphics/AndroidImageBitmap_androidKt;->asImageBitmap(Landroid/graphics/Bitmap;)Landroidx/compose/ui/graphics/ImageBitmap;

    move-result-object v2

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroidx/compose/ui/graphics/painter/BitmapPainter;-><init>(Landroidx/compose/ui/graphics/ImageBitmap;JJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    .line 94
    :cond_0
    instance-of v0, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_1

    new-instance v0, Landroidx/compose/ui/graphics/painter/ColorPainter;

    check-cast p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p1

    invoke-static {p1}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    move-result-wide v1

    const/4 p1, 0x0

    invoke-direct {v0, v1, v2, p1}, Landroidx/compose/ui/graphics/painter/ColorPainter;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    .line 95
    :cond_1
    new-instance v0, Lcom/google/accompanist/drawablepainter/DrawablePainter;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const-string v1, "mutate()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lcom/google/accompanist/drawablepainter/DrawablePainter;-><init>(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-object v0
.end method

.method private final updateDelegate(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 99
    invoke-direct {p0, p1}, Lcom/bumptech/glide/integration/compose/GlidePainter;->toPainter(Landroid/graphics/drawable/Drawable;)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 100
    :goto_0
    invoke-direct {p0}, Lcom/bumptech/glide/integration/compose/GlidePainter;->getDelegate()Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v2

    if-eq v1, v2, :cond_5

    .line 102
    instance-of v3, v2, Landroidx/compose/runtime/RememberObserver;

    if-eqz v3, :cond_1

    check-cast v2, Landroidx/compose/runtime/RememberObserver;

    goto :goto_1

    :cond_1
    move-object v2, v0

    :goto_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroidx/compose/runtime/RememberObserver;->onForgotten()V

    .line 103
    :cond_2
    instance-of v2, v1, Landroidx/compose/runtime/RememberObserver;

    if-eqz v2, :cond_3

    move-object v0, v1

    check-cast v0, Landroidx/compose/runtime/RememberObserver;

    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroidx/compose/runtime/RememberObserver;->onRemembered()V

    :cond_4
    iget-object v0, p0, Lcom/bumptech/glide/integration/compose/GlidePainter;->currentDrawable:Landroidx/compose/runtime/MutableState;

    .line 104
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 105
    invoke-direct {p0, v1}, Lcom/bumptech/glide/integration/compose/GlidePainter;->setDelegate(Landroidx/compose/ui/graphics/painter/Painter;)V

    :cond_5
    return-void
.end method


# virtual methods
.method protected applyAlpha(F)Z
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Lcom/bumptech/glide/integration/compose/GlidePainter;->setAlpha(F)V

    const/4 p1, 0x1

    return p1
.end method

.method protected applyColorFilter(Landroidx/compose/ui/graphics/ColorFilter;)Z
    .locals 0

    .line 115
    invoke-direct {p0, p1}, Lcom/bumptech/glide/integration/compose/GlidePainter;->setColorFilter(Landroidx/compose/ui/graphics/ColorFilter;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final getCurrentDrawable$compose_release()Landroidx/compose/runtime/MutableState;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/bumptech/glide/integration/compose/GlidePainter;->currentDrawable:Landroidx/compose/runtime/MutableState;

    return-object v0
.end method

.method public getIntrinsicSize-NH-jbRc()J
    .locals 2

    .line 57
    invoke-direct {p0}, Lcom/bumptech/glide/integration/compose/GlidePainter;->getDelegate()Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/painter/Painter;->getIntrinsicSize-NH-jbRc()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Size$Companion;->getUnspecified-NH-jbRc()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public final getStatus$compose_release()Lcom/bumptech/glide/integration/ktx/Status;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/integration/compose/GlidePainter;->status$delegate:Landroidx/compose/runtime/MutableState;

    .line 120
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/integration/ktx/Status;

    return-object v0
.end method

.method public onAbandoned()V
    .locals 2

    .line 64
    invoke-direct {p0}, Lcom/bumptech/glide/integration/compose/GlidePainter;->getDelegate()Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v0

    instance-of v1, v0, Landroidx/compose/runtime/RememberObserver;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/compose/runtime/RememberObserver;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/compose/runtime/RememberObserver;->onAbandoned()V

    :cond_1
    return-void
.end method

.method protected onDraw(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
    .locals 7

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-direct {p0}, Lcom/bumptech/glide/integration/compose/GlidePainter;->getDelegate()Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v3

    invoke-direct {p0}, Lcom/bumptech/glide/integration/compose/GlidePainter;->getAlpha()F

    move-result v5

    invoke-direct {p0}, Lcom/bumptech/glide/integration/compose/GlidePainter;->getColorFilter()Landroidx/compose/ui/graphics/ColorFilter;

    move-result-object v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroidx/compose/ui/graphics/painter/Painter;->draw-x_KDEd0(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFLandroidx/compose/ui/graphics/ColorFilter;)V

    :cond_0
    return-void
.end method

.method public onForgotten()V
    .locals 2

    .line 68
    invoke-direct {p0}, Lcom/bumptech/glide/integration/compose/GlidePainter;->getDelegate()Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v0

    instance-of v1, v0, Landroidx/compose/runtime/RememberObserver;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/compose/runtime/RememberObserver;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/compose/runtime/RememberObserver;->onForgotten()V

    :cond_1
    return-void
.end method

.method public onRemembered()V
    .locals 2

    .line 72
    invoke-direct {p0}, Lcom/bumptech/glide/integration/compose/GlidePainter;->getDelegate()Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v0

    instance-of v1, v0, Landroidx/compose/runtime/RememberObserver;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/compose/runtime/RememberObserver;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/compose/runtime/RememberObserver;->onRemembered()V

    .line 73
    :cond_1
    invoke-direct {p0}, Lcom/bumptech/glide/integration/compose/GlidePainter;->launchRequest()V

    return-void
.end method

.method public final setStatus$compose_release(Lcom/bumptech/glide/integration/ktx/Status;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bumptech/glide/integration/compose/GlidePainter;->status$delegate:Landroidx/compose/runtime/MutableState;

    .line 121
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method
