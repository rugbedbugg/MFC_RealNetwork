.class abstract Landroidx/compose/runtime/snapshots/SnapshotMapSet;
.super Ljava/lang/Object;
.source "SnapshotStateMap.kt"

# interfaces
.implements Ljava/util/Set;
.implements Lkotlin/jvm/internal/markers/KMutableSet;


# instance fields
.field private final map:Landroidx/compose/runtime/snapshots/SnapshotStateMap;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/snapshots/SnapshotStateMap;)V
    .locals 1

    const-string v0, "map"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotMapSet;->map:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotMapSet;->map:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    .line 188
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->clear()V

    return-void
.end method

.method public final getMap()Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotMapSet;->map:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotMapSet;->map:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    .line 187
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->size()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotMapSet;->map:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    .line 189
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final bridge size()I
    .locals 1

    .line 184
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotMapSet;->getSize()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 0
    invoke-static {p0}, Lkotlin/jvm/internal/CollectionToArray;->toArray(Ljava/util/Collection;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1

    .line 0
    const-string v0, "array"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lkotlin/jvm/internal/CollectionToArray;->toArray(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
