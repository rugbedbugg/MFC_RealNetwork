.class final Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
.super Ljava/lang/Object;
.source "SnapshotStateObserver.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/snapshots/SnapshotStateObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ObservedScopeMap"
.end annotation


# instance fields
.field private currentScope:Ljava/lang/Object;

.field private currentScopeReads:Landroidx/compose/runtime/collection/IdentityArrayIntMap;

.field private currentToken:I

.field private final dependencyToDerivedStates:Landroidx/compose/runtime/collection/IdentityScopeMap;

.field private deriveStateScopeCount:I

.field private final derivedStateObserver:Landroidx/compose/runtime/DerivedStateObserver;

.field private final invalidated:Landroidx/compose/runtime/collection/IdentityArraySet;

.field private final onChanged:Lkotlin/jvm/functions/Function1;

.field private final recordedDerivedStateValues:Ljava/util/HashMap;

.field private final scopeToValues:Landroidx/compose/runtime/collection/IdentityArrayMap;

.field private final statesToReread:Landroidx/compose/runtime/collection/MutableVector;

.field private final valueToScopes:Landroidx/compose/runtime/collection/IdentityScopeMap;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 3

    const-string v0, "onChanged"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->onChanged:Lkotlin/jvm/functions/Function1;

    const/4 p1, -0x1

    iput p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentToken:I

    .line 352
    new-instance p1, Landroidx/compose/runtime/collection/IdentityScopeMap;

    invoke-direct {p1}, Landroidx/compose/runtime/collection/IdentityScopeMap;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->valueToScopes:Landroidx/compose/runtime/collection/IdentityScopeMap;

    .line 358
    new-instance p1, Landroidx/compose/runtime/collection/IdentityArrayMap;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p1, v2, v0, v1}, Landroidx/compose/runtime/collection/IdentityArrayMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->scopeToValues:Landroidx/compose/runtime/collection/IdentityArrayMap;

    .line 363
    new-instance p1, Landroidx/compose/runtime/collection/IdentityArraySet;

    invoke-direct {p1}, Landroidx/compose/runtime/collection/IdentityArraySet;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->invalidated:Landroidx/compose/runtime/collection/IdentityArraySet;

    .line 1162
    new-instance p1, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v0, 0x10

    new-array v0, v0, [Landroidx/compose/runtime/DerivedState;

    invoke-direct {p1, v0, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->statesToReread:Landroidx/compose/runtime/collection/MutableVector;

    .line 375
    new-instance p1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap$derivedStateObserver$1;

    invoke-direct {p1, p0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap$derivedStateObserver$1;-><init>(Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;)V

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->derivedStateObserver:Landroidx/compose/runtime/DerivedStateObserver;

    .line 396
    new-instance p1, Landroidx/compose/runtime/collection/IdentityScopeMap;

    invoke-direct {p1}, Landroidx/compose/runtime/collection/IdentityScopeMap;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->dependencyToDerivedStates:Landroidx/compose/runtime/collection/IdentityScopeMap;

    .line 401
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->recordedDerivedStateValues:Ljava/util/HashMap;

    return-void
.end method

.method public static final synthetic access$getDeriveStateScopeCount$p(Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;)I
    .locals 0

    .line 330
    iget p0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->deriveStateScopeCount:I

    return p0
.end method

.method public static final synthetic access$setDeriveStateScopeCount$p(Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;I)V
    .locals 0

    .line 330
    iput p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->deriveStateScopeCount:I

    return-void
.end method

.method private final clearObsoleteStateReads(Ljava/lang/Object;)V
    .locals 11

    iget v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentToken:I

    iget-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentScopeReads:Landroidx/compose/runtime/collection/IdentityArrayIntMap;

    if-eqz v1, :cond_6

    .line 137
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->getKeys()[Ljava/lang/Object;

    move-result-object v2

    .line 138
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->getValues()[I

    move-result-object v3

    .line 139
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->getSize()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_0
    if-ge v6, v4, :cond_4

    .line 144
    aget-object v8, v2, v6

    const-string v9, "null cannot be cast to non-null type kotlin.Any"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    aget v9, v3, v6

    if-eq v9, v0, :cond_0

    const/4 v10, 0x1

    goto :goto_1

    :cond_0
    move v10, v5

    :goto_1
    if-eqz v10, :cond_1

    .line 482
    invoke-direct {p0, p1, v8}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->removeObservation(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    if-nez v10, :cond_3

    if-eq v7, v6, :cond_2

    .line 148
    aput-object v8, v2, v7

    .line 149
    aput v9, v3, v7

    :cond_2
    add-int/lit8 v7, v7, 0x1

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    move p1, v7

    :goto_2
    if-ge p1, v4, :cond_5

    const/4 v0, 0x0

    .line 155
    aput-object v0, v2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 157
    :cond_5
    invoke-static {v1, v7}, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->access$setSize$p(Landroidx/compose/runtime/collection/IdentityArrayIntMap;I)V

    :cond_6
    return-void
.end method

.method private final recordRead(Ljava/lang/Object;ILjava/lang/Object;Landroidx/compose/runtime/collection/IdentityArrayIntMap;)V
    .locals 4

    iget v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->deriveStateScopeCount:I

    if-lez v0, :cond_0

    return-void

    .line 430
    :cond_0
    invoke-virtual {p4, p1, p2}, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->add(Ljava/lang/Object;I)I

    move-result p4

    .line 431
    instance-of v0, p1, Landroidx/compose/runtime/DerivedState;

    if-eqz v0, :cond_1

    if-eq p4, p2, :cond_1

    .line 432
    move-object p2, p1

    check-cast p2, Landroidx/compose/runtime/DerivedState;

    invoke-interface {p2}, Landroidx/compose/runtime/DerivedState;->getCurrentRecord()Landroidx/compose/runtime/DerivedState$Record;

    move-result-object p2

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->recordedDerivedStateValues:Ljava/util/HashMap;

    .line 434
    invoke-interface {p2}, Landroidx/compose/runtime/DerivedState$Record;->getCurrentValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    invoke-interface {p2}, Landroidx/compose/runtime/DerivedState$Record;->getDependencies()[Ljava/lang/Object;

    move-result-object p2

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->dependencyToDerivedStates:Landroidx/compose/runtime/collection/IdentityScopeMap;

    .line 439
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/collection/IdentityScopeMap;->removeScope(Ljava/lang/Object;)V

    .line 440
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p2, v2

    if-eqz v3, :cond_1

    .line 443
    invoke-virtual {v0, v3, p1}, Landroidx/compose/runtime/collection/IdentityScopeMap;->add(Ljava/lang/Object;Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, -0x1

    if-ne p4, p2, :cond_2

    iget-object p2, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->valueToScopes:Landroidx/compose/runtime/collection/IdentityScopeMap;

    .line 448
    invoke-virtual {p2, p1, p3}, Landroidx/compose/runtime/collection/IdentityScopeMap;->add(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method private final removeObservation(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->valueToScopes:Landroidx/compose/runtime/collection/IdentityScopeMap;

    .line 514
    invoke-virtual {v0, p2, p1}, Landroidx/compose/runtime/collection/IdentityScopeMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 515
    instance-of p1, p2, Landroidx/compose/runtime/DerivedState;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->valueToScopes:Landroidx/compose/runtime/collection/IdentityScopeMap;

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/collection/IdentityScopeMap;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->dependencyToDerivedStates:Landroidx/compose/runtime/collection/IdentityScopeMap;

    .line 516
    invoke-virtual {p1, p2}, Landroidx/compose/runtime/collection/IdentityScopeMap;->removeScope(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->recordedDerivedStateValues:Ljava/util/HashMap;

    .line 517
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->valueToScopes:Landroidx/compose/runtime/collection/IdentityScopeMap;

    .line 525
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/IdentityScopeMap;->clear()V

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->scopeToValues:Landroidx/compose/runtime/collection/IdentityArrayMap;

    .line 526
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/IdentityArrayMap;->clear()V

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->dependencyToDerivedStates:Landroidx/compose/runtime/collection/IdentityScopeMap;

    .line 527
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/IdentityScopeMap;->clear()V

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->recordedDerivedStateValues:Ljava/util/HashMap;

    .line 528
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public final getOnChanged()Lkotlin/jvm/functions/Function1;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->onChanged:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final notifyInvalidatedScopes()V
    .locals 7

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->invalidated:Landroidx/compose/runtime/collection/IdentityArraySet;

    iget-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->onChanged:Lkotlin/jvm/functions/Function1;

    .line 109
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/IdentityArraySet;->getValues()[Ljava/lang/Object;

    move-result-object v2

    .line 110
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    .line 112
    aget-object v5, v2, v4

    const-string v6, "null cannot be cast to non-null type T of androidx.compose.runtime.collection.IdentityArraySet"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 606
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/IdentityArraySet;->clear()V

    return-void
.end method

.method public final observe(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    .locals 5

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readObserver"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentScope:Ljava/lang/Object;

    iget-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentScopeReads:Landroidx/compose/runtime/collection/IdentityArrayIntMap;

    iget v2, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentToken:I

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentScope:Ljava/lang/Object;

    iget-object v3, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->scopeToValues:Landroidx/compose/runtime/collection/IdentityArrayMap;

    .line 461
    invoke-virtual {v3, p1}, Landroidx/compose/runtime/collection/IdentityArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/runtime/collection/IdentityArrayIntMap;

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentScopeReads:Landroidx/compose/runtime/collection/IdentityArrayIntMap;

    iget p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentToken:I

    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    .line 463
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->currentSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/Snapshot;->getId()I

    move-result p1

    iput p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentToken:I

    :cond_0
    iget-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->derivedStateObserver:Landroidx/compose/runtime/DerivedStateObserver;

    .line 377
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateObservers()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v3

    .line 379
    :try_start_0
    invoke-virtual {v3, p1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 467
    sget-object p1, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    const/4 v4, 0x0

    invoke-virtual {p1, p2, v4, p3}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->observe(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    invoke-virtual {v3}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 382
    invoke-virtual {v3, p1}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    iget-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentScope:Ljava/lang/Object;

    .line 470
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->clearObsoleteStateReads(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentScope:Ljava/lang/Object;

    iput-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentScopeReads:Landroidx/compose/runtime/collection/IdentityArrayIntMap;

    iput v2, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentToken:I

    return-void

    :catchall_0
    move-exception p1

    .line 48
    invoke-virtual {v3}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    .line 382
    invoke-virtual {v3, p2}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    throw p1
.end method

.method public final recordInvalidation(Ljava/util/Set;)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "changes"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->dependencyToDerivedStates:Landroidx/compose/runtime/collection/IdentityScopeMap;

    iget-object v3, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->recordedDerivedStateValues:Ljava/util/HashMap;

    iget-object v4, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->valueToScopes:Landroidx/compose/runtime/collection/IdentityScopeMap;

    iget-object v5, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->invalidated:Landroidx/compose/runtime/collection/IdentityArraySet;

    .line 384
    instance-of v6, v1, Landroidx/compose/runtime/collection/IdentityArraySet;

    const-string v7, "null cannot be cast to non-null type androidx.compose.runtime.DerivedState<kotlin.Any?>"

    const-string v8, "null cannot be cast to non-null type T of androidx.compose.runtime.collection.IdentityArraySet"

    if-eqz v6, :cond_7

    .line 385
    check-cast v1, Landroidx/compose/runtime/collection/IdentityArraySet;

    .line 109
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/IdentityArraySet;->getValues()[Ljava/lang/Object;

    move-result-object v6

    .line 110
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    move-result v1

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    if-ge v11, v1, :cond_d

    .line 112
    aget-object v13, v6, v11

    invoke-static {v13, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 544
    invoke-virtual {v2, v13}, Landroidx/compose/runtime/collection/IdentityScopeMap;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 80
    invoke-static {v2, v13}, Landroidx/compose/runtime/collection/IdentityScopeMap;->access$find(Landroidx/compose/runtime/collection/IdentityScopeMap;Ljava/lang/Object;)I

    move-result v14

    if-ltz v14, :cond_5

    .line 82
    invoke-static {v2, v14}, Landroidx/compose/runtime/collection/IdentityScopeMap;->access$scopeSetAt(Landroidx/compose/runtime/collection/IdentityScopeMap;I)Landroidx/compose/runtime/collection/IdentityArraySet;

    move-result-object v14

    .line 109
    invoke-virtual {v14}, Landroidx/compose/runtime/collection/IdentityArraySet;->getValues()[Ljava/lang/Object;

    move-result-object v15

    .line 110
    invoke-virtual {v14}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    move-result v14

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v14, :cond_4

    .line 112
    aget-object v9, v15, v10

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Landroidx/compose/runtime/DerivedState;

    .line 547
    invoke-static {v9, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move/from16 p1, v1

    .line 548
    invoke-virtual {v3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 549
    invoke-interface {v9}, Landroidx/compose/runtime/DerivedState;->getPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v16

    if-nez v16, :cond_0

    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->structuralEqualityPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v16

    :cond_0
    move-object/from16 v17, v6

    move-object/from16 v6, v16

    .line 553
    invoke-interface {v9}, Landroidx/compose/runtime/DerivedState;->getCurrentRecord()Landroidx/compose/runtime/DerivedState$Record;

    move-result-object v16

    move/from16 v18, v12

    invoke-interface/range {v16 .. v16}, Landroidx/compose/runtime/DerivedState$Record;->getCurrentValue()Ljava/lang/Object;

    move-result-object v12

    .line 552
    invoke-interface {v6, v12, v1}, Landroidx/compose/runtime/SnapshotMutationPolicy;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 80
    invoke-static {v4, v9}, Landroidx/compose/runtime/collection/IdentityScopeMap;->access$find(Landroidx/compose/runtime/collection/IdentityScopeMap;Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_2

    .line 82
    invoke-static {v4, v1}, Landroidx/compose/runtime/collection/IdentityScopeMap;->access$scopeSetAt(Landroidx/compose/runtime/collection/IdentityScopeMap;I)Landroidx/compose/runtime/collection/IdentityArraySet;

    move-result-object v1

    .line 109
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/IdentityArraySet;->getValues()[Ljava/lang/Object;

    move-result-object v6

    .line 110
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    move-result v1

    move/from16 v12, v18

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v1, :cond_3

    .line 112
    aget-object v12, v6, v9

    invoke-static {v12, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 558
    invoke-virtual {v5, v12}, Landroidx/compose/runtime/collection/IdentityArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    const/4 v12, 0x1

    goto :goto_2

    :cond_1
    iget-object v1, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->statesToReread:Landroidx/compose/runtime/collection/MutableVector;

    .line 563
    invoke-virtual {v1, v9}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    :cond_2
    move/from16 v12, v18

    :cond_3
    add-int/lit8 v10, v10, 0x1

    move/from16 v1, p1

    move-object/from16 v6, v17

    goto :goto_1

    :cond_4
    move/from16 p1, v1

    move-object/from16 v17, v6

    move/from16 v18, v12

    goto :goto_3

    :cond_5
    move/from16 p1, v1

    move-object/from16 v17, v6

    .line 80
    :goto_3
    invoke-static {v4, v13}, Landroidx/compose/runtime/collection/IdentityScopeMap;->access$find(Landroidx/compose/runtime/collection/IdentityScopeMap;Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_6

    .line 82
    invoke-static {v4, v1}, Landroidx/compose/runtime/collection/IdentityScopeMap;->access$scopeSetAt(Landroidx/compose/runtime/collection/IdentityScopeMap;I)Landroidx/compose/runtime/collection/IdentityArraySet;

    move-result-object v1

    .line 109
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/IdentityArraySet;->getValues()[Ljava/lang/Object;

    move-result-object v6

    .line 110
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    move-result v1

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v1, :cond_6

    .line 112
    aget-object v10, v6, v9

    invoke-static {v10, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 569
    invoke-virtual {v5, v10}, Landroidx/compose/runtime/collection/IdentityArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    const/4 v12, 0x1

    goto :goto_4

    :cond_6
    add-int/lit8 v11, v11, 0x1

    move/from16 v1, p1

    move-object/from16 v6, v17

    goto/16 :goto_0

    .line 387
    :cond_7
    check-cast v1, Ljava/lang/Iterable;

    .line 1855
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v12, 0x0

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 544
    invoke-virtual {v2, v6}, Landroidx/compose/runtime/collection/IdentityScopeMap;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 80
    invoke-static {v2, v6}, Landroidx/compose/runtime/collection/IdentityScopeMap;->access$find(Landroidx/compose/runtime/collection/IdentityScopeMap;Ljava/lang/Object;)I

    move-result v9

    if-ltz v9, :cond_b

    .line 82
    invoke-static {v2, v9}, Landroidx/compose/runtime/collection/IdentityScopeMap;->access$scopeSetAt(Landroidx/compose/runtime/collection/IdentityScopeMap;I)Landroidx/compose/runtime/collection/IdentityArraySet;

    move-result-object v9

    .line 109
    invoke-virtual {v9}, Landroidx/compose/runtime/collection/IdentityArraySet;->getValues()[Ljava/lang/Object;

    move-result-object v10

    .line 110
    invoke-virtual {v9}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    move-result v9

    const/4 v11, 0x0

    :goto_6
    if-ge v11, v9, :cond_b

    .line 112
    aget-object v13, v10, v11

    invoke-static {v13, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, Landroidx/compose/runtime/DerivedState;

    .line 547
    invoke-static {v13, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 548
    invoke-virtual {v3, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 549
    invoke-interface {v13}, Landroidx/compose/runtime/DerivedState;->getPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v15

    if-nez v15, :cond_8

    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->structuralEqualityPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v15

    .line 553
    :cond_8
    invoke-interface {v13}, Landroidx/compose/runtime/DerivedState;->getCurrentRecord()Landroidx/compose/runtime/DerivedState$Record;

    move-result-object v16

    move-object/from16 p1, v1

    invoke-interface/range {v16 .. v16}, Landroidx/compose/runtime/DerivedState$Record;->getCurrentValue()Ljava/lang/Object;

    move-result-object v1

    .line 552
    invoke-interface {v15, v1, v14}, Landroidx/compose/runtime/SnapshotMutationPolicy;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 80
    invoke-static {v4, v13}, Landroidx/compose/runtime/collection/IdentityScopeMap;->access$find(Landroidx/compose/runtime/collection/IdentityScopeMap;Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_a

    .line 82
    invoke-static {v4, v1}, Landroidx/compose/runtime/collection/IdentityScopeMap;->access$scopeSetAt(Landroidx/compose/runtime/collection/IdentityScopeMap;I)Landroidx/compose/runtime/collection/IdentityArraySet;

    move-result-object v1

    .line 109
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/IdentityArraySet;->getValues()[Ljava/lang/Object;

    move-result-object v13

    .line 110
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    move-result v1

    const/4 v14, 0x0

    :goto_7
    if-ge v14, v1, :cond_a

    .line 112
    aget-object v12, v13, v14

    invoke-static {v12, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 558
    invoke-virtual {v5, v12}, Landroidx/compose/runtime/collection/IdentityArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    const/4 v12, 0x1

    goto :goto_7

    :cond_9
    iget-object v1, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->statesToReread:Landroidx/compose/runtime/collection/MutableVector;

    .line 563
    invoke-virtual {v1, v13}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p1

    goto :goto_6

    :cond_b
    move-object/from16 p1, v1

    .line 80
    invoke-static {v4, v6}, Landroidx/compose/runtime/collection/IdentityScopeMap;->access$find(Landroidx/compose/runtime/collection/IdentityScopeMap;Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_c

    .line 82
    invoke-static {v4, v1}, Landroidx/compose/runtime/collection/IdentityScopeMap;->access$scopeSetAt(Landroidx/compose/runtime/collection/IdentityScopeMap;I)Landroidx/compose/runtime/collection/IdentityArraySet;

    move-result-object v1

    .line 109
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/IdentityArraySet;->getValues()[Ljava/lang/Object;

    move-result-object v6

    .line 110
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    move-result v1

    const/4 v9, 0x0

    :goto_8
    if-ge v9, v1, :cond_c

    .line 112
    aget-object v10, v6, v9

    invoke-static {v10, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 569
    invoke-virtual {v5, v10}, Landroidx/compose/runtime/collection/IdentityArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    const/4 v12, 0x1

    goto :goto_8

    :cond_c
    move-object/from16 v1, p1

    goto/16 :goto_5

    :cond_d
    iget-object v1, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->statesToReread:Landroidx/compose/runtime/collection/MutableVector;

    .line 574
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->isNotEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->statesToReread:Landroidx/compose/runtime/collection/MutableVector;

    .line 461
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v2

    if-lez v2, :cond_f

    .line 464
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v1

    const/4 v10, 0x0

    .line 466
    :cond_e
    aget-object v3, v1, v10

    check-cast v3, Landroidx/compose/runtime/DerivedState;

    .line 576
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->rereadDerivedState(Landroidx/compose/runtime/DerivedState;)V

    const/4 v3, 0x1

    add-int/2addr v10, v3

    if-lt v10, v2, :cond_e

    :cond_f
    iget-object v1, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->statesToReread:Landroidx/compose/runtime/collection/MutableVector;

    .line 578
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    :cond_10
    return v12
.end method

.method public final recordRead(Ljava/lang/Object;)V
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentScope:Ljava/lang/Object;

    .line 404
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentToken:I

    iget-object v2, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentScopeReads:Landroidx/compose/runtime/collection/IdentityArrayIntMap;

    if-nez v2, :cond_0

    .line 409
    new-instance v2, Landroidx/compose/runtime/collection/IdentityArrayIntMap;

    invoke-direct {v2}, Landroidx/compose/runtime/collection/IdentityArrayIntMap;-><init>()V

    iput-object v2, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentScopeReads:Landroidx/compose/runtime/collection/IdentityArrayIntMap;

    iget-object v3, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->scopeToValues:Landroidx/compose/runtime/collection/IdentityArrayMap;

    .line 411
    invoke-virtual {v3, v0, v2}, Landroidx/compose/runtime/collection/IdentityArrayMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 412
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 405
    :cond_0
    invoke-direct {p0, p1, v1, v0, v2}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->recordRead(Ljava/lang/Object;ILjava/lang/Object;Landroidx/compose/runtime/collection/IdentityArrayIntMap;)V

    return-void
.end method

.method public final removeScopeIf(Lkotlin/jvm/functions/Function1;)V
    .locals 13

    const-string v0, "predicate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->scopeToValues:Landroidx/compose/runtime/collection/IdentityArrayMap;

    .line 126
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/IdentityArrayMap;->getSize()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_3

    .line 128
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/IdentityArrayMap;->getKeys()[Ljava/lang/Object;

    move-result-object v5

    aget-object v5, v5, v3

    const-string v6, "null cannot be cast to non-null type Key of androidx.compose.runtime.collection.IdentityArrayMap"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/IdentityArrayMap;->getValues()[Ljava/lang/Object;

    move-result-object v6

    aget-object v6, v6, v3

    .line 131
    check-cast v6, Landroidx/compose/runtime/collection/IdentityArrayIntMap;

    .line 503
    invoke-interface {p1, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 172
    invoke-virtual {v6}, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->getKeys()[Ljava/lang/Object;

    move-result-object v8

    .line 173
    invoke-virtual {v6}, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->getValues()[I

    move-result-object v9

    .line 174
    invoke-virtual {v6}, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->getSize()I

    move-result v6

    move v10, v2

    :goto_1
    if-ge v10, v6, :cond_0

    .line 177
    aget-object v11, v8, v10

    const-string v12, "null cannot be cast to non-null type kotlin.Any"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    aget v12, v9, v10

    .line 506
    invoke-direct {p0, v5, v11}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->removeObservation(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 503
    :cond_0
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_2

    if-eq v4, v3, :cond_1

    .line 133
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/IdentityArrayMap;->getKeys()[Ljava/lang/Object;

    move-result-object v6

    aput-object v5, v6, v4

    .line 134
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/IdentityArrayMap;->getValues()[Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/IdentityArrayMap;->getValues()[Ljava/lang/Object;

    move-result-object v6

    aget-object v6, v6, v3

    aput-object v6, v5, v4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 139
    :cond_3
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/IdentityArrayMap;->getSize()I

    move-result p1

    if-le p1, v4, :cond_5

    .line 140
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/IdentityArrayMap;->getSize()I

    move-result p1

    move v1, v4

    :goto_2
    if-ge v1, p1, :cond_4

    .line 141
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/IdentityArrayMap;->getKeys()[Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 142
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/IdentityArrayMap;->getValues()[Ljava/lang/Object;

    move-result-object v2

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 144
    :cond_4
    invoke-static {v0, v4}, Landroidx/compose/runtime/collection/IdentityArrayMap;->access$setSize$p(Landroidx/compose/runtime/collection/IdentityArrayMap;I)V

    :cond_5
    return-void
.end method

.method public final rereadDerivedState(Landroidx/compose/runtime/DerivedState;)V
    .locals 8

    const-string v0, "derivedState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->scopeToValues:Landroidx/compose/runtime/collection/IdentityArrayMap;

    .line 586
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->currentSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/Snapshot;->getId()I

    move-result v1

    iget-object v2, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->valueToScopes:Landroidx/compose/runtime/collection/IdentityScopeMap;

    .line 80
    invoke-static {v2, p1}, Landroidx/compose/runtime/collection/IdentityScopeMap;->access$find(Landroidx/compose/runtime/collection/IdentityScopeMap;Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_1

    .line 82
    invoke-static {v2, v3}, Landroidx/compose/runtime/collection/IdentityScopeMap;->access$scopeSetAt(Landroidx/compose/runtime/collection/IdentityScopeMap;I)Landroidx/compose/runtime/collection/IdentityArraySet;

    move-result-object v2

    .line 109
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/IdentityArraySet;->getValues()[Ljava/lang/Object;

    move-result-object v3

    .line 110
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    .line 112
    aget-object v5, v3, v4

    const-string v6, "null cannot be cast to non-null type T of androidx.compose.runtime.collection.IdentityArraySet"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 593
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/collection/IdentityArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/runtime/collection/IdentityArrayIntMap;

    if-nez v6, :cond_0

    new-instance v6, Landroidx/compose/runtime/collection/IdentityArrayIntMap;

    invoke-direct {v6}, Landroidx/compose/runtime/collection/IdentityArrayIntMap;-><init>()V

    .line 594
    invoke-virtual {v0, v5, v6}, Landroidx/compose/runtime/collection/IdentityArrayMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 595
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 589
    :cond_0
    invoke-direct {p0, p1, v1, v5, v6}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->recordRead(Ljava/lang/Object;ILjava/lang/Object;Landroidx/compose/runtime/collection/IdentityArrayIntMap;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
