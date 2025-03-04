.class public final Landroidx/work/impl/constraints/WorkConstraintsTracker;
.super Ljava/lang/Object;
.source "WorkConstraintsTracker.kt"


# instance fields
.field private final controllers:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroidx/work/impl/constraints/trackers/Trackers;)V
    .locals 3

    const-string v0, "trackers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x7

    new-array v0, v0, [Landroidx/work/impl/constraints/controllers/ConstraintController;

    .line 73
    new-instance v1, Landroidx/work/impl/constraints/controllers/BatteryChargingController;

    invoke-virtual {p1}, Landroidx/work/impl/constraints/trackers/Trackers;->getBatteryChargingTracker()Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/work/impl/constraints/controllers/BatteryChargingController;-><init>(Landroidx/work/impl/constraints/trackers/ConstraintTracker;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 74
    new-instance v1, Landroidx/work/impl/constraints/controllers/BatteryNotLowController;

    invoke-virtual {p1}, Landroidx/work/impl/constraints/trackers/Trackers;->getBatteryNotLowTracker()Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/work/impl/constraints/controllers/BatteryNotLowController;-><init>(Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 75
    new-instance v1, Landroidx/work/impl/constraints/controllers/StorageNotLowController;

    invoke-virtual {p1}, Landroidx/work/impl/constraints/trackers/Trackers;->getStorageNotLowTracker()Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/work/impl/constraints/controllers/StorageNotLowController;-><init>(Landroidx/work/impl/constraints/trackers/ConstraintTracker;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 76
    new-instance v1, Landroidx/work/impl/constraints/controllers/NetworkConnectedController;

    invoke-virtual {p1}, Landroidx/work/impl/constraints/trackers/Trackers;->getNetworkStateTracker()Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/work/impl/constraints/controllers/NetworkConnectedController;-><init>(Landroidx/work/impl/constraints/trackers/ConstraintTracker;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 77
    new-instance v1, Landroidx/work/impl/constraints/controllers/NetworkUnmeteredController;

    invoke-virtual {p1}, Landroidx/work/impl/constraints/trackers/Trackers;->getNetworkStateTracker()Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/work/impl/constraints/controllers/NetworkUnmeteredController;-><init>(Landroidx/work/impl/constraints/trackers/ConstraintTracker;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 78
    new-instance v1, Landroidx/work/impl/constraints/controllers/NetworkNotRoamingController;

    invoke-virtual {p1}, Landroidx/work/impl/constraints/trackers/Trackers;->getNetworkStateTracker()Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/work/impl/constraints/controllers/NetworkNotRoamingController;-><init>(Landroidx/work/impl/constraints/trackers/ConstraintTracker;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 79
    new-instance v1, Landroidx/work/impl/constraints/controllers/NetworkMeteredController;

    invoke-virtual {p1}, Landroidx/work/impl/constraints/trackers/Trackers;->getNetworkStateTracker()Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    move-result-object p1

    invoke-direct {v1, p1}, Landroidx/work/impl/constraints/controllers/NetworkMeteredController;-><init>(Landroidx/work/impl/constraints/trackers/ConstraintTracker;)V

    const/4 p1, 0x6

    aput-object v1, v0, p1

    .line 72
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 71
    invoke-direct {p0, p1}, Landroidx/work/impl/constraints/WorkConstraintsTracker;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    const-string v0, "controllers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/constraints/WorkConstraintsTracker;->controllers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final areAllConstraintsMet(Landroidx/work/impl/model/WorkSpec;)Z
    .locals 13

    const-string v0, "workSpec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/constraints/WorkConstraintsTracker;->controllers:Ljava/util/List;

    .line 766
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroidx/work/impl/constraints/controllers/ConstraintController;

    .line 91
    invoke-virtual {v2, p1}, Landroidx/work/impl/constraints/controllers/ConstraintController;->isConstrained(Landroidx/work/impl/model/WorkSpec;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 857
    invoke-interface {v10, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 93
    :cond_1
    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 94
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v0

    .line 95
    invoke-static {}, Landroidx/work/impl/constraints/WorkConstraintsTrackerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Work "

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " constrained by "

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Landroidx/work/impl/constraints/WorkConstraintsTracker$areAllConstraintsMet$1;->INSTANCE:Landroidx/work/impl/constraints/WorkConstraintsTracker$areAllConstraintsMet$1;

    const/16 v8, 0x1f

    const/4 v9, 0x0

    move-object v1, v10

    .line 96
    invoke-static/range {v1 .. v9}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 95
    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 94
    invoke-virtual {v0, v11, p1}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_2
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result p1

    return p1
.end method

.method public final track(Landroidx/work/impl/model/WorkSpec;)Lkotlinx/coroutines/flow/Flow;
    .locals 4

    const-string v0, "spec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/constraints/WorkConstraintsTracker;->controllers:Ljava/util/List;

    .line 766
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroidx/work/impl/constraints/controllers/ConstraintController;

    .line 84
    invoke-virtual {v3, p1}, Landroidx/work/impl/constraints/controllers/ConstraintController;->hasConstraint(Landroidx/work/impl/model/WorkSpec;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 857
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1549
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1621
    check-cast v1, Landroidx/work/impl/constraints/controllers/ConstraintController;

    .line 84
    invoke-virtual {v1}, Landroidx/work/impl/constraints/controllers/ConstraintController;->track()Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    .line 1621
    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 287
    :cond_2
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Lkotlinx/coroutines/flow/Flow;

    .line 38
    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .line 287
    check-cast p1, [Lkotlinx/coroutines/flow/Flow;

    .line 106
    new-instance v0, Landroidx/work/impl/constraints/WorkConstraintsTracker$track$$inlined$combine$1;

    invoke-direct {v0, p1}, Landroidx/work/impl/constraints/WorkConstraintsTracker$track$$inlined$combine$1;-><init>([Lkotlinx/coroutines/flow/Flow;)V

    .line 87
    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    return-object p1
.end method
