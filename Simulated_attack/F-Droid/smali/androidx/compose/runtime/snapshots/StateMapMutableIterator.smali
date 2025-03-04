.class abstract Landroidx/compose/runtime/snapshots/StateMapMutableIterator;
.super Ljava/lang/Object;
.source "SnapshotStateMap.kt"


# instance fields
.field private current:Ljava/util/Map$Entry;

.field private final iterator:Ljava/util/Iterator;

.field private final map:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

.field private modification:I

.field private next:Ljava/util/Map$Entry;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/snapshots/SnapshotStateMap;Ljava/util/Iterator;)V
    .locals 1

    const-string v0, "map"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iterator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/StateMapMutableIterator;->map:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    iput-object p2, p0, Landroidx/compose/runtime/snapshots/StateMapMutableIterator;->iterator:Ljava/util/Iterator;

    .line 280
    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->getModification$runtime_release()I

    move-result p1

    iput p1, p0, Landroidx/compose/runtime/snapshots/StateMapMutableIterator;->modification:I

    .line 284
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/StateMapMutableIterator;->advance()V

    return-void
.end method

.method public static final synthetic access$getModification(Landroidx/compose/runtime/snapshots/StateMapMutableIterator;)I
    .locals 0

    .line 276
    iget p0, p0, Landroidx/compose/runtime/snapshots/StateMapMutableIterator;->modification:I

    return p0
.end method

.method public static final synthetic access$setModification(Landroidx/compose/runtime/snapshots/StateMapMutableIterator;I)V
    .locals 0

    .line 276
    iput p1, p0, Landroidx/compose/runtime/snapshots/StateMapMutableIterator;->modification:I

    return-void
.end method


# virtual methods
.method protected final advance()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/StateMapMutableIterator;->next:Ljava/util/Map$Entry;

    iput-object v0, p0, Landroidx/compose/runtime/snapshots/StateMapMutableIterator;->current:Ljava/util/Map$Entry;

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/StateMapMutableIterator;->iterator:Ljava/util/Iterator;

    .line 301
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/StateMapMutableIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroidx/compose/runtime/snapshots/StateMapMutableIterator;->next:Ljava/util/Map$Entry;

    return-void
.end method

.method protected final getCurrent()Ljava/util/Map$Entry;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/StateMapMutableIterator;->current:Ljava/util/Map$Entry;

    return-object v0
.end method

.method public final getMap()Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/StateMapMutableIterator;->map:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    return-object v0
.end method

.method protected final getNext()Ljava/util/Map$Entry;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/StateMapMutableIterator;->next:Ljava/util/Map$Entry;

    return-object v0
.end method

.method public final hasNext()Z
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/StateMapMutableIterator;->next:Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final remove()V
    .locals 2

    .line 305
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/StateMapMutableIterator;->getMap()Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->getModification$runtime_release()I

    move-result v0

    invoke-static {p0}, Landroidx/compose/runtime/snapshots/StateMapMutableIterator;->access$getModification(Landroidx/compose/runtime/snapshots/StateMapMutableIterator;)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/StateMapMutableIterator;->current:Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/compose/runtime/snapshots/StateMapMutableIterator;->map:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    .line 290
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/runtime/snapshots/StateMapMutableIterator;->current:Ljava/util/Map$Entry;

    .line 295
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 308
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/StateMapMutableIterator;->getMap()Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->getModification$runtime_release()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/runtime/snapshots/StateMapMutableIterator;->access$setModification(Landroidx/compose/runtime/snapshots/StateMapMutableIterator;I)V

    return-void

    .line 293
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 306
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method
