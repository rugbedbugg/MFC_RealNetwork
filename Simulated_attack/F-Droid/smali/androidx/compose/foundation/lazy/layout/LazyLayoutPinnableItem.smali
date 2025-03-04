.class final Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;
.super Ljava/lang/Object;
.source "LazyLayoutPinnableItem.kt"

# interfaces
.implements Landroidx/compose/ui/layout/PinnableContainer;
.implements Landroidx/compose/ui/layout/PinnableContainer$PinnedHandle;
.implements Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList$PinnedItem;


# instance fields
.field private final _parentPinnableContainer$delegate:Landroidx/compose/runtime/MutableState;

.field private final index$delegate:Landroidx/compose/runtime/MutableIntState;

.field private final key:Ljava/lang/Object;

.field private final parentHandle$delegate:Landroidx/compose/runtime/MutableState;

.field private final pinnedItemList:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

.field private final pinsCount$delegate:Landroidx/compose/runtime/MutableIntState;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;)V
    .locals 1

    const-string v0, "pinnedItemList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->key:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->pinnedItemList:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

    const/4 p1, -0x1

    .line 105
    invoke-static {p1}, Landroidx/compose/runtime/SnapshotIntStateKt;->mutableIntStateOf(I)Landroidx/compose/runtime/MutableIntState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->index$delegate:Landroidx/compose/runtime/MutableIntState;

    const/4 p1, 0x0

    .line 111
    invoke-static {p1}, Landroidx/compose/runtime/SnapshotIntStateKt;->mutableIntStateOf(I)Landroidx/compose/runtime/MutableIntState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->pinsCount$delegate:Landroidx/compose/runtime/MutableIntState;

    const/4 p1, 0x0

    const/4 p2, 0x2

    .line 116
    invoke-static {p1, p1, p2, p1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->parentHandle$delegate:Landroidx/compose/runtime/MutableState;

    .line 122
    invoke-static {p1, p1, p2, p1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->_parentPinnableContainer$delegate:Landroidx/compose/runtime/MutableState;

    return-void
.end method

.method private final getParentHandle()Landroidx/compose/ui/layout/PinnableContainer$PinnedHandle;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->parentHandle$delegate:Landroidx/compose/runtime/MutableState;

    .line 81
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/layout/PinnableContainer$PinnedHandle;

    return-object v0
.end method

.method private final getPinsCount()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->pinsCount$delegate:Landroidx/compose/runtime/MutableIntState;

    .line 75
    invoke-interface {v0}, Landroidx/compose/runtime/IntState;->getIntValue()I

    move-result v0

    return v0
.end method

.method private final get_parentPinnableContainer()Landroidx/compose/ui/layout/PinnableContainer;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->_parentPinnableContainer$delegate:Landroidx/compose/runtime/MutableState;

    .line 81
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/layout/PinnableContainer;

    return-object v0
.end method

.method private final setParentHandle(Landroidx/compose/ui/layout/PinnableContainer$PinnedHandle;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->parentHandle$delegate:Landroidx/compose/runtime/MutableState;

    .line 107
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final setPinsCount(I)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->pinsCount$delegate:Landroidx/compose/runtime/MutableIntState;

    .line 108
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableIntState;->setIntValue(I)V

    return-void
.end method

.method private final set_parentPinnableContainer(Landroidx/compose/ui/layout/PinnableContainer;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->_parentPinnableContainer$delegate:Landroidx/compose/runtime/MutableState;

    .line 107
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->index$delegate:Landroidx/compose/runtime/MutableIntState;

    .line 75
    invoke-interface {v0}, Landroidx/compose/runtime/IntState;->getIntValue()I

    move-result v0

    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public final getParentPinnableContainer()Landroidx/compose/ui/layout/PinnableContainer;
    .locals 1

    .line 123
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->get_parentPinnableContainer()Landroidx/compose/ui/layout/PinnableContainer;

    move-result-object v0

    return-object v0
.end method

.method public final onDisposed()V
    .locals 2

    .line 157
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->getPinsCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 158
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->release()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public pin()Landroidx/compose/ui/layout/PinnableContainer$PinnedHandle;
    .locals 1

    .line 138
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->getPinsCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->pinnedItemList:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

    .line 139
    invoke-virtual {v0, p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;->pin$foundation_release(Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList$PinnedItem;)V

    .line 140
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->getParentPinnableContainer()Landroidx/compose/ui/layout/PinnableContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/compose/ui/layout/PinnableContainer;->pin()Landroidx/compose/ui/layout/PinnableContainer$PinnedHandle;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->setParentHandle(Landroidx/compose/ui/layout/PinnableContainer$PinnedHandle;)V

    .line 142
    :cond_1
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->getPinsCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->setPinsCount(I)V

    return-object p0
.end method

.method public release()V
    .locals 2

    .line 147
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->getPinsCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 148
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->getPinsCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->setPinsCount(I)V

    .line 149
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->getPinsCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->pinnedItemList:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

    .line 150
    invoke-virtual {v0, p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;->release$foundation_release(Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList$PinnedItem;)V

    .line 151
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->getParentHandle()Landroidx/compose/ui/layout/PinnableContainer$PinnedHandle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/compose/ui/layout/PinnableContainer$PinnedHandle;->release()V

    :cond_0
    const/4 v0, 0x0

    .line 152
    invoke-direct {p0, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->setParentHandle(Landroidx/compose/ui/layout/PinnableContainer$PinnedHandle;)V

    :cond_1
    return-void

    .line 147
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Release should only be called once"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIndex(I)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->index$delegate:Landroidx/compose/runtime/MutableIntState;

    .line 108
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableIntState;->setIntValue(I)V

    return-void
.end method

.method public final setParentPinnableContainer(Landroidx/compose/ui/layout/PinnableContainer;)V
    .locals 3

    .line 125
    sget-object v0, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .line 496
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->createNonObservableSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v0

    .line 129
    :try_start_0
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->makeCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 126
    :try_start_1
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->get_parentPinnableContainer()Landroidx/compose/ui/layout/PinnableContainer;

    move-result-object v2

    if-eq p1, v2, :cond_2

    .line 128
    invoke-direct {p0, p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->set_parentPinnableContainer(Landroidx/compose/ui/layout/PinnableContainer;)V

    .line 129
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->getPinsCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 130
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->getParentHandle()Landroidx/compose/ui/layout/PinnableContainer$PinnedHandle;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroidx/compose/ui/layout/PinnableContainer$PinnedHandle;->release()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 131
    invoke-interface {p1}, Landroidx/compose/ui/layout/PinnableContainer;->pin()Landroidx/compose/ui/layout/PinnableContainer$PinnedHandle;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-direct {p0, p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->setParentHandle(Landroidx/compose/ui/layout/PinnableContainer$PinnedHandle;)V

    .line 134
    :cond_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    :try_start_2
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 500
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V

    return-void

    :catchall_1
    move-exception p1

    goto :goto_3

    .line 133
    :goto_2
    :try_start_3
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 500
    :goto_3
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V

    throw p1
.end method
