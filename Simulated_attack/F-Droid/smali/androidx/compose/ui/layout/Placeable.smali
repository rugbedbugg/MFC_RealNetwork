.class public abstract Landroidx/compose/ui/layout/Placeable;
.super Ljava/lang/Object;
.source "Placeable.kt"

# interfaces
.implements Landroidx/compose/ui/layout/Measured;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/layout/Placeable$PlacementScope;
    }
.end annotation


# instance fields
.field private apparentToRealOffset:J

.field private height:I

.field private measuredSize:J

.field private measurementConstraints:J

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 70
    invoke-static {v0, v0}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/ui/layout/Placeable;->measuredSize:J

    .line 111
    invoke-static {}, Landroidx/compose/ui/layout/PlaceableKt;->access$getDefaultConstraints$p()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/ui/layout/Placeable;->measurementConstraints:J

    .line 124
    sget-object v0, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntOffset$Companion;->getZero-nOcc-ac()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/ui/layout/Placeable;->apparentToRealOffset:J

    return-void
.end method

.method public static final synthetic access$getApparentToRealOffset-nOcc-ac(Landroidx/compose/ui/layout/Placeable;)J
    .locals 2

    .line 34
    iget-wide v0, p0, Landroidx/compose/ui/layout/Placeable;->apparentToRealOffset:J

    return-wide v0
.end method

.method public static final synthetic access$placeAt-f8xVGno(Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 34
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/ui/layout/Placeable;->placeAt-f8xVGno(JFLkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final onMeasuredSizeChanged()V
    .locals 4

    iget-wide v0, p0, Landroidx/compose/ui/layout/Placeable;->measuredSize:J

    .line 79
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    move-result v0

    iget-wide v1, p0, Landroidx/compose/ui/layout/Placeable;->measurementConstraints:J

    .line 80
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v1

    iget-wide v2, p0, Landroidx/compose/ui/layout/Placeable;->measurementConstraints:J

    .line 81
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v2

    .line 79
    invoke-static {v0, v1, v2}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v0

    iput v0, p0, Landroidx/compose/ui/layout/Placeable;->width:I

    iget-wide v0, p0, Landroidx/compose/ui/layout/Placeable;->measuredSize:J

    .line 83
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    move-result v0

    iget-wide v1, p0, Landroidx/compose/ui/layout/Placeable;->measurementConstraints:J

    .line 84
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v1

    iget-wide v2, p0, Landroidx/compose/ui/layout/Placeable;->measurementConstraints:J

    .line 85
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v2

    .line 83
    invoke-static {v0, v1, v2}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v0

    iput v0, p0, Landroidx/compose/ui/layout/Placeable;->height:I

    iget v0, p0, Landroidx/compose/ui/layout/Placeable;->width:I

    iget-wide v1, p0, Landroidx/compose/ui/layout/Placeable;->measuredSize:J

    .line 88
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Landroidx/compose/ui/layout/Placeable;->height:I

    iget-wide v2, p0, Landroidx/compose/ui/layout/Placeable;->measuredSize:J

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/ui/layout/Placeable;->apparentToRealOffset:J

    return-void
.end method


# virtual methods
.method protected final getApparentToRealOffset-nOcc-ac()J
    .locals 2

    .line 0
    iget-wide v0, p0, Landroidx/compose/ui/layout/Placeable;->apparentToRealOffset:J

    return-wide v0
.end method

.method public final getHeight()I
    .locals 1

    .line 0
    iget v0, p0, Landroidx/compose/ui/layout/Placeable;->height:I

    return v0
.end method

.method public getMeasuredHeight()I
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/layout/Placeable;->measuredSize:J

    .line 65
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    move-result v0

    return v0
.end method

.method protected final getMeasuredSize-YbymL2g()J
    .locals 2

    .line 0
    iget-wide v0, p0, Landroidx/compose/ui/layout/Placeable;->measuredSize:J

    return-wide v0
.end method

.method public getMeasuredWidth()I
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/layout/Placeable;->measuredSize:J

    .line 60
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    move-result v0

    return v0
.end method

.method protected final getMeasurementConstraints-msEJaDk()J
    .locals 2

    .line 0
    iget-wide v0, p0, Landroidx/compose/ui/layout/Placeable;->measurementConstraints:J

    return-wide v0
.end method

.method public synthetic getParentData()Ljava/lang/Object;
    .locals 1

    .line 0
    invoke-static {p0}, Landroidx/compose/ui/layout/Measured$-CC;->$default$getParentData(Landroidx/compose/ui/layout/Measured;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getWidth()I
    .locals 1

    .line 0
    iget v0, p0, Landroidx/compose/ui/layout/Placeable;->width:I

    return v0
.end method

.method protected abstract placeAt-f8xVGno(JFLkotlin/jvm/functions/Function1;)V
.end method

.method protected final setMeasuredSize-ozmzZPI(J)V
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/layout/Placeable;->measuredSize:J

    .line 72
    invoke-static {v0, v1, p1, p2}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    iput-wide p1, p0, Landroidx/compose/ui/layout/Placeable;->measuredSize:J

    .line 74
    invoke-direct {p0}, Landroidx/compose/ui/layout/Placeable;->onMeasuredSizeChanged()V

    :cond_0
    return-void
.end method

.method protected final setMeasurementConstraints-BRTryo0(J)V
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/layout/Placeable;->measurementConstraints:J

    .line 113
    invoke-static {v0, v1, p1, p2}, Landroidx/compose/ui/unit/Constraints;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    iput-wide p1, p0, Landroidx/compose/ui/layout/Placeable;->measurementConstraints:J

    .line 115
    invoke-direct {p0}, Landroidx/compose/ui/layout/Placeable;->onMeasuredSizeChanged()V

    :cond_0
    return-void
.end method
