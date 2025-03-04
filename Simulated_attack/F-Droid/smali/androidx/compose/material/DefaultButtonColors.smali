.class final Landroidx/compose/material/DefaultButtonColors;
.super Ljava/lang/Object;
.source "Button.kt"

# interfaces
.implements Landroidx/compose/material/ButtonColors;


# instance fields
.field private final backgroundColor:J

.field private final contentColor:J

.field private final disabledBackgroundColor:J

.field private final disabledContentColor:J


# direct methods
.method private constructor <init>(JJJJ)V
    .locals 0

    .line 579
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/compose/material/DefaultButtonColors;->backgroundColor:J

    iput-wide p3, p0, Landroidx/compose/material/DefaultButtonColors;->contentColor:J

    iput-wide p5, p0, Landroidx/compose/material/DefaultButtonColors;->disabledBackgroundColor:J

    iput-wide p7, p0, Landroidx/compose/material/DefaultButtonColors;->disabledContentColor:J

    return-void
.end method

.method public synthetic constructor <init>(JJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p8}, Landroidx/compose/material/DefaultButtonColors;-><init>(JJJJ)V

    return-void
.end method


# virtual methods
.method public backgroundColor(ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 3

    const v0, -0x270e63e3

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "androidx.compose.material.DefaultButtonColors.backgroundColor (Button.kt:586)"

    .line 587
    invoke-static {v0, p3, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    iget-wide v0, p0, Landroidx/compose/material/DefaultButtonColors;->backgroundColor:J

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Landroidx/compose/material/DefaultButtonColors;->disabledBackgroundColor:J

    .line 588
    :goto_0
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object p1

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object p1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object p1
.end method

.method public contentColor(ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 3

    const v0, -0x7f2ce0b4

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "androidx.compose.material.DefaultButtonColors.contentColor (Button.kt:591)"

    .line 592
    invoke-static {v0, p3, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    iget-wide v0, p0, Landroidx/compose/material/DefaultButtonColors;->contentColor:J

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Landroidx/compose/material/DefaultButtonColors;->disabledContentColor:J

    .line 593
    :goto_0
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object p1

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object p1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 598
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroidx/compose/material/DefaultButtonColors;

    if-eq v3, v2, :cond_1

    goto :goto_0

    .line 600
    :cond_1
    check-cast p1, Landroidx/compose/material/DefaultButtonColors;

    iget-wide v2, p0, Landroidx/compose/material/DefaultButtonColors;->backgroundColor:J

    .line 602
    iget-wide v4, p1, Landroidx/compose/material/DefaultButtonColors;->backgroundColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget-wide v2, p0, Landroidx/compose/material/DefaultButtonColors;->contentColor:J

    .line 603
    iget-wide v4, p1, Landroidx/compose/material/DefaultButtonColors;->contentColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-wide v2, p0, Landroidx/compose/material/DefaultButtonColors;->disabledBackgroundColor:J

    .line 604
    iget-wide v4, p1, Landroidx/compose/material/DefaultButtonColors;->disabledBackgroundColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-wide v2, p0, Landroidx/compose/material/DefaultButtonColors;->disabledContentColor:J

    .line 605
    iget-wide v4, p1, Landroidx/compose/material/DefaultButtonColors;->disabledContentColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0

    :cond_6
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Landroidx/compose/material/DefaultButtonColors;->backgroundColor:J

    .line 611
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/compose/material/DefaultButtonColors;->contentColor:J

    .line 612
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/compose/material/DefaultButtonColors;->disabledBackgroundColor:J

    .line 613
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/compose/material/DefaultButtonColors;->disabledContentColor:J

    .line 614
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
