.class final Landroidx/compose/foundation/GlowEdgeEffectCompat;
.super Landroid/widget/EdgeEffect;
.source "EdgeEffectCompat.kt"


# instance fields
.field private oppositeReleaseDelta:F

.field private final oppositeReleaseDeltaThreshold:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-direct {p0, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    .line 88
    invoke-static {p1}, Landroidx/compose/ui/unit/AndroidDensity_androidKt;->Density(Landroid/content/Context;)Landroidx/compose/ui/unit/Density;

    move-result-object p1

    const/4 v0, 0x1

    int-to-float v0, v0

    .line 154
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 88
    invoke-interface {p1, v0}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result p1

    iput p1, p0, Landroidx/compose/foundation/GlowEdgeEffectCompat;->oppositeReleaseDeltaThreshold:F

    return-void
.end method


# virtual methods
.method public onAbsorb(I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/foundation/GlowEdgeEffectCompat;->oppositeReleaseDelta:F

    .line 108
    invoke-super {p0, p1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    return-void
.end method

.method public onPull(F)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/foundation/GlowEdgeEffectCompat;->oppositeReleaseDelta:F

    .line 98
    invoke-super {p0, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    return-void
.end method

.method public onPull(FF)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/foundation/GlowEdgeEffectCompat;->oppositeReleaseDelta:F

    .line 93
    invoke-super {p0, p1, p2}, Landroid/widget/EdgeEffect;->onPull(FF)V

    return-void
.end method

.method public onRelease()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/foundation/GlowEdgeEffectCompat;->oppositeReleaseDelta:F

    .line 103
    invoke-super {p0}, Landroid/widget/EdgeEffect;->onRelease()V

    return-void
.end method

.method public final releaseWithOppositeDelta(F)V
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/GlowEdgeEffectCompat;->oppositeReleaseDelta:F

    add-float/2addr v0, p1

    iput v0, p0, Landroidx/compose/foundation/GlowEdgeEffectCompat;->oppositeReleaseDelta:F

    .line 117
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Landroidx/compose/foundation/GlowEdgeEffectCompat;->oppositeReleaseDeltaThreshold:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    .line 118
    invoke-virtual {p0}, Landroidx/compose/foundation/GlowEdgeEffectCompat;->onRelease()V

    :cond_0
    return-void
.end method
