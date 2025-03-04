.class public final Lcom/google/accompanist/drawablepainter/DrawablePainter;
.super Landroidx/compose/ui/graphics/painter/Painter;
.source "DrawablePainter.kt"

# interfaces
.implements Landroidx/compose/runtime/RememberObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/accompanist/drawablepainter/DrawablePainter$WhenMappings;
    }
.end annotation


# instance fields
.field private final callback$delegate:Lkotlin/Lazy;

.field private final drawInvalidateTick$delegate:Landroidx/compose/runtime/MutableState;

.field private final drawable:Landroid/graphics/drawable/Drawable;

.field private final drawableIntrinsicSize$delegate:Landroidx/compose/runtime/MutableState;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 6

    const-string v0, "drawable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-direct {p0}, Landroidx/compose/ui/graphics/painter/Painter;-><init>()V

    iput-object p1, p0, Lcom/google/accompanist/drawablepainter/DrawablePainter;->drawable:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    .line 61
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v1, v2, v3, v2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    iput-object v1, p0, Lcom/google/accompanist/drawablepainter/DrawablePainter;->drawInvalidateTick$delegate:Landroidx/compose/runtime/MutableState;

    .line 62
    invoke-static {p1}, Lcom/google/accompanist/drawablepainter/DrawablePainterKt;->access$getIntrinsicSize(Landroid/graphics/drawable/Drawable;)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Size;->box-impl(J)Landroidx/compose/ui/geometry/Size;

    move-result-object v1

    invoke-static {v1, v2, v3, v2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    iput-object v1, p0, Lcom/google/accompanist/drawablepainter/DrawablePainter;->drawableIntrinsicSize$delegate:Landroidx/compose/runtime/MutableState;

    .line 64
    new-instance v1, Lcom/google/accompanist/drawablepainter/DrawablePainter$callback$2;

    invoke-direct {v1, p0}, Lcom/google/accompanist/drawablepainter/DrawablePainter$callback$2;-><init>(Lcom/google/accompanist/drawablepainter/DrawablePainter;)V

    invoke-static {v1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Lcom/google/accompanist/drawablepainter/DrawablePainter;->callback$delegate:Lkotlin/Lazy;

    .line 84
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-ltz v1, :cond_0

    .line 86
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method public static final synthetic access$getDrawInvalidateTick(Lcom/google/accompanist/drawablepainter/DrawablePainter;)I
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/google/accompanist/drawablepainter/DrawablePainter;->getDrawInvalidateTick()I

    move-result p0

    return p0
.end method

.method public static final synthetic access$setDrawInvalidateTick(Lcom/google/accompanist/drawablepainter/DrawablePainter;I)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/google/accompanist/drawablepainter/DrawablePainter;->setDrawInvalidateTick(I)V

    return-void
.end method

.method public static final synthetic access$setDrawableIntrinsicSize-uvyYCjk(Lcom/google/accompanist/drawablepainter/DrawablePainter;J)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/google/accompanist/drawablepainter/DrawablePainter;->setDrawableIntrinsicSize-uvyYCjk(J)V

    return-void
.end method

.method private final getCallback()Landroid/graphics/drawable/Drawable$Callback;
    .locals 1

    iget-object v0, p0, Lcom/google/accompanist/drawablepainter/DrawablePainter;->callback$delegate:Lkotlin/Lazy;

    .line 64
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$Callback;

    return-object v0
.end method

.method private final getDrawInvalidateTick()I
    .locals 1

    iget-object v0, p0, Lcom/google/accompanist/drawablepainter/DrawablePainter;->drawInvalidateTick$delegate:Landroidx/compose/runtime/MutableState;

    .line 180
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final getDrawableIntrinsicSize-NH-jbRc()J
    .locals 2

    iget-object v0, p0, Lcom/google/accompanist/drawablepainter/DrawablePainter;->drawableIntrinsicSize$delegate:Landroidx/compose/runtime/MutableState;

    .line 183
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/geometry/Size;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Size;->unbox-impl()J

    move-result-wide v0

    return-wide v0
.end method

.method private final setDrawInvalidateTick(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/accompanist/drawablepainter/DrawablePainter;->drawInvalidateTick$delegate:Landroidx/compose/runtime/MutableState;

    .line 61
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 181
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final setDrawableIntrinsicSize-uvyYCjk(J)V
    .locals 1

    iget-object v0, p0, Lcom/google/accompanist/drawablepainter/DrawablePainter;->drawableIntrinsicSize$delegate:Landroidx/compose/runtime/MutableState;

    .line 62
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Size;->box-impl(J)Landroidx/compose/ui/geometry/Size;

    move-result-object p1

    .line 184
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected applyAlpha(F)Z
    .locals 3

    iget-object v0, p0, Lcom/google/accompanist/drawablepainter/DrawablePainter;->drawable:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xff

    int-to-float v2, v1

    mul-float/2addr p1, v2

    .line 105
    invoke-static {p1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v1}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    const/4 p1, 0x1

    return p1
.end method

.method protected applyColorFilter(Landroidx/compose/ui/graphics/ColorFilter;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/accompanist/drawablepainter/DrawablePainter;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 110
    invoke-static {p1}, Landroidx/compose/ui/graphics/AndroidColorFilter_androidKt;->asAndroidColorFilter(Landroidx/compose/ui/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected applyLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)Z
    .locals 3

    const-string v0, "layoutDirection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/accompanist/drawablepainter/DrawablePainter;->drawable:Landroid/graphics/drawable/Drawable;

    .line 117
    sget-object v1, Lcom/google/accompanist/drawablepainter/DrawablePainter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_1
    const/4 v1, 0x0

    .line 116
    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    move-result p1

    return p1
.end method

.method public final getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/accompanist/drawablepainter/DrawablePainter;->drawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIntrinsicSize-NH-jbRc()J
    .locals 2

    .line 126
    invoke-direct {p0}, Lcom/google/accompanist/drawablepainter/DrawablePainter;->getDrawableIntrinsicSize-NH-jbRc()J

    move-result-wide v0

    return-wide v0
.end method

.method public onAbandoned()V
    .locals 0

    .line 96
    invoke-virtual {p0}, Lcom/google/accompanist/drawablepainter/DrawablePainter;->onForgotten()V

    return-void
.end method

.method protected onDraw(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
    .locals 5

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v0

    .line 131
    invoke-direct {p0}, Lcom/google/accompanist/drawablepainter/DrawablePainter;->getDrawInvalidateTick()I

    iget-object v1, p0, Lcom/google/accompanist/drawablepainter/DrawablePainter;->drawable:Landroid/graphics/drawable/Drawable;

    .line 134
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v2

    invoke-static {v2}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v2

    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result p1

    invoke-static {p1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 48
    :try_start_0
    invoke-interface {v0}, Landroidx/compose/ui/graphics/Canvas;->save()V

    iget-object p1, p0, Lcom/google/accompanist/drawablepainter/DrawablePainter;->drawable:Landroid/graphics/drawable/Drawable;

    .line 137
    invoke-static {v0}, Landroidx/compose/ui/graphics/AndroidCanvas_androidKt;->getNativeCanvas(Landroidx/compose/ui/graphics/Canvas;)Landroid/graphics/Canvas;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    invoke-interface {v0}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    throw p1
.end method

.method public onForgotten()V
    .locals 2

    iget-object v0, p0, Lcom/google/accompanist/drawablepainter/DrawablePainter;->drawable:Landroid/graphics/drawable/Drawable;

    .line 99
    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/google/accompanist/drawablepainter/DrawablePainter;->drawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    .line 100
    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    iget-object v0, p0, Lcom/google/accompanist/drawablepainter/DrawablePainter;->drawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    .line 101
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-void
.end method

.method public onRemembered()V
    .locals 2

    iget-object v0, p0, Lcom/google/accompanist/drawablepainter/DrawablePainter;->drawable:Landroid/graphics/drawable/Drawable;

    .line 91
    invoke-direct {p0}, Lcom/google/accompanist/drawablepainter/DrawablePainter;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Lcom/google/accompanist/drawablepainter/DrawablePainter;->drawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    .line 92
    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    iget-object v0, p0, Lcom/google/accompanist/drawablepainter/DrawablePainter;->drawable:Landroid/graphics/drawable/Drawable;

    .line 93
    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    :cond_0
    return-void
.end method
