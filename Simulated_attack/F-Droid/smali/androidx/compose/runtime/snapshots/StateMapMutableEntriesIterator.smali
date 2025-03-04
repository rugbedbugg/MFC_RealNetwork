.class final Landroidx/compose/runtime/snapshots/StateMapMutableEntriesIterator;
.super Landroidx/compose/runtime/snapshots/StateMapMutableIterator;
.source "SnapshotStateMap.kt"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/snapshots/SnapshotStateMap;Ljava/util/Iterator;)V
    .locals 1

    const-string v0, "map"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iterator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 315
    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/snapshots/StateMapMutableIterator;-><init>(Landroidx/compose/runtime/snapshots/SnapshotStateMap;Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 312
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/StateMapMutableEntriesIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 1

    .line 317
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/StateMapMutableIterator;->advance()V

    .line 318
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/StateMapMutableIterator;->getCurrent()Ljava/util/Map$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 319
    new-instance v0, Landroidx/compose/runtime/snapshots/StateMapMutableEntriesIterator$next$1;

    invoke-direct {v0, p0}, Landroidx/compose/runtime/snapshots/StateMapMutableEntriesIterator$next$1;-><init>(Landroidx/compose/runtime/snapshots/StateMapMutableEntriesIterator;)V

    return-object v0

    .line 330
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
