.class public final Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;
.super Landroidx/compose/runtime/snapshots/MutableSnapshot;
.source "Snapshot.kt"


# instance fields
.field private final mergeParentObservers:Z

.field private final ownsParentSnapshot:Z

.field private final parentSnapshot:Landroidx/compose/runtime/snapshots/MutableSnapshot;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/snapshots/MutableSnapshot;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZZ)V
    .locals 2

    .line 1475
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->Companion:Landroidx/compose/runtime/snapshots/SnapshotIdSet$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotIdSet$Companion;->getEMPTY()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 1478
    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->getReadObserver$runtime_release()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$getCurrentGlobalSnapshot$p()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/snapshots/GlobalSnapshot;

    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->getReadObserver$runtime_release()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    .line 1476
    :cond_1
    invoke-static {p2, v1, p4}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$mergedReadObserver(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Z)Lkotlin/jvm/functions/Function1;

    move-result-object p2

    if-eqz p1, :cond_2

    .line 1483
    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->getWriteObserver$runtime_release()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_2
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$getCurrentGlobalSnapshot$p()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/snapshots/GlobalSnapshot;

    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->getWriteObserver$runtime_release()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    .line 1481
    :cond_3
    invoke-static {p3, v1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$mergedWriteObserver(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function1;

    move-result-object p3

    const/4 v1, 0x0

    .line 1473
    invoke-direct {p0, v1, v0, p2, p3}, Landroidx/compose/runtime/snapshots/MutableSnapshot;-><init>(ILandroidx/compose/runtime/snapshots/SnapshotIdSet;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->parentSnapshot:Landroidx/compose/runtime/snapshots/MutableSnapshot;

    iput-boolean p4, p0, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->mergeParentObservers:Z

    iput-boolean p5, p0, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->ownsParentSnapshot:Z

    return-void
.end method

.method private final getCurrentSnapshot()Landroidx/compose/runtime/snapshots/MutableSnapshot;
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->parentSnapshot:Landroidx/compose/runtime/snapshots/MutableSnapshot;

    if-nez v0, :cond_0

    .line 1487
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$getCurrentGlobalSnapshot$p()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "currentGlobalSnapshot.get()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/runtime/snapshots/MutableSnapshot;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public apply()Landroidx/compose/runtime/snapshots/SnapshotApplyResult;
    .locals 1

    .line 1523
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->getCurrentSnapshot()Landroidx/compose/runtime/snapshots/MutableSnapshot;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->apply()Landroidx/compose/runtime/snapshots/SnapshotApplyResult;

    move-result-object v0

    return-object v0
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 1491
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/snapshots/Snapshot;->setDisposed$runtime_release(Z)V

    iget-boolean v0, p0, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->ownsParentSnapshot:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->parentSnapshot:Landroidx/compose/runtime/snapshots/MutableSnapshot;

    if-eqz v0, :cond_0

    .line 1493
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->dispose()V

    :cond_0
    return-void
.end method

.method public getId()I
    .locals 1

    .line 1498
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->getCurrentSnapshot()Landroidx/compose/runtime/snapshots/MutableSnapshot;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->getId()I

    move-result v0

    return v0
.end method

.method public getInvalid$runtime_release()Landroidx/compose/runtime/snapshots/SnapshotIdSet;
    .locals 1

    .line 1502
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->getCurrentSnapshot()Landroidx/compose/runtime/snapshots/MutableSnapshot;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->getInvalid$runtime_release()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v0

    return-object v0
.end method

.method public getModified$runtime_release()Landroidx/compose/runtime/collection/IdentityArraySet;
    .locals 1

    .line 1509
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->getCurrentSnapshot()Landroidx/compose/runtime/snapshots/MutableSnapshot;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->getModified$runtime_release()Landroidx/compose/runtime/collection/IdentityArraySet;

    move-result-object v0

    return-object v0
.end method

.method public getReadOnly()Z
    .locals 1

    .line 1520
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->getCurrentSnapshot()Landroidx/compose/runtime/snapshots/MutableSnapshot;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->getReadOnly()Z

    move-result v0

    return v0
.end method

.method public getWriteCount$runtime_release()I
    .locals 1

    .line 1514
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->getCurrentSnapshot()Landroidx/compose/runtime/snapshots/MutableSnapshot;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->getWriteCount$runtime_release()I

    move-result v0

    return v0
.end method

.method public nestedActivated$runtime_release(Landroidx/compose/runtime/snapshots/Snapshot;)Ljava/lang/Void;
    .locals 1

    const-string v0, "snapshot"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1570
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateMapKt;->unsupported()Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method public bridge synthetic nestedActivated$runtime_release(Landroidx/compose/runtime/snapshots/Snapshot;)V
    .locals 0

    .line 1467
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->nestedActivated$runtime_release(Landroidx/compose/runtime/snapshots/Snapshot;)Ljava/lang/Void;

    return-void
.end method

.method public nestedDeactivated$runtime_release(Landroidx/compose/runtime/snapshots/Snapshot;)Ljava/lang/Void;
    .locals 1

    const-string v0, "snapshot"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1572
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateMapKt;->unsupported()Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method public bridge synthetic nestedDeactivated$runtime_release(Landroidx/compose/runtime/snapshots/Snapshot;)V
    .locals 0

    .line 1467
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->nestedDeactivated$runtime_release(Landroidx/compose/runtime/snapshots/Snapshot;)Ljava/lang/Void;

    return-void
.end method

.method public notifyObjectsInitialized$runtime_release()V
    .locals 1

    .line 1567
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->getCurrentSnapshot()Landroidx/compose/runtime/snapshots/MutableSnapshot;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->notifyObjectsInitialized$runtime_release()V

    return-void
.end method

.method public recordModified$runtime_release(Landroidx/compose/runtime/snapshots/StateObject;)V
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1526
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->getCurrentSnapshot()Landroidx/compose/runtime/snapshots/MutableSnapshot;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->recordModified$runtime_release(Landroidx/compose/runtime/snapshots/StateObject;)V

    return-void
.end method

.method public setId$runtime_release(I)V
    .locals 0

    .line 1500
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateMapKt;->unsupported()Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method public setInvalid$runtime_release(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1504
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateMapKt;->unsupported()Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method public setModified(Landroidx/compose/runtime/collection/IdentityArraySet;)V
    .locals 0

    .line 1511
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateMapKt;->unsupported()Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method public setWriteCount$runtime_release(I)V
    .locals 1

    .line 1516
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->getCurrentSnapshot()Landroidx/compose/runtime/snapshots/MutableSnapshot;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->setWriteCount$runtime_release(I)V

    return-void
.end method

.method public takeNestedMutableSnapshot(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/MutableSnapshot;
    .locals 10

    .line 1545
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->getReadObserver$runtime_release()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Landroidx/compose/runtime/snapshots/SnapshotKt;->mergedReadObserver$default(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZILjava/lang/Object;)Lkotlin/jvm/functions/Function1;

    move-result-object v6

    .line 1546
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->getWriteObserver$runtime_release()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    invoke-static {p2, p1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$mergedWriteObserver(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function1;

    move-result-object v7

    iget-boolean p1, p0, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->mergeParentObservers:Z

    if-nez p1, :cond_0

    .line 1548
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->getCurrentSnapshot()Landroidx/compose/runtime/snapshots/MutableSnapshot;

    move-result-object p1

    invoke-virtual {p1, v3, v7}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->takeNestedMutableSnapshot(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/MutableSnapshot;

    move-result-object v5

    .line 1552
    new-instance p1, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;-><init>(Landroidx/compose/runtime/snapshots/MutableSnapshot;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZZ)V

    goto :goto_0

    .line 1560
    :cond_0
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->getCurrentSnapshot()Landroidx/compose/runtime/snapshots/MutableSnapshot;

    move-result-object p1

    invoke-virtual {p1, v6, v7}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->takeNestedMutableSnapshot(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/MutableSnapshot;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public takeNestedSnapshot(Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/Snapshot;
    .locals 4

    .line 1529
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->getReadObserver$runtime_release()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Landroidx/compose/runtime/snapshots/SnapshotKt;->mergedReadObserver$default(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZILjava/lang/Object;)Lkotlin/jvm/functions/Function1;

    move-result-object p1

    iget-boolean v0, p0, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->mergeParentObservers:Z

    if-nez v0, :cond_0

    .line 1532
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->getCurrentSnapshot()Landroidx/compose/runtime/snapshots/MutableSnapshot;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->takeNestedSnapshot(Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v0

    const/4 v1, 0x1

    .line 1531
    invoke-static {v0, p1, v1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$createTransparentSnapshotWithNoParentReadObserver(Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;Z)Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object p1

    goto :goto_0

    .line 1537
    :cond_0
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->getCurrentSnapshot()Landroidx/compose/runtime/snapshots/MutableSnapshot;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->takeNestedSnapshot(Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object p1

    :goto_0
    return-object p1
.end method
