.class public final Landroidx/compose/ui/input/pointer/ConsumedData;
.super Ljava/lang/Object;
.source "PointerEvent.kt"


# instance fields
.field private downChange:Z

.field private positionChange:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0

    .line 837
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/compose/ui/input/pointer/ConsumedData;->positionChange:Z

    iput-boolean p2, p0, Landroidx/compose/ui/input/pointer/ConsumedData;->downChange:Z

    return-void
.end method


# virtual methods
.method public final getDownChange()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Landroidx/compose/ui/input/pointer/ConsumedData;->downChange:Z

    return v0
.end method

.method public final getPositionChange()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Landroidx/compose/ui/input/pointer/ConsumedData;->positionChange:Z

    return v0
.end method

.method public final setDownChange(Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Landroidx/compose/ui/input/pointer/ConsumedData;->downChange:Z

    return-void
.end method

.method public final setPositionChange(Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Landroidx/compose/ui/input/pointer/ConsumedData;->positionChange:Z

    return-void
.end method
