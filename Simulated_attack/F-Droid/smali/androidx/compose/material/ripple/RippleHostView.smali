.class public final Landroidx/compose/material/ripple/RippleHostView;
.super Landroid/view/View;
.source "RippleHostView.android.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material/ripple/RippleHostView$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/material/ripple/RippleHostView$Companion;

.field private static final PressedState:[I

.field private static final RestingState:[I


# instance fields
.field private bounded:Ljava/lang/Boolean;

.field private lastRippleStateChangeTimeMillis:Ljava/lang/Long;

.field private onInvalidateRipple:Lkotlin/jvm/functions/Function0;

.field private resetRippleRunnable:Ljava/lang/Runnable;

.field private ripple:Landroidx/compose/material/ripple/UnprojectedRipple;


# direct methods
.method public static synthetic $r8$lambda$4nztiuYeQHklB-09QfMAnp7Ay8E(Landroidx/compose/material/ripple/RippleHostView;)V
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/compose/material/ripple/RippleHostView;->setRippleState$lambda$2(Landroidx/compose/material/ripple/RippleHostView;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Landroidx/compose/material/ripple/RippleHostView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/material/ripple/RippleHostView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/material/ripple/RippleHostView;->Companion:Landroidx/compose/material/ripple/RippleHostView$Companion;

    const v0, 0x10100a7

    const v1, 0x101009e

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroidx/compose/material/ripple/RippleHostView;->PressedState:[I

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Landroidx/compose/material/ripple/RippleHostView;->RestingState:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private final createRipple(Z)V
    .locals 1

    .line 92
    new-instance v0, Landroidx/compose/material/ripple/UnprojectedRipple;

    invoke-direct {v0, p1}, Landroidx/compose/material/ripple/UnprojectedRipple;-><init>(Z)V

    .line 96
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Landroidx/compose/material/ripple/RippleHostView;->ripple:Landroidx/compose/material/ripple/UnprojectedRipple;

    return-void
.end method

.method private final setRippleState(Z)V
    .locals 6

    .line 220
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Landroidx/compose/material/ripple/RippleHostView;->resetRippleRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    .line 222
    invoke-virtual {p0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 223
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object v2, p0, Landroidx/compose/material/ripple/RippleHostView;->lastRippleStateChangeTimeMillis:Ljava/lang/Long;

    if-eqz v2, :cond_1

    .line 225
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    :goto_0
    sub-long v2, v0, v2

    if-nez p1, :cond_2

    const-wide/16 v4, 0x5

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 234
    new-instance p1, Landroidx/compose/material/ripple/RippleHostView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Landroidx/compose/material/ripple/RippleHostView$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/material/ripple/RippleHostView;)V

    iput-object p1, p0, Landroidx/compose/material/ripple/RippleHostView;->resetRippleRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    .line 238
    invoke-virtual {p0, p1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_3

    sget-object p1, Landroidx/compose/material/ripple/RippleHostView;->PressedState:[I

    goto :goto_1

    :cond_3
    sget-object p1, Landroidx/compose/material/ripple/RippleHostView;->RestingState:[I

    :goto_1
    iget-object v2, p0, Landroidx/compose/material/ripple/RippleHostView;->ripple:Landroidx/compose/material/ripple/UnprojectedRipple;

    if-nez v2, :cond_4

    goto :goto_2

    .line 241
    :cond_4
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 243
    :goto_2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material/ripple/RippleHostView;->lastRippleStateChangeTimeMillis:Ljava/lang/Long;

    return-void
.end method

.method private static final setRippleState$lambda$2(Landroidx/compose/material/ripple/RippleHostView;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Landroidx/compose/material/ripple/RippleHostView;->ripple:Landroidx/compose/material/ripple/UnprojectedRipple;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/compose/material/ripple/RippleHostView;->RestingState:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :goto_0
    const/4 v0, 0x0

    .line 236
    iput-object v0, p0, Landroidx/compose/material/ripple/RippleHostView;->resetRippleRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final addRipple-KOepWvA(Landroidx/compose/foundation/interaction/PressInteraction$Press;ZJIJFLkotlin/jvm/functions/Function0;)V
    .locals 11

    move-object v7, p0

    move v8, p2

    move-object/from16 v0, p9

    const-string v1, "interaction"

    move-object v9, p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "onInvalidateRipple"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v7, Landroidx/compose/material/ripple/RippleHostView;->ripple:Landroidx/compose/material/ripple/UnprojectedRipple;

    if-eqz v1, :cond_0

    .line 132
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, v7, Landroidx/compose/material/ripple/RippleHostView;->bounded:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 133
    :cond_0
    invoke-direct {p0, p2}, Landroidx/compose/material/ripple/RippleHostView;->createRipple(Z)V

    .line 134
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v7, Landroidx/compose/material/ripple/RippleHostView;->bounded:Ljava/lang/Boolean;

    :cond_1
    iget-object v10, v7, Landroidx/compose/material/ripple/RippleHostView;->ripple:Landroidx/compose/material/ripple/UnprojectedRipple;

    .line 136
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object v0, v7, Landroidx/compose/material/ripple/RippleHostView;->onInvalidateRipple:Lkotlin/jvm/functions/Function0;

    move-object v0, p0

    move-wide v1, p3

    move/from16 v3, p5

    move-wide/from16 v4, p6

    move/from16 v6, p8

    .line 138
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/material/ripple/RippleHostView;->updateRippleProperties-biQXAtU(JIJF)V

    if-eqz v8, :cond_2

    .line 141
    invoke-virtual {p1}, Landroidx/compose/foundation/interaction/PressInteraction$Press;->getPressPosition-F1C5BW0()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/foundation/interaction/PressInteraction$Press;->getPressPosition-F1C5BW0()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v1

    invoke-virtual {v10, v0, v1}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    goto :goto_0

    .line 148
    :cond_2
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    .line 149
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    .line 147
    invoke-virtual {v10, v0, v1}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :goto_0
    const/4 v0, 0x1

    .line 152
    invoke-direct {p0, v0}, Landroidx/compose/material/ripple/RippleHostView;->setRippleState(Z)V

    return-void
.end method

.method public final disposeRipple()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/material/ripple/RippleHostView;->onInvalidateRipple:Lkotlin/jvm/functions/Function0;

    iget-object v0, p0, Landroidx/compose/material/ripple/RippleHostView;->resetRippleRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroidx/compose/material/ripple/RippleHostView;->resetRippleRunnable:Ljava/lang/Runnable;

    .line 205
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/material/ripple/RippleHostView;->ripple:Landroidx/compose/material/ripple/UnprojectedRipple;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Landroidx/compose/material/ripple/RippleHostView;->RestingState:[I

    .line 207
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :goto_0
    iget-object v0, p0, Landroidx/compose/material/ripple/RippleHostView;->ripple:Landroidx/compose/material/ripple/UnprojectedRipple;

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x0

    .line 210
    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 211
    invoke-virtual {p0, v0}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const-string v0, "who"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/compose/material/ripple/RippleHostView;->onInvalidateRipple:Lkotlin/jvm/functions/Function0;

    if-eqz p1, :cond_0

    .line 112
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    const/4 p1, 0x0

    .line 54
    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public refreshDrawableState()V
    .locals 0

    .line 0
    return-void
.end method

.method public final removeRipple()V
    .locals 1

    const/4 v0, 0x0

    .line 160
    invoke-direct {p0, v0}, Landroidx/compose/material/ripple/RippleHostView;->setRippleState(Z)V

    return-void
.end method

.method public final updateRippleProperties-biQXAtU(JIJF)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/material/ripple/RippleHostView;->ripple:Landroidx/compose/material/ripple/UnprojectedRipple;

    if-nez v0, :cond_0

    return-void

    .line 179
    :cond_0
    invoke-virtual {v0, p3}, Landroidx/compose/material/ripple/UnprojectedRipple;->trySetRadius(I)V

    .line 180
    invoke-virtual {v0, p4, p5, p6}, Landroidx/compose/material/ripple/UnprojectedRipple;->setColor-DxMtmZc(JF)V

    .line 181
    new-instance p3, Landroid/graphics/Rect;

    .line 184
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result p4

    invoke-static {p4}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p4

    .line 185
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result p1

    invoke-static {p1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p1

    const/4 p2, 0x0

    .line 181
    invoke-direct {p3, p2, p2, p4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iget p1, p3, Landroid/graphics/Rect;->left:I

    .line 191
    invoke-virtual {p0, p1}, Landroid/view/View;->setLeft(I)V

    iget p1, p3, Landroid/graphics/Rect;->top:I

    .line 192
    invoke-virtual {p0, p1}, Landroid/view/View;->setTop(I)V

    iget p1, p3, Landroid/graphics/Rect;->right:I

    .line 193
    invoke-virtual {p0, p1}, Landroid/view/View;->setRight(I)V

    iget p1, p3, Landroid/graphics/Rect;->bottom:I

    .line 194
    invoke-virtual {p0, p1}, Landroid/view/View;->setBottom(I)V

    .line 195
    invoke-virtual {v0, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method
