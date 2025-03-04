.class public abstract Landroidx/compose/runtime/SnapshotMutableLongStateImpl;
.super Ljava/lang/Object;
.source "SnapshotLongState.kt"

# interfaces
.implements Landroidx/compose/runtime/snapshots/StateObject;
.implements Landroidx/compose/runtime/MutableLongState;
.implements Landroidx/compose/runtime/snapshots/SnapshotMutableState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/SnapshotMutableLongStateImpl$LongStateStateRecord;
    }
.end annotation


# instance fields
.field private next:Landroidx/compose/runtime/SnapshotMutableLongStateImpl$LongStateStateRecord;


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Landroidx/compose/runtime/SnapshotMutableLongStateImpl$LongStateStateRecord;

    invoke-direct {v0, p1, p2}, Landroidx/compose/runtime/SnapshotMutableLongStateImpl$LongStateStateRecord;-><init>(J)V

    iput-object v0, p0, Landroidx/compose/runtime/SnapshotMutableLongStateImpl;->next:Landroidx/compose/runtime/SnapshotMutableLongStateImpl$LongStateStateRecord;

    return-void
.end method


# virtual methods
.method public getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/runtime/SnapshotMutableLongStateImpl;->next:Landroidx/compose/runtime/SnapshotMutableLongStateImpl$LongStateStateRecord;

    return-object v0
.end method

.method public getLongValue()J
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/SnapshotMutableLongStateImpl;->next:Landroidx/compose/runtime/SnapshotMutableLongStateImpl$LongStateStateRecord;

    .line 135
    invoke-static {v0, p0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->readable(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/SnapshotMutableLongStateImpl$LongStateStateRecord;

    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableLongStateImpl$LongStateStateRecord;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;
    .locals 1

    .line 145
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->structuralEqualityPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getValue()Ljava/lang/Long;
    .locals 1

    .line 0
    invoke-static {p0}, Landroidx/compose/runtime/MutableLongState$-CC;->$default$getValue(Landroidx/compose/runtime/MutableLongState;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 0
    invoke-static {p0}, Landroidx/compose/runtime/MutableLongState$-CC;->$default$getValue(Landroidx/compose/runtime/MutableLongState;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public mergeRecords(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;
    .locals 4

    const-string v0, "previous"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "current"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "applied"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    move-object p1, p2

    check-cast p1, Landroidx/compose/runtime/SnapshotMutableLongStateImpl$LongStateStateRecord;

    .line 161
    check-cast p3, Landroidx/compose/runtime/SnapshotMutableLongStateImpl$LongStateStateRecord;

    .line 162
    invoke-virtual {p1}, Landroidx/compose/runtime/SnapshotMutableLongStateImpl$LongStateStateRecord;->getValue()J

    move-result-wide v0

    invoke-virtual {p3}, Landroidx/compose/runtime/SnapshotMutableLongStateImpl$LongStateStateRecord;->getValue()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return-object p2
.end method

.method public prependStateRecord(Landroidx/compose/runtime/snapshots/StateRecord;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    check-cast p1, Landroidx/compose/runtime/SnapshotMutableLongStateImpl$LongStateStateRecord;

    iput-object p1, p0, Landroidx/compose/runtime/SnapshotMutableLongStateImpl;->next:Landroidx/compose/runtime/SnapshotMutableLongStateImpl$LongStateStateRecord;

    return-void
.end method

.method public setLongValue(J)V
    .locals 4

    iget-object v0, p0, Landroidx/compose/runtime/SnapshotMutableLongStateImpl;->next:Landroidx/compose/runtime/SnapshotMutableLongStateImpl$LongStateStateRecord;

    .line 2279
    invoke-static {v0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->current(Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/SnapshotMutableLongStateImpl$LongStateStateRecord;

    .line 137
    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableLongStateImpl$LongStateStateRecord;->getValue()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/compose/runtime/SnapshotMutableLongStateImpl;->next:Landroidx/compose/runtime/SnapshotMutableLongStateImpl$LongStateStateRecord;

    .line 2200
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getSnapshotInitializer()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 1722
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    move-result-object v2

    .line 70
    monitor-enter v2

    .line 2202
    :try_start_0
    sget-object v3, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->getCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v3

    .line 2203
    invoke-static {v1, p0, v3, v0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->overwritableRecord(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/SnapshotMutableLongStateImpl$LongStateStateRecord;

    .line 138
    invoke-virtual {v0, p1, p2}, Landroidx/compose/runtime/SnapshotMutableLongStateImpl$LongStateStateRecord;->setValue(J)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit v2

    .line 2205
    invoke-static {v3, p0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->notifyWrite(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/StateObject;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 70
    monitor-exit v2

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public synthetic setValue(J)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/MutableLongState$-CC;->$default$setValue(Landroidx/compose/runtime/MutableLongState;J)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/compose/runtime/MutableLongState$-CC;->$default$setValue(Landroidx/compose/runtime/MutableLongState;Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Landroidx/compose/runtime/SnapshotMutableLongStateImpl;->next:Landroidx/compose/runtime/SnapshotMutableLongStateImpl$LongStateStateRecord;

    .line 2279
    invoke-static {v0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->current(Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/SnapshotMutableLongStateImpl$LongStateStateRecord;

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MutableLongState(value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableLongStateImpl$LongStateStateRecord;->getValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")@"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
