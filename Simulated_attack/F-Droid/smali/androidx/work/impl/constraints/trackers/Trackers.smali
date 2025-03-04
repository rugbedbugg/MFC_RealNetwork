.class public final Landroidx/work/impl/constraints/trackers/Trackers;
.super Ljava/lang/Object;
.source "Trackers.kt"


# instance fields
.field private final batteryChargingTracker:Landroidx/work/impl/constraints/trackers/ConstraintTracker;

.field private final batteryNotLowTracker:Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;

.field private final networkStateTracker:Landroidx/work/impl/constraints/trackers/ConstraintTracker;

.field private final storageNotLowTracker:Landroidx/work/impl/constraints/trackers/ConstraintTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;Landroidx/work/impl/constraints/trackers/ConstraintTracker;Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;Landroidx/work/impl/constraints/trackers/ConstraintTracker;Landroidx/work/impl/constraints/trackers/ConstraintTracker;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "taskExecutor"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "batteryChargingTracker"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "batteryNotLowTracker"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "networkStateTracker"

    invoke-static {p5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "storageNotLowTracker"

    invoke-static {p6, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Landroidx/work/impl/constraints/trackers/Trackers;->batteryChargingTracker:Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    iput-object p4, p0, Landroidx/work/impl/constraints/trackers/Trackers;->batteryNotLowTracker:Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;

    iput-object p5, p0, Landroidx/work/impl/constraints/trackers/Trackers;->networkStateTracker:Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    iput-object p6, p0, Landroidx/work/impl/constraints/trackers/Trackers;->storageNotLowTracker:Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;Landroidx/work/impl/constraints/trackers/ConstraintTracker;Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;Landroidx/work/impl/constraints/trackers/ConstraintTracker;Landroidx/work/impl/constraints/trackers/ConstraintTracker;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 v0, p7, 0x4

    const-string v1, "context.applicationContext"

    if-eqz v0, :cond_0

    .line 36
    new-instance v0, Landroidx/work/impl/constraints/trackers/BatteryChargingTracker;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v3, p2}, Landroidx/work/impl/constraints/trackers/BatteryChargingTracker;-><init>(Landroid/content/Context;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;)V

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, p3

    :goto_0
    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_1

    .line 42
    new-instance v0, Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v4, p2}, Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;-><init>(Landroid/content/Context;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;)V

    move-object v4, v0

    goto :goto_1

    :cond_1
    move-object v4, p4

    :goto_1
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_2

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p2}, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerKt;->NetworkStateTracker(Landroid/content/Context;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;)Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    move-result-object v0

    move-object v5, v0

    goto :goto_2

    :cond_2
    move-object v5, p5

    :goto_2
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_3

    .line 54
    new-instance v0, Landroidx/work/impl/constraints/trackers/StorageNotLowTracker;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v6, p2}, Landroidx/work/impl/constraints/trackers/StorageNotLowTracker;-><init>(Landroid/content/Context;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;)V

    move-object v6, v0

    goto :goto_3

    :cond_3
    move-object v6, p6

    :goto_3
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 29
    invoke-direct/range {v0 .. v6}, Landroidx/work/impl/constraints/trackers/Trackers;-><init>(Landroid/content/Context;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;Landroidx/work/impl/constraints/trackers/ConstraintTracker;Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;Landroidx/work/impl/constraints/trackers/ConstraintTracker;Landroidx/work/impl/constraints/trackers/ConstraintTracker;)V

    return-void
.end method


# virtual methods
.method public final getBatteryChargingTracker()Landroidx/work/impl/constraints/trackers/ConstraintTracker;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/work/impl/constraints/trackers/Trackers;->batteryChargingTracker:Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    return-object v0
.end method

.method public final getBatteryNotLowTracker()Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/work/impl/constraints/trackers/Trackers;->batteryNotLowTracker:Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;

    return-object v0
.end method

.method public final getNetworkStateTracker()Landroidx/work/impl/constraints/trackers/ConstraintTracker;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/work/impl/constraints/trackers/Trackers;->networkStateTracker:Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    return-object v0
.end method

.method public final getStorageNotLowTracker()Landroidx/work/impl/constraints/trackers/ConstraintTracker;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/work/impl/constraints/trackers/Trackers;->storageNotLowTracker:Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    return-object v0
.end method
