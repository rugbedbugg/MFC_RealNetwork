.class public final Landroidx/compose/runtime/snapshots/NestedMutableSnapshot;
.super Landroidx/compose/runtime/snapshots/MutableSnapshot;
.source "Snapshot.kt"


# instance fields
.field private deactivated:Z

.field private final parent:Landroidx/compose/runtime/snapshots/MutableSnapshot;


# direct methods
.method public constructor <init>(ILandroidx/compose/runtime/snapshots/SnapshotIdSet;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/snapshots/MutableSnapshot;)V
    .locals 1

    const-string v0, "invalid"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1391
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/runtime/snapshots/MutableSnapshot;-><init>(ILandroidx/compose/runtime/snapshots/SnapshotIdSet;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    iput-object p5, p0, Landroidx/compose/runtime/snapshots/NestedMutableSnapshot;->parent:Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 1394
    invoke-virtual {p5, p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->nestedActivated$runtime_release(Landroidx/compose/runtime/snapshots/Snapshot;)V

    return-void
.end method

.method private final deactivate()V
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/runtime/snapshots/NestedMutableSnapshot;->deactivated:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/runtime/snapshots/NestedMutableSnapshot;->deactivated:Z

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/NestedMutableSnapshot;->parent:Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 1459
    invoke-virtual {v0, p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->nestedDeactivated$runtime_release(Landroidx/compose/runtime/snapshots/Snapshot;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public apply()Landroidx/compose/runtime/snapshots/SnapshotApplyResult;
    .locals 7

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/NestedMutableSnapshot;->parent:Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 1406
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->getApplied$runtime_release()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/NestedMutableSnapshot;->parent:Landroidx/compose/runtime/snapshots/MutableSnapshot;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->getDisposed$runtime_release()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 1415
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->getModified$runtime_release()Landroidx/compose/runtime/collection/IdentityArraySet;

    move-result-object v0

    .line 1416
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->getId()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v3, p0, Landroidx/compose/runtime/snapshots/NestedMutableSnapshot;->parent:Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 1418
    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/Snapshot;->getInvalid$runtime_release()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v4

    invoke-static {v3, p0, v4}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$optimisticMerges(Landroidx/compose/runtime/snapshots/MutableSnapshot;Landroidx/compose/runtime/snapshots/MutableSnapshot;Landroidx/compose/runtime/snapshots/SnapshotIdSet;)Ljava/util/Map;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v2

    .line 1722
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    move-result-object v4

    .line 70
    monitor-enter v4

    .line 1421
    :try_start_0
    invoke-static {p0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$validateOpen(Landroidx/compose/runtime/snapshots/Snapshot;)V

    if-eqz v0, :cond_5

    .line 1422
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    iget-object v5, p0, Landroidx/compose/runtime/snapshots/NestedMutableSnapshot;->parent:Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 1425
    invoke-virtual {v5}, Landroidx/compose/runtime/snapshots/Snapshot;->getId()I

    move-result v5

    iget-object v6, p0, Landroidx/compose/runtime/snapshots/NestedMutableSnapshot;->parent:Landroidx/compose/runtime/snapshots/MutableSnapshot;

    invoke-virtual {v6}, Landroidx/compose/runtime/snapshots/Snapshot;->getInvalid$runtime_release()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v6

    invoke-virtual {p0, v5, v3, v6}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->innerApplyLocked$runtime_release(ILjava/util/Map;Landroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/SnapshotApplyResult;

    move-result-object v3

    .line 1426
    sget-object v5, Landroidx/compose/runtime/snapshots/SnapshotApplyResult$Success;->INSTANCE:Landroidx/compose/runtime/snapshots/SnapshotApplyResult$Success;

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_3

    monitor-exit v4

    return-object v3

    :cond_3
    :try_start_1
    iget-object v3, p0, Landroidx/compose/runtime/snapshots/NestedMutableSnapshot;->parent:Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 1428
    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->getModified$runtime_release()Landroidx/compose/runtime/collection/IdentityArraySet;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/collection/IdentityArraySet;->addAll(Ljava/util/Collection;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_4
    iget-object v3, p0, Landroidx/compose/runtime/snapshots/NestedMutableSnapshot;->parent:Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 1431
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->setModified(Landroidx/compose/runtime/collection/IdentityArraySet;)V

    .line 1432
    invoke-virtual {p0, v2}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->setModified(Landroidx/compose/runtime/collection/IdentityArraySet;)V

    goto :goto_2

    .line 1423
    :cond_5
    :goto_1
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->closeAndReleasePinning$runtime_release()V

    :goto_2
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/NestedMutableSnapshot;->parent:Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 1437
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->getId()I

    move-result v0

    if-ge v0, v1, :cond_6

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/NestedMutableSnapshot;->parent:Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 1438
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->advance$runtime_release()V

    :cond_6
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/NestedMutableSnapshot;->parent:Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 1442
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->getInvalid$runtime_release()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->clear(I)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->getPreviousIds$runtime_release()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->andNot(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/snapshots/Snapshot;->setInvalid$runtime_release(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)V

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/NestedMutableSnapshot;->parent:Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 1445
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->recordPrevious$runtime_release(I)V

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/NestedMutableSnapshot;->parent:Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 1446
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->takeoverPinnedSnapshot$runtime_release()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->recordPreviousPinnedSnapshot$runtime_release(I)V

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/NestedMutableSnapshot;->parent:Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 1447
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->getPreviousIds$runtime_release()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->recordPreviousList$runtime_release(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)V

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/NestedMutableSnapshot;->parent:Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 1448
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->getPreviousPinnedSnapshots$runtime_release()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->recordPreviousPinnedSnapshots$runtime_release([I)V

    .line 1449
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    monitor-exit v4

    const/4 v0, 0x1

    .line 1451
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->setApplied$runtime_release(Z)V

    .line 1452
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/NestedMutableSnapshot;->deactivate()V

    .line 1453
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotApplyResult$Success;->INSTANCE:Landroidx/compose/runtime/snapshots/SnapshotApplyResult$Success;

    return-object v0

    .line 70
    :goto_3
    monitor-exit v4

    throw v0

    .line 1406
    :cond_7
    :goto_4
    new-instance v0, Landroidx/compose/runtime/snapshots/SnapshotApplyResult$Failure;

    invoke-direct {v0, p0}, Landroidx/compose/runtime/snapshots/SnapshotApplyResult$Failure;-><init>(Landroidx/compose/runtime/snapshots/Snapshot;)V

    return-object v0
.end method

.method public dispose()V
    .locals 1

    .line 1399
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->getDisposed$runtime_release()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1400
    invoke-super {p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->dispose()V

    .line 1401
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/NestedMutableSnapshot;->deactivate()V

    :cond_0
    return-void
.end method
