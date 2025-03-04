.class final Landroidx/compose/material/DefaultSwitchColors;
.super Ljava/lang/Object;
.source "Switch.kt"

# interfaces
.implements Landroidx/compose/material/SwitchColors;


# instance fields
.field private final checkedThumbColor:J

.field private final checkedTrackColor:J

.field private final disabledCheckedThumbColor:J

.field private final disabledCheckedTrackColor:J

.field private final disabledUncheckedThumbColor:J

.field private final disabledUncheckedTrackColor:J

.field private final uncheckedThumbColor:J

.field private final uncheckedTrackColor:J


# direct methods
.method private constructor <init>(JJJJJJJJ)V
    .locals 3

    move-object v0, p0

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    iput-wide v1, v0, Landroidx/compose/material/DefaultSwitchColors;->checkedThumbColor:J

    move-wide v1, p3

    iput-wide v1, v0, Landroidx/compose/material/DefaultSwitchColors;->checkedTrackColor:J

    move-wide v1, p5

    iput-wide v1, v0, Landroidx/compose/material/DefaultSwitchColors;->uncheckedThumbColor:J

    move-wide v1, p7

    iput-wide v1, v0, Landroidx/compose/material/DefaultSwitchColors;->uncheckedTrackColor:J

    move-wide v1, p9

    iput-wide v1, v0, Landroidx/compose/material/DefaultSwitchColors;->disabledCheckedThumbColor:J

    move-wide v1, p11

    iput-wide v1, v0, Landroidx/compose/material/DefaultSwitchColors;->disabledCheckedTrackColor:J

    move-wide/from16 v1, p13

    iput-wide v1, v0, Landroidx/compose/material/DefaultSwitchColors;->disabledUncheckedThumbColor:J

    move-wide/from16 v1, p15

    iput-wide v1, v0, Landroidx/compose/material/DefaultSwitchColors;->disabledUncheckedTrackColor:J

    return-void
.end method

.method public synthetic constructor <init>(JJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p16}, Landroidx/compose/material/DefaultSwitchColors;-><init>(JJJJJJJJ)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_a

    .line 390
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroidx/compose/material/DefaultSwitchColors;

    if-eq v3, v2, :cond_1

    goto :goto_0

    .line 392
    :cond_1
    check-cast p1, Landroidx/compose/material/DefaultSwitchColors;

    iget-wide v2, p0, Landroidx/compose/material/DefaultSwitchColors;->checkedThumbColor:J

    .line 394
    iget-wide v4, p1, Landroidx/compose/material/DefaultSwitchColors;->checkedThumbColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget-wide v2, p0, Landroidx/compose/material/DefaultSwitchColors;->checkedTrackColor:J

    .line 395
    iget-wide v4, p1, Landroidx/compose/material/DefaultSwitchColors;->checkedTrackColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-wide v2, p0, Landroidx/compose/material/DefaultSwitchColors;->uncheckedThumbColor:J

    .line 396
    iget-wide v4, p1, Landroidx/compose/material/DefaultSwitchColors;->uncheckedThumbColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-wide v2, p0, Landroidx/compose/material/DefaultSwitchColors;->uncheckedTrackColor:J

    .line 397
    iget-wide v4, p1, Landroidx/compose/material/DefaultSwitchColors;->uncheckedTrackColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-wide v2, p0, Landroidx/compose/material/DefaultSwitchColors;->disabledCheckedThumbColor:J

    .line 398
    iget-wide v4, p1, Landroidx/compose/material/DefaultSwitchColors;->disabledCheckedThumbColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    iget-wide v2, p0, Landroidx/compose/material/DefaultSwitchColors;->disabledCheckedTrackColor:J

    .line 399
    iget-wide v4, p1, Landroidx/compose/material/DefaultSwitchColors;->disabledCheckedTrackColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    :cond_7
    iget-wide v2, p0, Landroidx/compose/material/DefaultSwitchColors;->disabledUncheckedThumbColor:J

    .line 400
    iget-wide v4, p1, Landroidx/compose/material/DefaultSwitchColors;->disabledUncheckedThumbColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    :cond_8
    iget-wide v2, p0, Landroidx/compose/material/DefaultSwitchColors;->disabledUncheckedTrackColor:J

    .line 401
    iget-wide v4, p1, Landroidx/compose/material/DefaultSwitchColors;->disabledUncheckedTrackColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result p1

    if-nez p1, :cond_9

    return v1

    :cond_9
    return v0

    :cond_a
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Landroidx/compose/material/DefaultSwitchColors;->checkedThumbColor:J

    .line 407
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/compose/material/DefaultSwitchColors;->checkedTrackColor:J

    .line 408
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/compose/material/DefaultSwitchColors;->uncheckedThumbColor:J

    .line 409
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/compose/material/DefaultSwitchColors;->uncheckedTrackColor:J

    .line 410
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/compose/material/DefaultSwitchColors;->disabledCheckedThumbColor:J

    .line 411
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/compose/material/DefaultSwitchColors;->disabledCheckedTrackColor:J

    .line 412
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/compose/material/DefaultSwitchColors;->disabledUncheckedThumbColor:J

    .line 413
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/compose/material/DefaultSwitchColors;->disabledUncheckedTrackColor:J

    .line 414
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public thumbColor(ZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 3

    const v0, -0x3f58d77

    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "androidx.compose.material.DefaultSwitchColors.thumbColor (Switch.kt:366)"

    .line 367
    invoke-static {v0, p4, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    iget-wide p1, p0, Landroidx/compose/material/DefaultSwitchColors;->checkedThumbColor:J

    goto :goto_0

    :cond_1
    iget-wide p1, p0, Landroidx/compose/material/DefaultSwitchColors;->uncheckedThumbColor:J

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    iget-wide p1, p0, Landroidx/compose/material/DefaultSwitchColors;->disabledCheckedThumbColor:J

    goto :goto_0

    :cond_3
    iget-wide p1, p0, Landroidx/compose/material/DefaultSwitchColors;->disabledUncheckedThumbColor:J

    .line 372
    :goto_0
    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object p1

    const/4 p2, 0x0

    .line 368
    invoke-static {p1, p3, p2}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object p1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object p1
.end method

.method public trackColor(ZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 3

    const v0, -0x461d9342

    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "androidx.compose.material.DefaultSwitchColors.trackColor (Switch.kt:377)"

    .line 378
    invoke-static {v0, p4, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    iget-wide p1, p0, Landroidx/compose/material/DefaultSwitchColors;->checkedTrackColor:J

    goto :goto_0

    :cond_1
    iget-wide p1, p0, Landroidx/compose/material/DefaultSwitchColors;->uncheckedTrackColor:J

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    iget-wide p1, p0, Landroidx/compose/material/DefaultSwitchColors;->disabledCheckedTrackColor:J

    goto :goto_0

    :cond_3
    iget-wide p1, p0, Landroidx/compose/material/DefaultSwitchColors;->disabledUncheckedTrackColor:J

    .line 383
    :goto_0
    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object p1

    const/4 p2, 0x0

    .line 379
    invoke-static {p1, p3, p2}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object p1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object p1
.end method
