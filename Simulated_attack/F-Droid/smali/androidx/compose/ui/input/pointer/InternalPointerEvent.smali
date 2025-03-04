.class public final Landroidx/compose/ui/input/pointer/InternalPointerEvent;
.super Ljava/lang/Object;
.source "InternalPointerEvent.android.kt"


# instance fields
.field private final changes:Ljava/util/Map;

.field private final pointerInputEvent:Landroidx/compose/ui/input/pointer/PointerInputEvent;

.field private suppressMovementConsumption:Z


# direct methods
.method public constructor <init>(Ljava/util/Map;Landroidx/compose/ui/input/pointer/PointerInputEvent;)V
    .locals 1

    const-string v0, "changes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pointerInputEvent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/input/pointer/InternalPointerEvent;->changes:Ljava/util/Map;

    iput-object p2, p0, Landroidx/compose/ui/input/pointer/InternalPointerEvent;->pointerInputEvent:Landroidx/compose/ui/input/pointer/PointerInputEvent;

    return-void
.end method


# virtual methods
.method public final getChanges()Ljava/util/Map;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/InternalPointerEvent;->changes:Ljava/util/Map;

    return-object v0
.end method

.method public final getMotionEvent()Landroid/view/MotionEvent;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/input/pointer/InternalPointerEvent;->pointerInputEvent:Landroidx/compose/ui/input/pointer/PointerInputEvent;

    .line 27
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerInputEvent;->getMotionEvent()Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public final getSuppressMovementConsumption()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Landroidx/compose/ui/input/pointer/InternalPointerEvent;->suppressMovementConsumption:Z

    return v0
.end method

.method public final issuesEnterExitEvent-0FcD4WY(J)Z
    .locals 7

    iget-object v0, p0, Landroidx/compose/ui/input/pointer/InternalPointerEvent;->pointerInputEvent:Landroidx/compose/ui/input/pointer/PointerInputEvent;

    .line 30
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerInputEvent;->getPointers()Ljava/util/List;

    move-result-object v0

    .line 34
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 35
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 117
    move-object v5, v4

    check-cast v5, Landroidx/compose/ui/input/pointer/PointerInputEventData;

    .line 31
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerInputEventData;->getId-J3iCeTQ()J

    move-result-wide v5

    invoke-static {v5, v6, p1, p2}, Landroidx/compose/ui/input/pointer/PointerId;->equals-impl0(JJ)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 30
    :goto_1
    check-cast v4, Landroidx/compose/ui/input/pointer/PointerInputEventData;

    if-eqz v4, :cond_2

    .line 32
    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/PointerInputEventData;->getIssuesEnterExit()Z

    move-result v2

    :cond_2
    return v2
.end method
