.class public final Landroidx/compose/foundation/text/selection/HandlePositionProvider;
.super Ljava/lang/Object;
.source "AndroidSelectionHandles.android.kt"

# interfaces
.implements Landroidx/compose/ui/window/PopupPositionProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/text/selection/HandlePositionProvider$WhenMappings;
    }
.end annotation


# instance fields
.field private final handleReferencePoint:Landroidx/compose/foundation/text/selection/HandleReferencePoint;

.field private final offset:J


# direct methods
.method private constructor <init>(Landroidx/compose/foundation/text/selection/HandleReferencePoint;J)V
    .locals 1

    const-string v0, "handleReferencePoint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/selection/HandlePositionProvider;->handleReferencePoint:Landroidx/compose/foundation/text/selection/HandleReferencePoint;

    iput-wide p2, p0, Landroidx/compose/foundation/text/selection/HandlePositionProvider;->offset:J

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/foundation/text/selection/HandleReferencePoint;JLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/text/selection/HandlePositionProvider;-><init>(Landroidx/compose/foundation/text/selection/HandleReferencePoint;J)V

    return-void
.end method


# virtual methods
.method public calculatePosition-llwVHH4(Landroidx/compose/ui/unit/IntRect;JLandroidx/compose/ui/unit/LayoutDirection;J)J
    .locals 2

    const-string p2, "anchorBounds"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "layoutDirection"

    invoke-static {p4, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/compose/foundation/text/selection/HandlePositionProvider;->handleReferencePoint:Landroidx/compose/foundation/text/selection/HandleReferencePoint;

    .line 277
    sget-object p3, Landroidx/compose/foundation/text/selection/HandlePositionProvider$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, p3, p2

    const/4 p3, 0x1

    if-eq p2, p3, :cond_2

    const/4 p3, 0x2

    if-eq p2, p3, :cond_1

    const/4 p4, 0x3

    if-ne p2, p4, :cond_0

    .line 290
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getLeft()I

    move-result p2

    iget-wide v0, p0, Landroidx/compose/foundation/text/selection/HandlePositionProvider;->offset:J

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result p4

    add-int/2addr p2, p4

    invoke-static {p5, p6}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    move-result p4

    div-int/2addr p4, p3

    sub-int/2addr p2, p4

    .line 291
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getTop()I

    move-result p1

    iget-wide p3, p0, Landroidx/compose/foundation/text/selection/HandlePositionProvider;->offset:J

    invoke-static {p3, p4}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result p3

    add-int/2addr p1, p3

    .line 289
    invoke-static {p2, p1}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide p1

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 285
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getLeft()I

    move-result p2

    iget-wide p3, p0, Landroidx/compose/foundation/text/selection/HandlePositionProvider;->offset:J

    invoke-static {p3, p4}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result p3

    add-int/2addr p2, p3

    invoke-static {p5, p6}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    move-result p3

    sub-int/2addr p2, p3

    .line 286
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getTop()I

    move-result p1

    iget-wide p3, p0, Landroidx/compose/foundation/text/selection/HandlePositionProvider;->offset:J

    invoke-static {p3, p4}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result p3

    add-int/2addr p1, p3

    .line 284
    invoke-static {p2, p1}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide p1

    goto :goto_0

    .line 280
    :cond_2
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getLeft()I

    move-result p2

    iget-wide p3, p0, Landroidx/compose/foundation/text/selection/HandlePositionProvider;->offset:J

    invoke-static {p3, p4}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result p3

    add-int/2addr p2, p3

    .line 281
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getTop()I

    move-result p1

    iget-wide p3, p0, Landroidx/compose/foundation/text/selection/HandlePositionProvider;->offset:J

    invoke-static {p3, p4}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result p3

    add-int/2addr p1, p3

    .line 279
    invoke-static {p2, p1}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide p1

    :goto_0
    return-wide p1
.end method
