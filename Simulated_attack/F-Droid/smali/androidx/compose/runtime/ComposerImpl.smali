.class public final Landroidx/compose/runtime/ComposerImpl;
.super Ljava/lang/Object;
.source "Composer.kt"

# interfaces
.implements Landroidx/compose/runtime/Composer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/ComposerImpl$CompositionContextHolder;,
        Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;
    }
.end annotation


# instance fields
.field private final abandonSet:Ljava/util/Set;

.field private final applier:Landroidx/compose/runtime/Applier;

.field private changes:Ljava/util/List;

.field private childrenComposing:I

.field private final composition:Landroidx/compose/runtime/ControlledComposition;

.field private compositionToken:I

.field private compoundKeyHash:I

.field private deferredChanges:Ljava/util/List;

.field private final derivedStateObserver:Landroidx/compose/runtime/ComposerImpl$derivedStateObserver$1;

.field private downNodes:Landroidx/compose/runtime/Stack;

.field private final entersStack:Landroidx/compose/runtime/IntStack;

.field private forceRecomposeScopes:Z

.field private forciblyRecompose:Z

.field private groupNodeCount:I

.field private groupNodeCountStack:Landroidx/compose/runtime/IntStack;

.field private implicitRootStart:Z

.field private insertAnchor:Landroidx/compose/runtime/Anchor;

.field private final insertFixups:Ljava/util/List;

.field private insertTable:Landroidx/compose/runtime/SlotTable;

.field private final insertUpFixups:Landroidx/compose/runtime/Stack;

.field private inserting:Z

.field private final invalidateStack:Landroidx/compose/runtime/Stack;

.field private final invalidations:Ljava/util/List;

.field private isComposing:Z

.field private isDisposed:Z

.field private lateChanges:Ljava/util/List;

.field private nodeCountOverrides:[I

.field private nodeCountVirtualOverrides:Ljava/util/HashMap;

.field private nodeExpected:Z

.field private nodeIndex:I

.field private nodeIndexStack:Landroidx/compose/runtime/IntStack;

.field private final parentContext:Landroidx/compose/runtime/CompositionContext;

.field private parentProvider:Landroidx/compose/runtime/PersistentCompositionLocalMap;

.field private pending:Landroidx/compose/runtime/Pending;

.field private final pendingStack:Landroidx/compose/runtime/Stack;

.field private pendingUps:I

.field private previousCount:I

.field private previousMoveFrom:I

.field private previousMoveTo:I

.field private previousRemove:I

.field private providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

.field private final providerUpdates:Landroidx/compose/runtime/collection/IntMap;

.field private providersInvalid:Z

.field private final providersInvalidStack:Landroidx/compose/runtime/IntStack;

.field private reader:Landroidx/compose/runtime/SlotReader;

.field private reusing:Z

.field private reusingGroup:I

.field private final slotTable:Landroidx/compose/runtime/SlotTable;

.field private sourceInformationEnabled:Z

.field private startedGroup:Z

.field private final startedGroups:Landroidx/compose/runtime/IntStack;

.field private writer:Landroidx/compose/runtime/SlotWriter;

.field private writerHasAProvider:Z

.field private writersReaderDelta:I


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/CompositionContext;Landroidx/compose/runtime/SlotTable;Ljava/util/Set;Ljava/util/List;Ljava/util/List;Landroidx/compose/runtime/ControlledComposition;)V
    .locals 1

    const-string v0, "applier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parentContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "slotTable"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "abandonSet"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "changes"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lateChanges"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "composition"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/compose/runtime/Applier;

    iput-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    iput-object p3, p0, Landroidx/compose/runtime/ComposerImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    iput-object p4, p0, Landroidx/compose/runtime/ComposerImpl;->abandonSet:Ljava/util/Set;

    iput-object p5, p0, Landroidx/compose/runtime/ComposerImpl;->changes:Ljava/util/List;

    iput-object p6, p0, Landroidx/compose/runtime/ComposerImpl;->lateChanges:Ljava/util/List;

    iput-object p7, p0, Landroidx/compose/runtime/ComposerImpl;->composition:Landroidx/compose/runtime/ControlledComposition;

    .line 1240
    new-instance p1, Landroidx/compose/runtime/Stack;

    invoke-direct {p1}, Landroidx/compose/runtime/Stack;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->pendingStack:Landroidx/compose/runtime/Stack;

    .line 1243
    new-instance p1, Landroidx/compose/runtime/IntStack;

    invoke-direct {p1}, Landroidx/compose/runtime/IntStack;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndexStack:Landroidx/compose/runtime/IntStack;

    .line 1245
    new-instance p1, Landroidx/compose/runtime/IntStack;

    invoke-direct {p1}, Landroidx/compose/runtime/IntStack;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCountStack:Landroidx/compose/runtime/IntStack;

    .line 1251
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    .line 1252
    new-instance p1, Landroidx/compose/runtime/IntStack;

    invoke-direct {p1}, Landroidx/compose/runtime/IntStack;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->entersStack:Landroidx/compose/runtime/IntStack;

    .line 1254
    invoke-static {}, Landroidx/compose/runtime/internal/PersistentCompositionLocalMapKt;->persistentCompositionLocalHashMapOf()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->parentProvider:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 1255
    new-instance p1, Landroidx/compose/runtime/collection/IntMap;

    const/4 p2, 0x0

    const/4 p4, 0x0

    const/4 p5, 0x1

    invoke-direct {p1, p4, p5, p2}, Landroidx/compose/runtime/collection/IntMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->providerUpdates:Landroidx/compose/runtime/collection/IntMap;

    .line 1257
    new-instance p1, Landroidx/compose/runtime/IntStack;

    invoke-direct {p1}, Landroidx/compose/runtime/IntStack;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalidStack:Landroidx/compose/runtime/IntStack;

    const/4 p1, -0x1

    iput p1, p0, Landroidx/compose/runtime/ComposerImpl;->reusingGroup:I

    iput-boolean p5, p0, Landroidx/compose/runtime/ComposerImpl;->sourceInformationEnabled:Z

    .line 1263
    new-instance p2, Landroidx/compose/runtime/ComposerImpl$derivedStateObserver$1;

    invoke-direct {p2, p0}, Landroidx/compose/runtime/ComposerImpl$derivedStateObserver$1;-><init>(Landroidx/compose/runtime/ComposerImpl;)V

    iput-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->derivedStateObserver:Landroidx/compose/runtime/ComposerImpl$derivedStateObserver$1;

    .line 1273
    new-instance p2, Landroidx/compose/runtime/Stack;

    invoke-direct {p2}, Landroidx/compose/runtime/Stack;-><init>()V

    iput-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->invalidateStack:Landroidx/compose/runtime/Stack;

    .line 1283
    invoke-virtual {p3}, Landroidx/compose/runtime/SlotTable;->openReader()Landroidx/compose/runtime/SlotReader;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/compose/runtime/SlotReader;->close()V

    iput-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 1285
    new-instance p2, Landroidx/compose/runtime/SlotTable;

    invoke-direct {p2}, Landroidx/compose/runtime/SlotTable;-><init>()V

    iput-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->insertTable:Landroidx/compose/runtime/SlotTable;

    .line 1287
    invoke-virtual {p2}, Landroidx/compose/runtime/SlotTable;->openWriter()Landroidx/compose/runtime/SlotWriter;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/compose/runtime/SlotWriter;->close()V

    iput-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    iget-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->insertTable:Landroidx/compose/runtime/SlotTable;

    .line 146
    invoke-virtual {p2}, Landroidx/compose/runtime/SlotTable;->openReader()Landroidx/compose/runtime/SlotReader;

    move-result-object p2

    .line 1292
    :try_start_0
    invoke-virtual {p2, p4}, Landroidx/compose/runtime/SlotReader;->anchor(I)Landroidx/compose/runtime/Anchor;

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    invoke-virtual {p2}, Landroidx/compose/runtime/SlotReader;->close()V

    iput-object p3, p0, Landroidx/compose/runtime/ComposerImpl;->insertAnchor:Landroidx/compose/runtime/Anchor;

    .line 1293
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->insertFixups:Ljava/util/List;

    .line 3430
    new-instance p2, Landroidx/compose/runtime/Stack;

    invoke-direct {p2}, Landroidx/compose/runtime/Stack;-><init>()V

    iput-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->downNodes:Landroidx/compose/runtime/Stack;

    iput-boolean p5, p0, Landroidx/compose/runtime/ComposerImpl;->implicitRootStart:Z

    .line 3511
    new-instance p2, Landroidx/compose/runtime/IntStack;

    invoke-direct {p2}, Landroidx/compose/runtime/IntStack;-><init>()V

    iput-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->startedGroups:Landroidx/compose/runtime/IntStack;

    .line 3564
    new-instance p2, Landroidx/compose/runtime/Stack;

    invoke-direct {p2}, Landroidx/compose/runtime/Stack;-><init>()V

    iput-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->insertUpFixups:Landroidx/compose/runtime/Stack;

    iput p1, p0, Landroidx/compose/runtime/ComposerImpl;->previousRemove:I

    iput p1, p0, Landroidx/compose/runtime/ComposerImpl;->previousMoveFrom:I

    iput p1, p0, Landroidx/compose/runtime/ComposerImpl;->previousMoveTo:I

    return-void

    :catchall_0
    move-exception p1

    .line 151
    invoke-virtual {p2}, Landroidx/compose/runtime/SlotReader;->close()V

    throw p1
.end method

.method private final abortRoot()V
    .locals 1

    .line 1466
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->cleanUpCompose()V

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->pendingStack:Landroidx/compose/runtime/Stack;

    .line 1467
    invoke-virtual {v0}, Landroidx/compose/runtime/Stack;->clear()V

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndexStack:Landroidx/compose/runtime/IntStack;

    .line 1468
    invoke-virtual {v0}, Landroidx/compose/runtime/IntStack;->clear()V

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCountStack:Landroidx/compose/runtime/IntStack;

    .line 1469
    invoke-virtual {v0}, Landroidx/compose/runtime/IntStack;->clear()V

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->entersStack:Landroidx/compose/runtime/IntStack;

    .line 1470
    invoke-virtual {v0}, Landroidx/compose/runtime/IntStack;->clear()V

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalidStack:Landroidx/compose/runtime/IntStack;

    .line 1471
    invoke-virtual {v0}, Landroidx/compose/runtime/IntStack;->clear()V

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->providerUpdates:Landroidx/compose/runtime/collection/IntMap;

    .line 1472
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/IntMap;->clear()V

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 1473
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 1474
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->close()V

    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    .line 1476
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotWriter;->getClosed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    .line 1477
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotWriter;->close()V

    :cond_1
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->insertFixups:Ljava/util/List;

    .line 1479
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1480
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->createFreshInsertTable()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->childrenComposing:I

    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeExpected:Z

    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->forciblyRecompose:Z

    const/4 v0, -0x1

    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->reusingGroup:I

    return-void
.end method

.method public static final synthetic access$getChanges$p(Landroidx/compose/runtime/ComposerImpl;)Ljava/util/List;
    .locals 0

    .line 1213
    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->changes:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getChildrenComposing$p(Landroidx/compose/runtime/ComposerImpl;)I
    .locals 0

    .line 1213
    iget p0, p0, Landroidx/compose/runtime/ComposerImpl;->childrenComposing:I

    return p0
.end method

.method public static final synthetic access$getNodeCountOverrides$p(Landroidx/compose/runtime/ComposerImpl;)[I
    .locals 0

    .line 1213
    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeCountOverrides:[I

    return-object p0
.end method

.method public static final synthetic access$getParentContext$p(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/CompositionContext;
    .locals 0

    .line 1213
    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    return-object p0
.end method

.method public static final synthetic access$getReader$p(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/SlotReader;
    .locals 0

    .line 1213
    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    return-object p0
.end method

.method public static final synthetic access$getSlotTable$p(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/SlotTable;
    .locals 0

    .line 1213
    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    return-object p0
.end method

.method public static final synthetic access$insertMovableContentGuarded$positionToInsert(Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/Anchor;Landroidx/compose/runtime/Applier;)I
    .locals 0

    .line 1213
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/ComposerImpl;->insertMovableContentGuarded$positionToInsert(Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/Anchor;Landroidx/compose/runtime/Applier;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$insertMovableContentGuarded$positionToParentOf(Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/Applier;I)V
    .locals 0

    .line 1213
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/ComposerImpl;->insertMovableContentGuarded$positionToParentOf(Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/Applier;I)V

    return-void
.end method

.method public static final synthetic access$invokeMovableContentLambda(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/runtime/MovableContent;Landroidx/compose/runtime/PersistentCompositionLocalMap;Ljava/lang/Object;Z)V
    .locals 0

    .line 1213
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/runtime/ComposerImpl;->invokeMovableContentLambda(Landroidx/compose/runtime/MovableContent;Landroidx/compose/runtime/PersistentCompositionLocalMap;Ljava/lang/Object;Z)V

    return-void
.end method

.method public static final synthetic access$setChanges$p(Landroidx/compose/runtime/ComposerImpl;Ljava/util/List;)V
    .locals 0

    .line 1213
    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->changes:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$setChildrenComposing$p(Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 0

    .line 1213
    iput p1, p0, Landroidx/compose/runtime/ComposerImpl;->childrenComposing:I

    return-void
.end method

.method public static final synthetic access$setNodeCountOverrides$p(Landroidx/compose/runtime/ComposerImpl;[I)V
    .locals 0

    .line 1213
    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->nodeCountOverrides:[I

    return-void
.end method

.method public static final synthetic access$setReader$p(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/runtime/SlotReader;)V
    .locals 0

    .line 1213
    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    return-void
.end method

.method private final addRecomposeScope()V
    .locals 4

    .line 2830
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v0

    const-string v1, "null cannot be cast to non-null type androidx.compose.runtime.CompositionImpl"

    if-eqz v0, :cond_0

    .line 2831
    new-instance v0, Landroidx/compose/runtime/RecomposeScopeImpl;

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getComposition()Landroidx/compose/runtime/ControlledComposition;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroidx/compose/runtime/CompositionImpl;

    invoke-direct {v0, v2}, Landroidx/compose/runtime/RecomposeScopeImpl;-><init>(Landroidx/compose/runtime/RecomposeScopeOwner;)V

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->invalidateStack:Landroidx/compose/runtime/Stack;

    .line 2832
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/Stack;->push(Ljava/lang/Object;)Z

    .line 2833
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V

    iget v1, p0, Landroidx/compose/runtime/ComposerImpl;->compositionToken:I

    .line 2834
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/RecomposeScopeImpl;->start(I)V

    goto :goto_2

    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 2836
    invoke-virtual {v2}, Landroidx/compose/runtime/SlotReader;->getParent()I

    move-result v2

    invoke-static {v0, v2}, Landroidx/compose/runtime/ComposerKt;->access$removeLocation(Ljava/util/List;I)Landroidx/compose/runtime/Invalidation;

    move-result-object v0

    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 2837
    invoke-virtual {v2}, Landroidx/compose/runtime/SlotReader;->next()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 2838
    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2841
    new-instance v2, Landroidx/compose/runtime/RecomposeScopeImpl;

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getComposition()Landroidx/compose/runtime/ControlledComposition;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroidx/compose/runtime/CompositionImpl;

    invoke-direct {v2, v3}, Landroidx/compose/runtime/RecomposeScopeImpl;-><init>(Landroidx/compose/runtime/RecomposeScopeOwner;)V

    .line 2842
    invoke-virtual {p0, v2}, Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v1, "null cannot be cast to non-null type androidx.compose.runtime.RecomposeScopeImpl"

    .line 2844
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroidx/compose/runtime/RecomposeScopeImpl;

    :goto_0
    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 2845
    :goto_1
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->setRequiresRecompose(Z)V

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->invalidateStack:Landroidx/compose/runtime/Stack;

    .line 2846
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/Stack;->push(Ljava/lang/Object;)Z

    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->compositionToken:I

    .line 2847
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->start(I)V

    :goto_2
    return-void
.end method

.method private final cleanUpCompose()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->pending:Landroidx/compose/runtime/Pending;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->writersReaderDelta:I

    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeExpected:Z

    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->startedGroup:Z

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->startedGroups:Landroidx/compose/runtime/IntStack;

    .line 3880
    invoke-virtual {v0}, Landroidx/compose/runtime/IntStack;->clear()V

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->invalidateStack:Landroidx/compose/runtime/Stack;

    .line 3881
    invoke-virtual {v0}, Landroidx/compose/runtime/Stack;->clear()V

    .line 3882
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->clearUpdatedNodeCounts()V

    return-void
.end method

.method private final clearUpdatedNodeCounts()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeCountOverrides:[I

    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeCountVirtualOverrides:Ljava/util/HashMap;

    return-void
.end method

.method private final compoundKeyOf(III)I
    .locals 2

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 2671
    invoke-direct {p0, v0, p1}, Landroidx/compose/runtime/ComposerImpl;->groupCompoundKeyPart(Landroidx/compose/runtime/SlotReader;I)I

    move-result v0

    const v1, 0x78cc281

    if-ne v0, v1, :cond_1

    move p3, v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 2677
    invoke-virtual {v1, p1}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    move-result p1

    .line 2676
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/runtime/ComposerImpl;->compoundKeyOf(III)I

    move-result p1

    const/4 p2, 0x3

    .line 26
    invoke-static {p1, p2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result p1

    xor-int/2addr p1, v0

    move p3, p1

    :goto_0
    return p3
.end method

.method private final createFreshInsertTable()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    .line 2100
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotWriter;->getClosed()Z

    move-result v0

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->runtimeCheck(Z)V

    .line 2101
    new-instance v0, Landroidx/compose/runtime/SlotTable;

    invoke-direct {v0}, Landroidx/compose/runtime/SlotTable;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->insertTable:Landroidx/compose/runtime/SlotTable;

    .line 2102
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->openWriter()Landroidx/compose/runtime/SlotWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotWriter;->close()V

    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    return-void
.end method

.method private final currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 1927
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getParent()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope(I)Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v0

    return-object v0
.end method

.method private final currentCompositionLocalScope(I)Landroidx/compose/runtime/PersistentCompositionLocalMap;
    .locals 5

    .line 1937
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v0

    const-string v1, "null cannot be cast to non-null type androidx.compose.runtime.PersistentCompositionLocalMap"

    const/16 v2, 0xca

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->writerHasAProvider:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    .line 1938
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotWriter;->getParent()I

    move-result v0

    :goto_0
    if-lez v0, :cond_1

    iget-object v3, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    .line 1940
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/SlotWriter;->groupKey(I)I

    move-result v3

    if-ne v3, v2, :cond_0

    iget-object v3, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    .line 1941
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/SlotWriter;->groupObjectKey(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->getCompositionLocalMap()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    .line 1944
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/SlotWriter;->groupAux(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/compose/runtime/PersistentCompositionLocalMap;

    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    return-object p1

    :cond_0
    iget-object v3, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    .line 1948
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/SlotWriter;->parent(I)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 1951
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getSize()I

    move-result v0

    if-lez v0, :cond_4

    :goto_1
    if-lez p1, :cond_4

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 1954
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotReader;->groupKey(I)I

    move-result v0

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 1955
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotReader;->groupObjectKey(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->getCompositionLocalMap()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->providerUpdates:Landroidx/compose/runtime/collection/IntMap;

    .line 1958
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/collection/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/PersistentCompositionLocalMap;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 1959
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotReader;->groupAux(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Landroidx/compose/runtime/PersistentCompositionLocalMap;

    :cond_2
    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    return-object v0

    :cond_3
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 1963
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    move-result p1

    goto :goto_1

    :cond_4
    iget-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->parentProvider:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    return-object p1
.end method

.method private final doCompose(Landroidx/compose/runtime/collection/IdentityArrayMap;Lkotlin/jvm/functions/Function2;)V
    .locals 10

    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_7

    const-string v0, "Compose:recompose"

    .line 46
    sget-object v2, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/Trace;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 3315
    :try_start_0
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->currentSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/Snapshot;->getId()I

    move-result v2

    iput v2, p0, Landroidx/compose/runtime/ComposerImpl;->compositionToken:I

    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->providerUpdates:Landroidx/compose/runtime/collection/IntMap;

    .line 3316
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/IntMap;->clear()V

    .line 153
    invoke-virtual {p1}, Landroidx/compose/runtime/collection/IdentityArrayMap;->getSize()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    .line 155
    invoke-virtual {p1}, Landroidx/compose/runtime/collection/IdentityArrayMap;->getKeys()[Ljava/lang/Object;

    move-result-object v5

    aget-object v5, v5, v4

    const-string v6, "null cannot be cast to non-null type Key of androidx.compose.runtime.collection.IdentityArrayMap"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/compose/runtime/collection/IdentityArrayMap;->getValues()[Ljava/lang/Object;

    move-result-object v6

    aget-object v6, v6, v4

    check-cast v6, Landroidx/compose/runtime/collection/IdentityArraySet;

    check-cast v5, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 3318
    invoke-virtual {v5}, Landroidx/compose/runtime/RecomposeScopeImpl;->getAnchor()Landroidx/compose/runtime/Anchor;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroidx/compose/runtime/Anchor;->getLocation$runtime_release()I

    move-result v7

    iget-object v8, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    .line 3319
    new-instance v9, Landroidx/compose/runtime/Invalidation;

    invoke-direct {v9, v5, v7, v6}, Landroidx/compose/runtime/Invalidation;-><init>(Landroidx/compose/runtime/RecomposeScopeImpl;ILandroidx/compose/runtime/collection/IdentityArraySet;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    .line 50
    :cond_0
    sget-object p1, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/Trace;->endSection(Ljava/lang/Object;)V

    return-void

    :cond_1
    :try_start_1
    iget-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    .line 1002
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_2

    new-instance v2, Landroidx/compose/runtime/ComposerImpl$doCompose$lambda$38$$inlined$sortBy$1;

    invoke-direct {v2}, Landroidx/compose/runtime/ComposerImpl$doCompose$lambda$38$$inlined$sortBy$1;-><init>()V

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    iput v3, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    iput-boolean v1, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3326
    :try_start_2
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->startRoot()V

    .line 3330
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->nextSlot()Ljava/lang/Object;

    move-result-object p1

    if-eq p1, p2, :cond_3

    if-eqz p2, :cond_3

    .line 3332
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :cond_3
    :goto_1
    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->derivedStateObserver:Landroidx/compose/runtime/ComposerImpl$derivedStateObserver$1;

    .line 377
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateObservers()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 379
    :try_start_3
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    const/16 v2, 0xc8

    if-eqz p2, :cond_4

    .line 3339
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->getInvocation()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Landroidx/compose/runtime/ComposerImpl;->startGroup(ILjava/lang/Object;)V

    .line 3340
    invoke-static {p0, p2}, Landroidx/compose/runtime/ActualJvm_jvmKt;->invokeComposable(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function2;)V

    .line 3341
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->endGroup()V

    goto :goto_2

    :catchall_2
    move-exception p1

    goto :goto_3

    :cond_4
    iget-boolean p2, p0, Landroidx/compose/runtime/ComposerImpl;->forciblyRecompose:Z

    if-nez p2, :cond_5

    iget-boolean p2, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z

    if-eqz p2, :cond_6

    :cond_5
    if-eqz p1, :cond_6

    sget-object p2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 3345
    invoke-virtual {p2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 3347
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->getInvocation()Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, v2, p2}, Landroidx/compose/runtime/ComposerImpl;->startGroup(ILjava/lang/Object;)V

    const/4 p2, 0x2

    .line 3349
    invoke-static {p1, p2}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/jvm/functions/Function2;

    invoke-static {p0, p1}, Landroidx/compose/runtime/ActualJvm_jvmKt;->invokeComposable(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function2;)V

    .line 3350
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->endGroup()V

    goto :goto_2

    .line 3352
    :cond_6
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->skipCurrentGroup()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 48
    :goto_2
    :try_start_4
    invoke-virtual {v4}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result p1

    sub-int/2addr p1, v1

    .line 382
    invoke-virtual {v4, p1}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    .line 3355
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->endRoot()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iput-boolean v3, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    iget-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    .line 3359
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 3362
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 50
    sget-object p1, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/Trace;->endSection(Ljava/lang/Object;)V

    return-void

    .line 48
    :goto_3
    :try_start_6
    invoke-virtual {v4}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result p2

    sub-int/2addr p2, v1

    .line 382
    invoke-virtual {v4, p2}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_4
    :try_start_7
    iput-boolean v3, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    iget-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    .line 3359
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 3360
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->abortRoot()V

    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 50
    :goto_5
    sget-object p2, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/Trace;->endSection(Ljava/lang/Object;)V

    throw p1

    :cond_7
    const-string p1, "Reentrant composition is not supported"

    .line 4550
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method private final doRecordDownsFor(II)V
    .locals 1

    if-lez p1, :cond_0

    if-eq p1, p2, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 2659
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    move-result v0

    invoke-direct {p0, v0, p2}, Landroidx/compose/runtime/ComposerImpl;->doRecordDownsFor(II)V

    iget-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 2660
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/SlotReader;->isNode(I)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-direct {p0, p2, p1}, Landroidx/compose/runtime/ComposerImpl;->nodeAt(Landroidx/compose/runtime/SlotReader;I)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->recordDown(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private final end(Z)V
    .locals 18

    move-object/from16 v0, p0

    .line 2263
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    .line 2264
    invoke-virtual {v1}, Landroidx/compose/runtime/SlotWriter;->getParent()I

    move-result v1

    iget-object v2, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    .line 2266
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/SlotWriter;->groupKey(I)I

    move-result v2

    iget-object v3, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    .line 2267
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/SlotWriter;->groupObjectKey(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    .line 2268
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/SlotWriter;->groupAux(I)Ljava/lang/Object;

    move-result-object v1

    .line 2265
    invoke-direct {v0, v2, v3, v1}, Landroidx/compose/runtime/ComposerImpl;->updateCompoundKeyWhenWeExitGroup(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v1, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 2271
    invoke-virtual {v1}, Landroidx/compose/runtime/SlotReader;->getParent()I

    move-result v1

    iget-object v2, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 2273
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/SlotReader;->groupKey(I)I

    move-result v2

    iget-object v3, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 2274
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/SlotReader;->groupObjectKey(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 2275
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/SlotReader;->groupAux(I)Ljava/lang/Object;

    move-result-object v1

    .line 2272
    invoke-direct {v0, v2, v3, v1}, Landroidx/compose/runtime/ComposerImpl;->updateCompoundKeyWhenWeExitGroup(ILjava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    iget v1, v0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    iget-object v2, v0, Landroidx/compose/runtime/ComposerImpl;->pending:Landroidx/compose/runtime/Pending;

    const/4 v3, 0x0

    if-eqz v2, :cond_7

    .line 2280
    invoke-virtual {v2}, Landroidx/compose/runtime/Pending;->getKeyInfos()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_7

    .line 2282
    invoke-virtual {v2}, Landroidx/compose/runtime/Pending;->getKeyInfos()Ljava/util/List;

    move-result-object v4

    .line 2285
    invoke-virtual {v2}, Landroidx/compose/runtime/Pending;->getUsed()Ljava/util/List;

    move-result-object v5

    .line 2289
    invoke-static {v5}, Landroidx/compose/runtime/snapshots/ListUtilsKt;->fastToSet(Ljava/util/List;)Ljava/util/Set;

    move-result-object v6

    .line 2291
    new-instance v7, Ljava/util/LinkedHashSet;

    invoke-direct {v7}, Ljava/util/LinkedHashSet;-><init>()V

    .line 2293
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    .line 2295
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    move v10, v3

    move v11, v10

    move v12, v11

    :goto_1
    if-ge v10, v9, :cond_6

    .line 2300
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/compose/runtime/KeyInfo;

    .line 2301
    invoke-interface {v6, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 2304
    invoke-virtual {v2, v13}, Landroidx/compose/runtime/Pending;->nodePositionOf(Landroidx/compose/runtime/KeyInfo;)I

    move-result v14

    .line 2305
    invoke-virtual {v2}, Landroidx/compose/runtime/Pending;->getStartIndex()I

    move-result v15

    add-int/2addr v14, v15

    invoke-virtual {v13}, Landroidx/compose/runtime/KeyInfo;->getNodes()I

    move-result v15

    invoke-direct {v0, v14, v15}, Landroidx/compose/runtime/ComposerImpl;->recordRemoveNode(II)V

    .line 2306
    invoke-virtual {v13}, Landroidx/compose/runtime/KeyInfo;->getLocation()I

    move-result v14

    invoke-virtual {v2, v14, v3}, Landroidx/compose/runtime/Pending;->updateNodeCount(II)Z

    .line 2307
    invoke-virtual {v13}, Landroidx/compose/runtime/KeyInfo;->getLocation()I

    move-result v14

    invoke-direct {v0, v14}, Landroidx/compose/runtime/ComposerImpl;->recordReaderMoving(I)V

    iget-object v14, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 2308
    invoke-virtual {v13}, Landroidx/compose/runtime/KeyInfo;->getLocation()I

    move-result v15

    invoke-virtual {v14, v15}, Landroidx/compose/runtime/SlotReader;->reposition(I)V

    .line 2309
    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->recordDelete()V

    iget-object v14, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 2310
    invoke-virtual {v14}, Landroidx/compose/runtime/SlotReader;->skipGroup()I

    iget-object v14, v0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    .line 2316
    invoke-virtual {v13}, Landroidx/compose/runtime/KeyInfo;->getLocation()I

    move-result v15

    .line 2317
    invoke-virtual {v13}, Landroidx/compose/runtime/KeyInfo;->getLocation()I

    move-result v16

    iget-object v3, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v13}, Landroidx/compose/runtime/KeyInfo;->getLocation()I

    move-result v13

    invoke-virtual {v3, v13}, Landroidx/compose/runtime/SlotReader;->groupSize(I)I

    move-result v3

    add-int v3, v16, v3

    .line 2315
    invoke-static {v14, v15, v3}, Landroidx/compose/runtime/ComposerKt;->access$removeRange(Ljava/util/List;II)V

    :goto_2
    add-int/lit8 v10, v10, 0x1

    :cond_1
    :goto_3
    const/4 v3, 0x0

    goto :goto_1

    .line 2323
    :cond_2
    invoke-interface {v7, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    if-ge v11, v8, :cond_1

    .line 2332
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/KeyInfo;

    if-eq v3, v13, :cond_5

    .line 2334
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/Pending;->nodePositionOf(Landroidx/compose/runtime/KeyInfo;)I

    move-result v13

    .line 2335
    invoke-interface {v7, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-eq v13, v12, :cond_4

    .line 2337
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/Pending;->updatedNodeCountOf(Landroidx/compose/runtime/KeyInfo;)I

    move-result v14

    .line 2339
    invoke-virtual {v2}, Landroidx/compose/runtime/Pending;->getStartIndex()I

    move-result v15

    add-int/2addr v15, v13

    .line 2340
    invoke-virtual {v2}, Landroidx/compose/runtime/Pending;->getStartIndex()I

    move-result v16

    move-object/from16 v17, v5

    add-int v5, v12, v16

    .line 2338
    invoke-direct {v0, v15, v5, v14}, Landroidx/compose/runtime/ComposerImpl;->recordMoveNode(III)V

    .line 2342
    invoke-virtual {v2, v13, v12, v14}, Landroidx/compose/runtime/Pending;->registerMoveNode(III)V

    goto :goto_4

    :cond_4
    move-object/from16 v17, v5

    goto :goto_4

    :cond_5
    move-object/from16 v17, v5

    add-int/lit8 v10, v10, 0x1

    :goto_4
    add-int/lit8 v11, v11, 0x1

    .line 2349
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/Pending;->updatedNodeCountOf(Landroidx/compose/runtime/KeyInfo;)I

    move-result v3

    add-int/2addr v12, v3

    move-object/from16 v5, v17

    goto :goto_3

    .line 2355
    :cond_6
    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->realizeMovement()V

    .line 2359
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_7

    iget-object v2, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 2360
    invoke-virtual {v2}, Landroidx/compose/runtime/SlotReader;->getGroupEnd()I

    move-result v2

    invoke-direct {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->recordReaderMoving(I)V

    iget-object v2, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 2361
    invoke-virtual {v2}, Landroidx/compose/runtime/SlotReader;->skipToGroupEnd()V

    :cond_7
    iget v2, v0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    :goto_5
    iget-object v3, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 2368
    invoke-virtual {v3}, Landroidx/compose/runtime/SlotReader;->isGroupEnd()Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 2369
    invoke-virtual {v3}, Landroidx/compose/runtime/SlotReader;->getCurrentGroup()I

    move-result v3

    .line 2370
    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->recordDelete()V

    iget-object v4, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 2371
    invoke-virtual {v4}, Landroidx/compose/runtime/SlotReader;->skipGroup()I

    move-result v4

    .line 2372
    invoke-direct {v0, v2, v4}, Landroidx/compose/runtime/ComposerImpl;->recordRemoveNode(II)V

    iget-object v4, v0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    iget-object v5, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 2373
    invoke-virtual {v5}, Landroidx/compose/runtime/SlotReader;->getCurrentGroup()I

    move-result v5

    invoke-static {v4, v3, v5}, Landroidx/compose/runtime/ComposerKt;->access$removeRange(Ljava/util/List;II)V

    goto :goto_5

    .line 2376
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_a

    if-eqz p1, :cond_9

    .line 2379
    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->registerInsertUpFixup()V

    move v1, v3

    :cond_9
    iget-object v3, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 2382
    invoke-virtual {v3}, Landroidx/compose/runtime/SlotReader;->endEmpty()V

    iget-object v3, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    .line 2383
    invoke-virtual {v3}, Landroidx/compose/runtime/SlotWriter;->getParent()I

    move-result v3

    iget-object v4, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    .line 2384
    invoke-virtual {v4}, Landroidx/compose/runtime/SlotWriter;->endGroup()I

    iget-object v4, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 2385
    invoke-virtual {v4}, Landroidx/compose/runtime/SlotReader;->getInEmpty()Z

    move-result v4

    if-nez v4, :cond_e

    .line 2386
    invoke-direct {v0, v3}, Landroidx/compose/runtime/ComposerImpl;->insertedGroupVirtualIndex(I)I

    move-result v3

    iget-object v4, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    .line 2387
    invoke-virtual {v4}, Landroidx/compose/runtime/SlotWriter;->endInsert()V

    iget-object v4, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    .line 2388
    invoke-virtual {v4}, Landroidx/compose/runtime/SlotWriter;->close()V

    iget-object v4, v0, Landroidx/compose/runtime/ComposerImpl;->insertAnchor:Landroidx/compose/runtime/Anchor;

    .line 2389
    invoke-direct {v0, v4}, Landroidx/compose/runtime/ComposerImpl;->recordInsert(Landroidx/compose/runtime/Anchor;)V

    const/4 v4, 0x0

    iput-boolean v4, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    iget-object v5, v0, Landroidx/compose/runtime/ComposerImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    .line 2391
    invoke-virtual {v5}, Landroidx/compose/runtime/SlotTable;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_e

    .line 2392
    invoke-direct {v0, v3, v4}, Landroidx/compose/runtime/ComposerImpl;->updateNodeCount(II)V

    .line 2393
    invoke-direct {v0, v3, v1}, Landroidx/compose/runtime/ComposerImpl;->updateNodeCountOverrides(II)V

    goto :goto_6

    :cond_a
    if-eqz p1, :cond_b

    .line 2397
    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->recordUp()V

    .line 2398
    :cond_b
    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->recordEndGroup()V

    iget-object v4, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 2399
    invoke-virtual {v4}, Landroidx/compose/runtime/SlotReader;->getParent()I

    move-result v4

    .line 2400
    invoke-direct {v0, v4}, Landroidx/compose/runtime/ComposerImpl;->updatedNodeCount(I)I

    move-result v5

    if-eq v1, v5, :cond_c

    .line 2402
    invoke-direct {v0, v4, v1}, Landroidx/compose/runtime/ComposerImpl;->updateNodeCountOverrides(II)V

    :cond_c
    if-eqz p1, :cond_d

    move v1, v3

    :cond_d
    iget-object v3, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 2407
    invoke-virtual {v3}, Landroidx/compose/runtime/SlotReader;->endGroup()V

    .line 2408
    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->realizeMovement()V

    .line 2411
    :cond_e
    :goto_6
    invoke-direct {v0, v1, v2}, Landroidx/compose/runtime/ComposerImpl;->exitGroup(IZ)V

    return-void
.end method

.method private final endGroup()V
    .locals 1

    const/4 v0, 0x0

    .line 1573
    invoke-direct {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-void
.end method

.method private final endRoot()V
    .locals 1

    .line 1452
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->endGroup()V

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    .line 1453
    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionContext;->doneComposing$runtime_release()V

    .line 1454
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->endGroup()V

    .line 1455
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->recordEndRoot()V

    .line 1456
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->finalizeCompose()V

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 1457
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->close()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->forciblyRecompose:Z

    return-void
.end method

.method private final ensureWriter()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    .line 2090
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotWriter;->getClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->insertTable:Landroidx/compose/runtime/SlotTable;

    .line 2091
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->openWriter()Landroidx/compose/runtime/SlotWriter;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    .line 2093
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotWriter;->skipToGroupEnd()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->writerHasAProvider:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    :cond_0
    return-void
.end method

.method private final enterGroup(ZLandroidx/compose/runtime/Pending;)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->pendingStack:Landroidx/compose/runtime/Stack;

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->pending:Landroidx/compose/runtime/Pending;

    .line 2236
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/Stack;->push(Ljava/lang/Object;)Z

    iput-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->pending:Landroidx/compose/runtime/Pending;

    iget-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndexStack:Landroidx/compose/runtime/IntStack;

    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    .line 2238
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/IntStack;->push(I)V

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iput p2, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    :cond_0
    iget-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCountStack:Landroidx/compose/runtime/IntStack;

    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    .line 2240
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/IntStack;->push(I)V

    iput p2, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    return-void
.end method

.method private final exitGroup(IZ)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->pendingStack:Landroidx/compose/runtime/Stack;

    .line 2249
    invoke-virtual {v0}, Landroidx/compose/runtime/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/Pending;

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 2251
    invoke-virtual {v0}, Landroidx/compose/runtime/Pending;->getGroupIndex()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {v0, p2}, Landroidx/compose/runtime/Pending;->setGroupIndex(I)V

    :cond_0
    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->pending:Landroidx/compose/runtime/Pending;

    iget-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndexStack:Landroidx/compose/runtime/IntStack;

    .line 2254
    invoke-virtual {p2}, Landroidx/compose/runtime/IntStack;->pop()I

    move-result p2

    add-int/2addr p2, p1

    iput p2, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    iget-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCountStack:Landroidx/compose/runtime/IntStack;

    .line 2255
    invoke-virtual {p2}, Landroidx/compose/runtime/IntStack;->pop()I

    move-result p2

    add-int/2addr p2, p1

    iput p2, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    return-void
.end method

.method private final finalizeCompose()V
    .locals 1

    .line 3866
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->realizeUps()V

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->pendingStack:Landroidx/compose/runtime/Stack;

    .line 3867
    invoke-virtual {v0}, Landroidx/compose/runtime/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->startedGroups:Landroidx/compose/runtime/IntStack;

    .line 3868
    invoke-virtual {v0}, Landroidx/compose/runtime/IntStack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3869
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->cleanUpCompose()V

    return-void

    :cond_0
    const-string v0, "Missed recording an endGroup()"

    .line 4550
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :cond_1
    const-string v0, "Start/end imbalance"

    .line 4550
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method private final getNode(Landroidx/compose/runtime/SlotReader;)Ljava/lang/Object;
    .locals 1

    .line 3367
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotReader;->getParent()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/SlotReader;->node(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final groupCompoundKeyPart(Landroidx/compose/runtime/SlotReader;I)I
    .locals 2

    .line 2686
    invoke-virtual {p1, p2}, Landroidx/compose/runtime/SlotReader;->hasObjectKey(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2687
    invoke-virtual {p1, p2}, Landroidx/compose/runtime/SlotReader;->groupObjectKey(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2689
    instance-of p2, p1, Ljava/lang/Enum;

    if-eqz p2, :cond_0

    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    goto :goto_1

    .line 2691
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    .line 2694
    :cond_2
    invoke-virtual {p1, p2}, Landroidx/compose/runtime/SlotReader;->groupKey(I)I

    move-result v0

    const/16 v1, 0xcf

    if-ne v0, v1, :cond_4

    .line 2695
    invoke-virtual {p1, p2}, Landroidx/compose/runtime/SlotReader;->groupAux(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    sget-object p2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 2696
    invoke-virtual {p2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :cond_4
    :goto_0
    move p1, v0

    :goto_1
    return p1
.end method

.method private final insertMovableContentGuarded(Ljava/util/List;)V
    .locals 19

    move-object/from16 v9, p0

    iget-object v0, v9, Landroidx/compose/runtime/ComposerImpl;->lateChanges:Ljava/util/List;

    .line 3187
    invoke-static/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->access$getChanges$p(Landroidx/compose/runtime/ComposerImpl;)Ljava/util/List;

    move-result-object v10

    .line 3189
    :try_start_0
    invoke-static {v9, v0}, Landroidx/compose/runtime/ComposerImpl;->access$setChanges$p(Landroidx/compose/runtime/ComposerImpl;Ljava/util/List;)V

    .line 3033
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->access$getResetSlotsInstance$p()Lkotlin/jvm/functions/Function3;

    move-result-object v0

    invoke-direct {v9, v0}, Landroidx/compose/runtime/ComposerImpl;->record(Lkotlin/jvm/functions/Function3;)V

    .line 34
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v0, :cond_5

    move-object/from16 v13, p1

    .line 35
    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 36
    check-cast v1, Lkotlin/Pair;

    .line 3034
    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/MovableContentStateReference;

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/MovableContentStateReference;

    .line 3035
    invoke-virtual {v2}, Landroidx/compose/runtime/MovableContentStateReference;->getAnchor$runtime_release()Landroidx/compose/runtime/Anchor;

    move-result-object v3

    .line 3036
    invoke-virtual {v2}, Landroidx/compose/runtime/MovableContentStateReference;->getSlotTable$runtime_release()Landroidx/compose/runtime/SlotTable;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroidx/compose/runtime/SlotTable;->anchorIndex(Landroidx/compose/runtime/Anchor;)I

    move-result v4

    .line 3037
    new-instance v14, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v14}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 3038
    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->realizeUps()V

    .line 3040
    new-instance v5, Landroidx/compose/runtime/ComposerImpl$insertMovableContentGuarded$1$1$1;

    invoke-direct {v5, v14, v3}, Landroidx/compose/runtime/ComposerImpl$insertMovableContentGuarded$1$1$1;-><init>(Lkotlin/jvm/internal/Ref$IntRef;Landroidx/compose/runtime/Anchor;)V

    invoke-direct {v9, v5}, Landroidx/compose/runtime/ComposerImpl;->record(Lkotlin/jvm/functions/Function3;)V

    if-nez v1, :cond_2

    .line 3046
    invoke-virtual {v2}, Landroidx/compose/runtime/MovableContentStateReference;->getSlotTable$runtime_release()Landroidx/compose/runtime/SlotTable;

    move-result-object v1

    iget-object v3, v9, Landroidx/compose/runtime/ComposerImpl;->insertTable:Landroidx/compose/runtime/SlotTable;

    .line 3047
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3058
    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->createFreshInsertTable()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    .line 3060
    :cond_0
    :goto_1
    invoke-virtual {v2}, Landroidx/compose/runtime/MovableContentStateReference;->getSlotTable$runtime_release()Landroidx/compose/runtime/SlotTable;

    move-result-object v1

    .line 146
    invoke-virtual {v1}, Landroidx/compose/runtime/SlotTable;->openReader()Landroidx/compose/runtime/SlotReader;

    move-result-object v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3061
    :try_start_1
    invoke-virtual {v15, v4}, Landroidx/compose/runtime/SlotReader;->reposition(I)V

    iput v4, v9, Landroidx/compose/runtime/ComposerImpl;->writersReaderDelta:I

    .line 3063
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 3064
    new-instance v7, Landroidx/compose/runtime/ComposerImpl$insertMovableContentGuarded$1$1$2$1;

    invoke-direct {v7, v9, v8, v15, v2}, Landroidx/compose/runtime/ComposerImpl$insertMovableContentGuarded$1$1$2$1;-><init>(Landroidx/compose/runtime/ComposerImpl;Ljava/util/List;Landroidx/compose/runtime/SlotReader;Landroidx/compose/runtime/MovableContentStateReference;)V

    const/16 v16, 0xf

    const/16 v17, 0x0

    move-object/from16 v1, p0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move/from16 v7, v16

    move-object/from16 v16, v8

    move-object/from16 v8, v17

    invoke-static/range {v1 .. v8}, Landroidx/compose/runtime/ComposerImpl;->recomposeMovableContent$default(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/ControlledComposition;Ljava/lang/Integer;Ljava/util/List;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Object;

    .line 3076
    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 3077
    new-instance v1, Landroidx/compose/runtime/ComposerImpl$insertMovableContentGuarded$1$1$2$2;

    move-object/from16 v2, v16

    invoke-direct {v1, v14, v2}, Landroidx/compose/runtime/ComposerImpl$insertMovableContentGuarded$1$1$2$2;-><init>(Lkotlin/jvm/internal/Ref$IntRef;Ljava/util/List;)V

    invoke-direct {v9, v1}, Landroidx/compose/runtime/ComposerImpl;->record(Lkotlin/jvm/functions/Function3;)V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 3085
    :cond_1
    :goto_2
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 151
    :try_start_2
    invoke-virtual {v15}, Landroidx/compose/runtime/SlotReader;->close()V

    goto/16 :goto_5

    :goto_3
    invoke-virtual {v15}, Landroidx/compose/runtime/SlotReader;->close()V

    throw v0

    :cond_2
    iget-object v4, v9, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    .line 3090
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/CompositionContext;->movableContentStateResolve$runtime_release(Landroidx/compose/runtime/MovableContentStateReference;)Landroidx/compose/runtime/MovableContentState;

    move-result-object v4

    .line 3091
    invoke-virtual {v1}, Landroidx/compose/runtime/MovableContentStateReference;->getSlotTable$runtime_release()Landroidx/compose/runtime/SlotTable;

    move-result-object v5

    .line 3092
    invoke-virtual {v1}, Landroidx/compose/runtime/MovableContentStateReference;->getAnchor$runtime_release()Landroidx/compose/runtime/Anchor;

    move-result-object v6

    .line 3093
    invoke-static {v5, v6}, Landroidx/compose/runtime/ComposerKt;->access$collectNodesFrom(Landroidx/compose/runtime/SlotTable;Landroidx/compose/runtime/Anchor;)Ljava/util/List;

    move-result-object v7

    .line 3096
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_3

    .line 3097
    new-instance v8, Landroidx/compose/runtime/ComposerImpl$insertMovableContentGuarded$1$1$3;

    invoke-direct {v8, v14, v7}, Landroidx/compose/runtime/ComposerImpl$insertMovableContentGuarded$1$1$3;-><init>(Lkotlin/jvm/internal/Ref$IntRef;Ljava/util/List;)V

    invoke-direct {v9, v8}, Landroidx/compose/runtime/ComposerImpl;->record(Lkotlin/jvm/functions/Function3;)V

    .line 3106
    invoke-virtual {v2}, Landroidx/compose/runtime/MovableContentStateReference;->getSlotTable$runtime_release()Landroidx/compose/runtime/SlotTable;

    move-result-object v8

    iget-object v15, v9, Landroidx/compose/runtime/ComposerImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    invoke-static {v8, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, v9, Landroidx/compose/runtime/ComposerImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    .line 3111
    invoke-virtual {v8, v3}, Landroidx/compose/runtime/SlotTable;->anchorIndex(Landroidx/compose/runtime/Anchor;)I

    move-result v3

    .line 3114
    invoke-direct {v9, v3}, Landroidx/compose/runtime/ComposerImpl;->updatedNodeCount(I)I

    move-result v8

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/2addr v8, v7

    .line 3112
    invoke-direct {v9, v3, v8}, Landroidx/compose/runtime/ComposerImpl;->updateNodeCount(II)V

    .line 3120
    :cond_3
    new-instance v3, Landroidx/compose/runtime/ComposerImpl$insertMovableContentGuarded$1$1$4;

    invoke-direct {v3, v4, v9, v1, v2}, Landroidx/compose/runtime/ComposerImpl$insertMovableContentGuarded$1$1$4;-><init>(Landroidx/compose/runtime/MovableContentState;Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/runtime/MovableContentStateReference;Landroidx/compose/runtime/MovableContentStateReference;)V

    invoke-direct {v9, v3}, Landroidx/compose/runtime/ComposerImpl;->record(Lkotlin/jvm/functions/Function3;)V

    .line 146
    invoke-virtual {v5}, Landroidx/compose/runtime/SlotTable;->openReader()Landroidx/compose/runtime/SlotReader;

    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3197
    :try_start_3
    invoke-static/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->access$getReader$p(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/SlotReader;

    move-result-object v8

    .line 3198
    invoke-static/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->access$getNodeCountOverrides$p(Landroidx/compose/runtime/ComposerImpl;)[I

    move-result-object v15

    const/4 v3, 0x0

    .line 3199
    invoke-static {v9, v3}, Landroidx/compose/runtime/ComposerImpl;->access$setNodeCountOverrides$p(Landroidx/compose/runtime/ComposerImpl;[I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 3201
    :try_start_4
    invoke-static {v9, v7}, Landroidx/compose/runtime/ComposerImpl;->access$setReader$p(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/runtime/SlotReader;)V

    .line 3142
    invoke-virtual {v5, v6}, Landroidx/compose/runtime/SlotTable;->anchorIndex(Landroidx/compose/runtime/Anchor;)I

    move-result v3

    .line 3143
    invoke-virtual {v7, v3}, Landroidx/compose/runtime/SlotReader;->reposition(I)V

    iput v3, v9, Landroidx/compose/runtime/ComposerImpl;->writersReaderDelta:I

    .line 3145
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3187
    invoke-static/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->access$getChanges$p(Landroidx/compose/runtime/ComposerImpl;)Ljava/util/List;

    move-result-object v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 3189
    :try_start_5
    invoke-static {v9, v6}, Landroidx/compose/runtime/ComposerImpl;->access$setChanges$p(Landroidx/compose/runtime/ComposerImpl;Ljava/util/List;)V

    .line 3149
    invoke-virtual {v1}, Landroidx/compose/runtime/MovableContentStateReference;->getComposition$runtime_release()Landroidx/compose/runtime/ControlledComposition;

    move-result-object v3

    .line 3150
    invoke-virtual {v2}, Landroidx/compose/runtime/MovableContentStateReference;->getComposition$runtime_release()Landroidx/compose/runtime/ControlledComposition;

    move-result-object v4

    .line 3151
    invoke-virtual {v7}, Landroidx/compose/runtime/SlotReader;->getCurrentGroup()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 3152
    invoke-virtual {v1}, Landroidx/compose/runtime/MovableContentStateReference;->getInvalidations$runtime_release()Ljava/util/List;

    move-result-object v17

    .line 3148
    new-instance v1, Landroidx/compose/runtime/ComposerImpl$insertMovableContentGuarded$1$1$5$1$1$1;

    invoke-direct {v1, v9, v2}, Landroidx/compose/runtime/ComposerImpl$insertMovableContentGuarded$1$1$5$1$1$1;-><init>(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/runtime/MovableContentStateReference;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    move-object/from16 v18, v1

    move-object/from16 v1, p0

    move-object v2, v3

    move-object v3, v4

    move-object/from16 v4, v16

    move-object v11, v5

    move-object/from16 v5, v17

    move-object/from16 v17, v6

    move-object/from16 v6, v18

    :try_start_6
    invoke-direct/range {v1 .. v6}, Landroidx/compose/runtime/ComposerImpl;->recomposeMovableContent(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/ControlledComposition;Ljava/lang/Integer;Ljava/util/List;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    .line 3161
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 3192
    :try_start_7
    invoke-static {v9, v11}, Landroidx/compose/runtime/ComposerImpl;->access$setChanges$p(Landroidx/compose/runtime/ComposerImpl;Ljava/util/List;)V

    .line 3162
    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    .line 3163
    new-instance v1, Landroidx/compose/runtime/ComposerImpl$insertMovableContentGuarded$1$1$5$1$2;

    move-object/from16 v2, v17

    invoke-direct {v1, v14, v2}, Landroidx/compose/runtime/ComposerImpl$insertMovableContentGuarded$1$1$5$1$2;-><init>(Lkotlin/jvm/internal/Ref$IntRef;Ljava/util/List;)V

    invoke-direct {v9, v1}, Landroidx/compose/runtime/ComposerImpl;->record(Lkotlin/jvm/functions/Function3;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_7

    .line 3204
    :cond_4
    :goto_4
    :try_start_8
    invoke-static {v9, v8}, Landroidx/compose/runtime/ComposerImpl;->access$setReader$p(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/runtime/SlotReader;)V

    .line 3205
    invoke-static {v9, v15}, Landroidx/compose/runtime/ComposerImpl;->access$setNodeCountOverrides$p(Landroidx/compose/runtime/ComposerImpl;[I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 151
    :try_start_9
    invoke-virtual {v7}, Landroidx/compose/runtime/SlotReader;->close()V

    .line 3174
    :goto_5
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->access$getSkipToGroupEndInstance$p()Lkotlin/jvm/functions/Function3;

    move-result-object v1

    invoke-direct {v9, v1}, Landroidx/compose/runtime/ComposerImpl;->record(Lkotlin/jvm/functions/Function3;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    goto :goto_8

    :catchall_4
    move-exception v0

    goto :goto_6

    :catchall_5
    move-exception v0

    move-object v11, v5

    .line 3192
    :goto_6
    :try_start_a
    invoke-static {v9, v11}, Landroidx/compose/runtime/ComposerImpl;->access$setChanges$p(Landroidx/compose/runtime/ComposerImpl;Ljava/util/List;)V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 3204
    :goto_7
    :try_start_b
    invoke-static {v9, v8}, Landroidx/compose/runtime/ComposerImpl;->access$setReader$p(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/runtime/SlotReader;)V

    .line 3205
    invoke-static {v9, v15}, Landroidx/compose/runtime/ComposerImpl;->access$setNodeCountOverrides$p(Landroidx/compose/runtime/ComposerImpl;[I)V

    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 151
    :goto_8
    :try_start_c
    invoke-virtual {v7}, Landroidx/compose/runtime/SlotReader;->close()V

    throw v0

    :cond_5
    sget-object v0, Landroidx/compose/runtime/ComposerImpl$insertMovableContentGuarded$1$2;->INSTANCE:Landroidx/compose/runtime/ComposerImpl$insertMovableContentGuarded$1$2;

    .line 3176
    invoke-direct {v9, v0}, Landroidx/compose/runtime/ComposerImpl;->record(Lkotlin/jvm/functions/Function3;)V

    const/4 v0, 0x0

    iput v0, v9, Landroidx/compose/runtime/ComposerImpl;->writersReaderDelta:I

    .line 3183
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 3192
    invoke-static {v9, v10}, Landroidx/compose/runtime/ComposerImpl;->access$setChanges$p(Landroidx/compose/runtime/ComposerImpl;Ljava/util/List;)V

    return-void

    :goto_9
    invoke-static {v9, v10}, Landroidx/compose/runtime/ComposerImpl;->access$setChanges$p(Landroidx/compose/runtime/ComposerImpl;Ljava/util/List;)V

    throw v0
.end method

.method private static final insertMovableContentGuarded$currentNodeIndex(Landroidx/compose/runtime/SlotWriter;)I
    .locals 6

    .line 2988
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    move-result v0

    .line 2991
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getParent()I

    move-result v1

    :goto_0
    if-ltz v1, :cond_0

    .line 2992
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/SlotWriter;->isNode(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2993
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/SlotWriter;->parent(I)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v1, v0, :cond_4

    .line 2999
    invoke-virtual {p0, v0, v1}, Landroidx/compose/runtime/SlotWriter;->indexInGroup(II)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3000
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/SlotWriter;->isNode(I)Z

    move-result v5

    if-eqz v5, :cond_1

    move v4, v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3003
    :cond_2
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/SlotWriter;->isNode(I)Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v2

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/SlotWriter;->nodeCount(I)I

    move-result v5

    :goto_2
    add-int/2addr v4, v5

    .line 3004
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/SlotWriter;->groupSize(I)I

    move-result v5

    add-int/2addr v1, v5

    goto :goto_1

    :cond_4
    return v4
.end method

.method private static final insertMovableContentGuarded$positionToInsert(Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/Anchor;Landroidx/compose/runtime/Applier;)I
    .locals 4

    .line 3011
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->anchorIndex(Landroidx/compose/runtime/Anchor;)I

    move-result p1

    .line 3012
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ge v0, p1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->runtimeCheck(Z)V

    .line 3013
    invoke-static {p0, p2, p1}, Landroidx/compose/runtime/ComposerImpl;->insertMovableContentGuarded$positionToParentOf(Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/Applier;I)V

    .line 3014
    invoke-static {p0}, Landroidx/compose/runtime/ComposerImpl;->insertMovableContentGuarded$currentNodeIndex(Landroidx/compose/runtime/SlotWriter;)I

    move-result v0

    .line 3015
    :goto_1
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    move-result v3

    if-ge v3, p1, :cond_3

    .line 3017
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->indexInCurrentGroup(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3018
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->isNode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3019
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/SlotWriter;->node(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Applier;->down(Ljava/lang/Object;)V

    move v0, v2

    .line 3022
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->startGroup()V

    goto :goto_1

    .line 3024
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->skipGroup()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_1

    .line 3028
    :cond_3
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    move-result p0

    if-ne p0, p1, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->runtimeCheck(Z)V

    return v0
.end method

.method private static final insertMovableContentGuarded$positionToParentOf(Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/Applier;I)V
    .locals 1

    .line 2980
    :goto_0
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/SlotWriter;->indexInParent(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2981
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->skipToGroupEnd()V

    .line 2982
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getParent()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/SlotWriter;->isNode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroidx/compose/runtime/Applier;->up()V

    .line 2983
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->endGroup()I

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final insertedGroupVirtualIndex(I)I
    .locals 0

    .line 0
    rsub-int/lit8 p1, p1, -0x2

    return p1
.end method

.method private final invokeMovableContentLambda(Landroidx/compose/runtime/MovableContent;Landroidx/compose/runtime/PersistentCompositionLocalMap;Ljava/lang/Object;Z)V
    .locals 10

    const v0, 0x78cc281

    .line 2906
    invoke-virtual {p0, v0, p1}, Landroidx/compose/runtime/ComposerImpl;->startMovableGroup(ILjava/lang/Object;)V

    .line 2907
    invoke-virtual {p0, p3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    .line 2911
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getCompoundKeyHash()I

    move-result v1

    :try_start_0
    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    .line 2916
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-static {v0, v3, v4, v2}, Landroidx/compose/runtime/SlotWriter;->markGroup$default(Landroidx/compose/runtime/SlotWriter;IILjava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    .line 2921
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getGroupAux()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v3, v4

    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->providerUpdates:Landroidx/compose/runtime/collection/IntMap;

    iget-object v5, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 2922
    invoke-virtual {v5}, Landroidx/compose/runtime/SlotReader;->getCurrentGroup()I

    move-result v5

    invoke-virtual {v0, v5, p2}, Landroidx/compose/runtime/collection/IntMap;->set(ILjava/lang/Object;)V

    .line 2923
    :cond_3
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->getCompositionLocalMap()Ljava/lang/Object;

    move-result-object v0

    sget-object v5, Landroidx/compose/runtime/GroupKind;->Companion:Landroidx/compose/runtime/GroupKind$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/GroupKind$Companion;->getGroup-ULZAiWs()I

    move-result v5

    const/16 v6, 0xca

    invoke-direct {p0, v6, v0, v5, p2}, Landroidx/compose/runtime/ComposerImpl;->start-BaiHCIY(ILjava/lang/Object;ILjava/lang/Object;)V

    .line 2928
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result p2

    if-eqz p2, :cond_4

    if-nez p4, :cond_4

    iput-boolean v4, p0, Landroidx/compose/runtime/ComposerImpl;->writerHasAProvider:Z

    iput-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    iget-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    .line 2933
    invoke-virtual {p2}, Landroidx/compose/runtime/SlotWriter;->getParent()I

    move-result p4

    invoke-virtual {p2, p4}, Landroidx/compose/runtime/SlotWriter;->parent(I)I

    move-result p4

    invoke-virtual {p2, p4}, Landroidx/compose/runtime/SlotWriter;->anchor(I)Landroidx/compose/runtime/Anchor;

    move-result-object v7

    .line 2934
    new-instance p2, Landroidx/compose/runtime/MovableContentStateReference;

    .line 2937
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getComposition()Landroidx/compose/runtime/ControlledComposition;

    move-result-object v5

    iget-object v6, p0, Landroidx/compose/runtime/ComposerImpl;->insertTable:Landroidx/compose/runtime/SlotTable;

    .line 2940
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v8

    .line 2941
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v9

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    .line 2934
    invoke-direct/range {v2 .. v9}, Landroidx/compose/runtime/MovableContentStateReference;-><init>(Landroidx/compose/runtime/MovableContent;Ljava/lang/Object;Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/SlotTable;Landroidx/compose/runtime/Anchor;Ljava/util/List;Landroidx/compose/runtime/PersistentCompositionLocalMap;)V

    iget-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    .line 2943
    invoke-virtual {p1, p2}, Landroidx/compose/runtime/CompositionContext;->insertMovableContent$runtime_release(Landroidx/compose/runtime/MovableContentStateReference;)V

    goto :goto_2

    :cond_4
    iget-boolean p2, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z

    iput-boolean v3, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z

    .line 2947
    new-instance p4, Landroidx/compose/runtime/ComposerImpl$invokeMovableContentLambda$1;

    invoke-direct {p4, p1, p3}, Landroidx/compose/runtime/ComposerImpl$invokeMovableContentLambda$1;-><init>(Landroidx/compose/runtime/MovableContent;Ljava/lang/Object;)V

    const p1, 0x12d6006f

    invoke-static {p1, v4, p4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/compose/runtime/ActualJvm_jvmKt;->invokeComposable(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function2;)V

    iput-boolean p2, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2952
    :goto_2
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->endGroup()V

    iput v1, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    .line 2954
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->endMovableGroup()V

    return-void

    .line 2952
    :goto_3
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->endGroup()V

    iput v1, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    .line 2954
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->endMovableGroup()V

    throw p1
.end method

.method private final nodeAt(Landroidx/compose/runtime/SlotReader;I)Ljava/lang/Object;
    .locals 0

    .line 3369
    invoke-virtual {p1, p2}, Landroidx/compose/runtime/SlotReader;->node(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final nodeIndexOf(IIII)I
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 2570
    invoke-virtual {v0, p2}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    move-result v0

    :goto_0
    if-eq v0, p3, :cond_0

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 2572
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/SlotReader;->isNode(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 2573
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object p3, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 2576
    invoke-virtual {p3, v0}, Landroidx/compose/runtime/SlotReader;->isNode(I)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p4, 0x0

    :cond_1
    if-ne v0, p2, :cond_2

    return p4

    .line 2583
    :cond_2
    invoke-direct {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->updatedNodeCount(I)I

    move-result p3

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v1, p2}, Landroidx/compose/runtime/SlotReader;->nodeCount(I)I

    move-result p2

    sub-int/2addr p3, p2

    add-int/2addr p3, p4

    :cond_3
    if-ge p4, p3, :cond_4

    if-eq v0, p1, :cond_4

    add-int/lit8 v0, v0, 0x1

    :goto_1
    if-ge v0, p1, :cond_4

    iget-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 2588
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/SlotReader;->groupSize(I)I

    move-result p2

    add-int/2addr p2, v0

    if-lt p1, p2, :cond_3

    .line 2590
    invoke-direct {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->updatedNodeCount(I)I

    move-result v0

    add-int/2addr p4, v0

    move v0, p2

    goto :goto_1

    :cond_4
    return p4
.end method

.method private final realizeDowns()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->downNodes:Landroidx/compose/runtime/Stack;

    .line 3451
    invoke-virtual {v0}, Landroidx/compose/runtime/Stack;->isNotEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->downNodes:Landroidx/compose/runtime/Stack;

    .line 3453
    invoke-virtual {v0}, Landroidx/compose/runtime/Stack;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->realizeDowns([Ljava/lang/Object;)V

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->downNodes:Landroidx/compose/runtime/Stack;

    .line 3454
    invoke-virtual {v0}, Landroidx/compose/runtime/Stack;->clear()V

    :cond_0
    return-void
.end method

.method private final realizeDowns([Ljava/lang/Object;)V
    .locals 1

    .line 3441
    new-instance v0, Landroidx/compose/runtime/ComposerImpl$realizeDowns$1;

    invoke-direct {v0, p1}, Landroidx/compose/runtime/ComposerImpl$realizeDowns$1;-><init>([Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->record(Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method private final realizeMovement()V
    .locals 4

    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->previousCount:I

    const/4 v1, 0x0

    iput v1, p0, Landroidx/compose/runtime/ComposerImpl;->previousCount:I

    if-lez v0, :cond_1

    iget v1, p0, Landroidx/compose/runtime/ComposerImpl;->previousRemove:I

    const/4 v2, -0x1

    if-ltz v1, :cond_0

    iput v2, p0, Landroidx/compose/runtime/ComposerImpl;->previousRemove:I

    .line 3928
    new-instance v2, Landroidx/compose/runtime/ComposerImpl$realizeMovement$1;

    invoke-direct {v2, v1, v0}, Landroidx/compose/runtime/ComposerImpl$realizeMovement$1;-><init>(II)V

    invoke-direct {p0, v2}, Landroidx/compose/runtime/ComposerImpl;->recordApplierOperation(Lkotlin/jvm/functions/Function3;)V

    goto :goto_0

    :cond_0
    iget v1, p0, Landroidx/compose/runtime/ComposerImpl;->previousMoveFrom:I

    iput v2, p0, Landroidx/compose/runtime/ComposerImpl;->previousMoveFrom:I

    iget v3, p0, Landroidx/compose/runtime/ComposerImpl;->previousMoveTo:I

    iput v2, p0, Landroidx/compose/runtime/ComposerImpl;->previousMoveTo:I

    .line 3934
    new-instance v2, Landroidx/compose/runtime/ComposerImpl$realizeMovement$2;

    invoke-direct {v2, v1, v3, v0}, Landroidx/compose/runtime/ComposerImpl$realizeMovement$2;-><init>(III)V

    invoke-direct {p0, v2}, Landroidx/compose/runtime/ComposerImpl;->recordApplierOperation(Lkotlin/jvm/functions/Function3;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final realizeOperationLocation(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 3514
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotReader;->getParent()I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {p1}, Landroidx/compose/runtime/SlotReader;->getCurrentGroup()I

    move-result p1

    :goto_0
    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->writersReaderDelta:I

    sub-int v0, p1, v0

    if-ltz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    if-lez v0, :cond_2

    .line 3520
    new-instance v1, Landroidx/compose/runtime/ComposerImpl$realizeOperationLocation$2;

    invoke-direct {v1, v0}, Landroidx/compose/runtime/ComposerImpl$realizeOperationLocation$2;-><init>(I)V

    invoke-direct {p0, v1}, Landroidx/compose/runtime/ComposerImpl;->record(Lkotlin/jvm/functions/Function3;)V

    iput p1, p0, Landroidx/compose/runtime/ComposerImpl;->writersReaderDelta:I

    :cond_2
    return-void

    :cond_3
    const-string p1, "Tried to seek backward"

    .line 4550
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method static synthetic realizeOperationLocation$default(Landroidx/compose/runtime/ComposerImpl;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 3513
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->realizeOperationLocation(Z)V

    return-void
.end method

.method private final realizeUps()V
    .locals 2

    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->pendingUps:I

    if-lez v0, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Landroidx/compose/runtime/ComposerImpl;->pendingUps:I

    .line 3436
    new-instance v1, Landroidx/compose/runtime/ComposerImpl$realizeUps$1;

    invoke-direct {v1, v0}, Landroidx/compose/runtime/ComposerImpl$realizeUps$1;-><init>(I)V

    invoke-direct {p0, v1}, Landroidx/compose/runtime/ComposerImpl;->record(Lkotlin/jvm/functions/Function3;)V

    :cond_0
    return-void
.end method

.method private final recomposeMovableContent(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/ControlledComposition;Ljava/lang/Integer;Ljava/util/List;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 15

    move-object v1, p0

    move-object/from16 v0, p1

    iget-boolean v2, v1, Landroidx/compose/runtime/ComposerImpl;->implicitRootStart:Z

    iget-boolean v3, v1, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    iget v4, v1, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    const/4 v5, 0x0

    :try_start_0
    iput-boolean v5, v1, Landroidx/compose/runtime/ComposerImpl;->implicitRootStart:Z

    const/4 v6, 0x1

    iput-boolean v6, v1, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    iput v5, v1, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    .line 34
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v6

    move v7, v5

    :goto_0
    if-ge v7, v6, :cond_2

    move-object/from16 v8, p4

    .line 35
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 36
    check-cast v9, Lkotlin/Pair;

    .line 3223
    invoke-virtual {v9}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/runtime/RecomposeScopeImpl;

    invoke-virtual {v9}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/runtime/collection/IdentityArraySet;

    if-eqz v9, :cond_0

    .line 109
    invoke-virtual {v9}, Landroidx/compose/runtime/collection/IdentityArraySet;->getValues()[Ljava/lang/Object;

    move-result-object v11

    .line 110
    invoke-virtual {v9}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    move-result v9

    move v12, v5

    :goto_1
    if-ge v12, v9, :cond_1

    .line 112
    aget-object v13, v11, v12

    const-string v14, "null cannot be cast to non-null type T of androidx.compose.runtime.collection.IdentityArraySet"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3226
    invoke-virtual {p0, v10, v13}, Landroidx/compose/runtime/ComposerImpl;->tryImminentInvalidation$runtime_release(Landroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_0
    const/4 v9, 0x0

    .line 3229
    invoke-virtual {p0, v10, v9}, Landroidx/compose/runtime/ComposerImpl;->tryImminentInvalidation$runtime_release(Landroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_4

    if-eqz p3, :cond_3

    .line 3232
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :goto_2
    move-object/from16 v6, p2

    move-object/from16 v7, p5

    goto :goto_3

    :cond_3
    const/4 v5, -0x1

    goto :goto_2

    :goto_3
    invoke-interface {v0, v6, v5, v7}, Landroidx/compose/runtime/ControlledComposition;->delegateInvalidations(Landroidx/compose/runtime/ControlledComposition;ILkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_4

    :cond_4
    move-object/from16 v7, p5

    :goto_4
    invoke-interface/range {p5 .. p5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    iput-boolean v2, v1, Landroidx/compose/runtime/ComposerImpl;->implicitRootStart:Z

    iput-boolean v3, v1, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    iput v4, v1, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    return-object v0

    :goto_5
    iput-boolean v2, v1, Landroidx/compose/runtime/ComposerImpl;->implicitRootStart:Z

    iput-boolean v3, v1, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    iput v4, v1, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    .line 3236
    throw v0
.end method

.method static synthetic recomposeMovableContent$default(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/ControlledComposition;Ljava/lang/Integer;Ljava/util/List;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    move-object v3, v0

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    move-object v4, v0

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_3

    .line 3213
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p4

    :cond_3
    move-object v5, p4

    move-object v1, p0

    move-object v6, p5

    .line 3209
    invoke-direct/range {v1 .. v6}, Landroidx/compose/runtime/ComposerImpl;->recomposeMovableContent(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/ControlledComposition;Ljava/lang/Integer;Ljava/util/List;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final recomposeToGroupEnd()V
    .locals 12

    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 2425
    invoke-virtual {v2}, Landroidx/compose/runtime/SlotReader;->getParent()I

    move-result v2

    iget-object v3, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 2426
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/SlotReader;->groupSize(I)I

    move-result v3

    add-int/2addr v3, v2

    iget v4, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    .line 2428
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getCompoundKeyHash()I

    move-result v5

    iget v6, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    iget-object v7, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    iget-object v8, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 2432
    invoke-virtual {v8}, Landroidx/compose/runtime/SlotReader;->getCurrentGroup()I

    move-result v8

    invoke-static {v7, v8, v3}, Landroidx/compose/runtime/ComposerKt;->access$firstInRange(Ljava/util/List;II)Landroidx/compose/runtime/Invalidation;

    move-result-object v7

    const/4 v8, 0x0

    move v9, v2

    :goto_0
    if-eqz v7, :cond_1

    .line 2434
    invoke-virtual {v7}, Landroidx/compose/runtime/Invalidation;->getLocation()I

    move-result v10

    iget-object v11, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    .line 2436
    invoke-static {v11, v10}, Landroidx/compose/runtime/ComposerKt;->access$removeLocation(Ljava/util/List;I)Landroidx/compose/runtime/Invalidation;

    .line 2438
    invoke-virtual {v7}, Landroidx/compose/runtime/Invalidation;->isInvalid()Z

    move-result v11

    if-eqz v11, :cond_0

    iget-object v8, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 2441
    invoke-virtual {v8, v10}, Landroidx/compose/runtime/SlotReader;->reposition(I)V

    iget-object v8, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 2442
    invoke-virtual {v8}, Landroidx/compose/runtime/SlotReader;->getCurrentGroup()I

    move-result v8

    .line 2444
    invoke-direct {p0, v9, v8, v2}, Landroidx/compose/runtime/ComposerImpl;->recordUpsAndDowns(III)V

    .line 2449
    invoke-direct {p0, v10, v8, v2, v4}, Landroidx/compose/runtime/ComposerImpl;->nodeIndexOf(IIII)I

    move-result v9

    iput v9, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    iget-object v9, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 2459
    invoke-virtual {v9, v8}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    move-result v9

    .line 2458
    invoke-direct {p0, v9, v2, v5}, Landroidx/compose/runtime/ComposerImpl;->compoundKeyOf(III)I

    move-result v9

    iput v9, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    const/4 v9, 0x0

    iput-object v9, p0, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 2468
    invoke-virtual {v7}, Landroidx/compose/runtime/Invalidation;->getScope()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroidx/compose/runtime/RecomposeScopeImpl;->compose(Landroidx/compose/runtime/Composer;)V

    iput-object v9, p0, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    iget-object v7, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 2474
    invoke-virtual {v7, v2}, Landroidx/compose/runtime/SlotReader;->restoreParent(I)V

    move v9, v8

    move v8, v1

    goto :goto_1

    :cond_0
    iget-object v10, p0, Landroidx/compose/runtime/ComposerImpl;->invalidateStack:Landroidx/compose/runtime/Stack;

    .line 2479
    invoke-virtual {v7}, Landroidx/compose/runtime/Invalidation;->getScope()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/Stack;->push(Ljava/lang/Object;)Z

    .line 2480
    invoke-virtual {v7}, Landroidx/compose/runtime/Invalidation;->getScope()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/compose/runtime/RecomposeScopeImpl;->rereadTrackedInstances()V

    iget-object v7, p0, Landroidx/compose/runtime/ComposerImpl;->invalidateStack:Landroidx/compose/runtime/Stack;

    .line 2481
    invoke-virtual {v7}, Landroidx/compose/runtime/Stack;->pop()Ljava/lang/Object;

    :goto_1
    iget-object v7, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    iget-object v10, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 2490
    invoke-virtual {v10}, Landroidx/compose/runtime/SlotReader;->getCurrentGroup()I

    move-result v10

    invoke-static {v7, v10, v3}, Landroidx/compose/runtime/ComposerKt;->access$firstInRange(Ljava/util/List;II)Landroidx/compose/runtime/Invalidation;

    move-result-object v7

    goto :goto_0

    :cond_1
    if-eqz v8, :cond_2

    .line 2494
    invoke-direct {p0, v9, v2, v2}, Landroidx/compose/runtime/ComposerImpl;->recordUpsAndDowns(III)V

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 2495
    invoke-virtual {v1}, Landroidx/compose/runtime/SlotReader;->skipToGroupEnd()V

    .line 2496
    invoke-direct {p0, v2}, Landroidx/compose/runtime/ComposerImpl;->updatedNodeCount(I)I

    move-result v1

    add-int/2addr v4, v1

    iput v4, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    add-int/2addr v6, v1

    iput v6, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    goto :goto_2

    .line 2501
    :cond_2
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->skipReaderToGroupEnd()V

    :goto_2
    iput v5, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    return-void
.end method

.method private final record(Lkotlin/jvm/functions/Function3;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->changes:Ljava/util/List;

    .line 3389
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final recordApplierOperation(Lkotlin/jvm/functions/Function3;)V
    .locals 0

    .line 3397
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->realizeUps()V

    .line 3398
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->realizeDowns()V

    .line 3399
    invoke-direct {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->record(Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method private final recordDelete()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 3582
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getCurrentGroup()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->reportFreeMovableContent(I)V

    .line 3583
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->access$getRemoveCurrentGroupInstance$p()Lkotlin/jvm/functions/Function3;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->recordSlotEditingOperation(Lkotlin/jvm/functions/Function3;)V

    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->writersReaderDelta:I

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 3584
    invoke-virtual {v1}, Landroidx/compose/runtime/SlotReader;->getGroupSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->writersReaderDelta:I

    return-void
.end method

.method private final recordDown(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->downNodes:Landroidx/compose/runtime/Stack;

    .line 3460
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/Stack;->push(Ljava/lang/Object;)Z

    return-void
.end method

.method private final recordEndGroup()V
    .locals 5

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 3849
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getParent()I

    move-result v0

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->startedGroups:Landroidx/compose/runtime/IntStack;

    const/4 v2, -0x1

    .line 3850
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/IntStack;->peekOr(I)I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gt v1, v0, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->startedGroups:Landroidx/compose/runtime/IntStack;

    .line 3852
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/IntStack;->peekOr(I)I

    move-result v1

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->startedGroups:Landroidx/compose/runtime/IntStack;

    .line 3853
    invoke-virtual {v0}, Landroidx/compose/runtime/IntStack;->pop()I

    .line 3854
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->access$getEndGroupInstance$p()Lkotlin/jvm/functions/Function3;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v3, v0, v4, v1}, Landroidx/compose/runtime/ComposerImpl;->recordSlotTableOperation$default(Landroidx/compose/runtime/ComposerImpl;ZLkotlin/jvm/functions/Function3;ILjava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    const-string v0, "Missed recording an endGroup"

    .line 4550
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method private final recordEndRoot()V
    .locals 4

    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->startedGroup:Z

    if-eqz v0, :cond_0

    .line 3860
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->access$getEndGroupInstance$p()Lkotlin/jvm/functions/Function3;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v3, v0, v1, v2}, Landroidx/compose/runtime/ComposerImpl;->recordSlotTableOperation$default(Landroidx/compose/runtime/ComposerImpl;ZLkotlin/jvm/functions/Function3;ILjava/lang/Object;)V

    iput-boolean v3, p0, Landroidx/compose/runtime/ComposerImpl;->startedGroup:Z

    :cond_0
    return-void
.end method

.method private final recordFixup(Lkotlin/jvm/functions/Function3;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->insertFixups:Ljava/util/List;

    .line 3561
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final recordInsert(Landroidx/compose/runtime/Anchor;)V
    .locals 3

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->insertFixups:Ljava/util/List;

    .line 3526
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->insertTable:Landroidx/compose/runtime/SlotTable;

    .line 3528
    new-instance v1, Landroidx/compose/runtime/ComposerImpl$recordInsert$1;

    invoke-direct {v1, v0, p1}, Landroidx/compose/runtime/ComposerImpl$recordInsert$1;-><init>(Landroidx/compose/runtime/SlotTable;Landroidx/compose/runtime/Anchor;)V

    invoke-direct {p0, v1}, Landroidx/compose/runtime/ComposerImpl;->recordSlotEditingOperation(Lkotlin/jvm/functions/Function3;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->insertFixups:Ljava/util/List;

    .line 3538
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->insertFixups:Ljava/util/List;

    .line 3539
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 3540
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->realizeUps()V

    .line 3541
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->realizeDowns()V

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->insertTable:Landroidx/compose/runtime/SlotTable;

    .line 3543
    new-instance v2, Landroidx/compose/runtime/ComposerImpl$recordInsert$2;

    invoke-direct {v2, v1, p1, v0}, Landroidx/compose/runtime/ComposerImpl$recordInsert$2;-><init>(Landroidx/compose/runtime/SlotTable;Landroidx/compose/runtime/Anchor;Ljava/util/List;)V

    invoke-direct {p0, v2}, Landroidx/compose/runtime/ComposerImpl;->recordSlotEditingOperation(Lkotlin/jvm/functions/Function3;)V

    :goto_0
    return-void
.end method

.method private final recordInsertUpFixup(Lkotlin/jvm/functions/Function3;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->insertUpFixups:Landroidx/compose/runtime/Stack;

    .line 3567
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/Stack;->push(Ljava/lang/Object;)Z

    return-void
.end method

.method private final recordMoveNode(III)V
    .locals 3

    if-lez p3, :cond_1

    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->previousCount:I

    if-lez v0, :cond_0

    iget v1, p0, Landroidx/compose/runtime/ComposerImpl;->previousMoveFrom:I

    sub-int v2, p1, v0

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroidx/compose/runtime/ComposerImpl;->previousMoveTo:I

    sub-int v2, p2, v0

    if-ne v1, v2, :cond_0

    add-int/2addr v0, p3

    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->previousCount:I

    goto :goto_0

    .line 3913
    :cond_0
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->realizeMovement()V

    iput p1, p0, Landroidx/compose/runtime/ComposerImpl;->previousMoveFrom:I

    iput p2, p0, Landroidx/compose/runtime/ComposerImpl;->previousMoveTo:I

    iput p3, p0, Landroidx/compose/runtime/ComposerImpl;->previousCount:I

    :cond_1
    :goto_0
    return-void
.end method

.method private final recordReaderMoving(I)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 3820
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getCurrentGroup()I

    move-result v0

    iget v1, p0, Landroidx/compose/runtime/ComposerImpl;->writersReaderDelta:I

    sub-int/2addr v0, v1

    sub-int/2addr p1, v0

    iput p1, p0, Landroidx/compose/runtime/ComposerImpl;->writersReaderDelta:I

    return-void
.end method

.method private final recordRemoveNode(II)V
    .locals 1

    if-lez p2, :cond_3

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->previousRemove:I

    if-ne v0, p1, :cond_1

    iget p1, p0, Landroidx/compose/runtime/ComposerImpl;->previousCount:I

    add-int/2addr p1, p2

    iput p1, p0, Landroidx/compose/runtime/ComposerImpl;->previousCount:I

    goto :goto_1

    .line 3899
    :cond_1
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->realizeMovement()V

    iput p1, p0, Landroidx/compose/runtime/ComposerImpl;->previousRemove:I

    iput p2, p0, Landroidx/compose/runtime/ComposerImpl;->previousCount:I

    goto :goto_1

    .line 3896
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid remove index "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4550
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method private final recordSlotEditing()V
    .locals 6

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 3829
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getSize()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 3831
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getParent()I

    move-result v1

    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->startedGroups:Landroidx/compose/runtime/IntStack;

    const/4 v3, -0x2

    .line 3833
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/IntStack;->peekOr(I)I

    move-result v2

    if-eq v2, v1, :cond_1

    iget-boolean v2, p0, Landroidx/compose/runtime/ComposerImpl;->startedGroup:Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroidx/compose/runtime/ComposerImpl;->implicitRootStart:Z

    if-eqz v2, :cond_0

    .line 3836
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->access$getStartRootGroup$p()Lkotlin/jvm/functions/Function3;

    move-result-object v2

    invoke-static {p0, v4, v2, v5, v3}, Landroidx/compose/runtime/ComposerImpl;->recordSlotTableOperation$default(Landroidx/compose/runtime/ComposerImpl;ZLkotlin/jvm/functions/Function3;ILjava/lang/Object;)V

    iput-boolean v5, p0, Landroidx/compose/runtime/ComposerImpl;->startedGroup:Z

    :cond_0
    if-lez v1, :cond_1

    .line 3840
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/SlotReader;->anchor(I)Landroidx/compose/runtime/Anchor;

    move-result-object v0

    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->startedGroups:Landroidx/compose/runtime/IntStack;

    .line 3841
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/IntStack;->push(I)V

    .line 3842
    new-instance v1, Landroidx/compose/runtime/ComposerImpl$recordSlotEditing$1;

    invoke-direct {v1, v0}, Landroidx/compose/runtime/ComposerImpl$recordSlotEditing$1;-><init>(Landroidx/compose/runtime/Anchor;)V

    invoke-static {p0, v4, v1, v5, v3}, Landroidx/compose/runtime/ComposerImpl;->recordSlotTableOperation$default(Landroidx/compose/runtime/ComposerImpl;ZLkotlin/jvm/functions/Function3;ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private final recordSlotEditingOperation(Lkotlin/jvm/functions/Function3;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3408
    invoke-static {p0, v2, v0, v1}, Landroidx/compose/runtime/ComposerImpl;->realizeOperationLocation$default(Landroidx/compose/runtime/ComposerImpl;ZILjava/lang/Object;)V

    .line 3409
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->recordSlotEditing()V

    .line 3410
    invoke-direct {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->record(Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method private final recordSlotTableOperation(ZLkotlin/jvm/functions/Function3;)V
    .locals 0

    .line 3418
    invoke-direct {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->realizeOperationLocation(Z)V

    .line 3419
    invoke-direct {p0, p2}, Landroidx/compose/runtime/ComposerImpl;->record(Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method static synthetic recordSlotTableOperation$default(Landroidx/compose/runtime/ComposerImpl;ZLkotlin/jvm/functions/Function3;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 3417
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/ComposerImpl;->recordSlotTableOperation(ZLkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method private final recordUp()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->downNodes:Landroidx/compose/runtime/Stack;

    .line 3464
    invoke-virtual {v0}, Landroidx/compose/runtime/Stack;->isNotEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->downNodes:Landroidx/compose/runtime/Stack;

    .line 3465
    invoke-virtual {v0}, Landroidx/compose/runtime/Stack;->pop()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->pendingUps:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->pendingUps:I

    :goto_0
    return-void
.end method

.method private final recordUpsAndDowns(III)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 2640
    invoke-static {v0, p1, p2, p3}, Landroidx/compose/runtime/ComposerKt;->access$nearestCommonRootOf(Landroidx/compose/runtime/SlotReader;III)I

    move-result p3

    :goto_0
    if-lez p1, :cond_1

    if-eq p1, p3, :cond_1

    .line 2649
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotReader;->isNode(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->recordUp()V

    .line 2650
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    move-result p1

    goto :goto_0

    .line 2654
    :cond_1
    invoke-direct {p0, p2, p3}, Landroidx/compose/runtime/ComposerImpl;->doRecordDownsFor(II)V

    return-void
.end method

.method private final registerInsertUpFixup()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->insertFixups:Ljava/util/List;

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->insertUpFixups:Landroidx/compose/runtime/Stack;

    .line 3571
    invoke-virtual {v1}, Landroidx/compose/runtime/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final reportAllMovableContent()V
    .locals 3

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    .line 3799
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->containsMark()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3800
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->deferredChanges:Ljava/util/List;

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    .line 146
    invoke-virtual {v1}, Landroidx/compose/runtime/SlotTable;->openReader()Landroidx/compose/runtime/SlotReader;

    move-result-object v1

    :try_start_0
    iput-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 3187
    invoke-static {p0}, Landroidx/compose/runtime/ComposerImpl;->access$getChanges$p(Landroidx/compose/runtime/ComposerImpl;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3189
    :try_start_1
    invoke-static {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->access$setChanges$p(Landroidx/compose/runtime/ComposerImpl;Ljava/util/List;)V

    const/4 v0, 0x0

    .line 3805
    invoke-direct {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->reportFreeMovableContent(I)V

    .line 3806
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->realizeUps()V

    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->startedGroup:Z

    if-eqz v0, :cond_0

    .line 3808
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->access$getSkipToGroupEndInstance$p()Lkotlin/jvm/functions/Function3;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->record(Lkotlin/jvm/functions/Function3;)V

    .line 3809
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->recordEndRoot()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 3811
    :cond_0
    :goto_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3192
    :try_start_2
    invoke-static {p0, v2}, Landroidx/compose/runtime/ComposerImpl;->access$setChanges$p(Landroidx/compose/runtime/ComposerImpl;Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 151
    invoke-virtual {v1}, Landroidx/compose/runtime/SlotReader;->close()V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 3192
    :goto_1
    :try_start_3
    invoke-static {p0, v2}, Landroidx/compose/runtime/ComposerImpl;->access$setChanges$p(Landroidx/compose/runtime/ComposerImpl;Ljava/util/List;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 151
    :goto_2
    invoke-virtual {v1}, Landroidx/compose/runtime/SlotReader;->close()V

    throw v0

    :cond_1
    :goto_3
    return-void
.end method

.method private final reportFreeMovableContent(I)V
    .locals 1

    const/4 v0, 0x0

    .line 3697
    invoke-static {p0, p1, v0, v0}, Landroidx/compose/runtime/ComposerImpl;->reportFreeMovableContent$reportGroup(Landroidx/compose/runtime/ComposerImpl;IZI)I

    .line 3698
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->realizeMovement()V

    return-void
.end method

.method private static final reportFreeMovableContent$reportGroup(Landroidx/compose/runtime/ComposerImpl;IZI)I
    .locals 7

    .line 3600
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotReader;->hasMark(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 3603
    iget-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/SlotReader;->groupKey(I)I

    move-result p2

    .line 3604
    iget-object p3, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {p3, p1}, Landroidx/compose/runtime/SlotReader;->groupObjectKey(I)Ljava/lang/Object;

    move-result-object p3

    const/16 v0, 0xce

    if-ne p2, v0, :cond_2

    .line 3641
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->getReference()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 3645
    iget-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {p2, p1, v1}, Landroidx/compose/runtime/SlotReader;->groupGet(II)Ljava/lang/Object;

    move-result-object p2

    instance-of p3, p2, Landroidx/compose/runtime/ComposerImpl$CompositionContextHolder;

    if-eqz p3, :cond_0

    check-cast p2, Landroidx/compose/runtime/ComposerImpl$CompositionContextHolder;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 3651
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl$CompositionContextHolder;->getRef()Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;

    move-result-object p2

    .line 3652
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;->getComposers()Ljava/util/Set;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    .line 1855
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/compose/runtime/ComposerImpl;

    .line 3653
    invoke-direct {p3}, Landroidx/compose/runtime/ComposerImpl;->reportAllMovableContent()V

    .line 3657
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->getComposition()Landroidx/compose/runtime/ControlledComposition;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroidx/compose/runtime/CompositionContext;->reportRemovedComposition$runtime_release(Landroidx/compose/runtime/ControlledComposition;)V

    goto :goto_1

    .line 3660
    :cond_1
    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotReader;->nodeCount(I)I

    move-result p0

    goto :goto_6

    .line 3661
    :cond_2
    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotReader;->nodeCount(I)I

    move-result p0

    goto :goto_6

    .line 3662
    :cond_3
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotReader;->containsMark(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3666
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotReader;->groupSize(I)I

    move-result v0

    add-int/2addr v0, p1

    const/4 v2, 0x1

    add-int/2addr p1, v2

    move v3, p1

    move p1, v1

    :goto_2
    if-ge v3, v0, :cond_9

    .line 3678
    iget-object v4, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v4, v3}, Landroidx/compose/runtime/SlotReader;->isNode(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3680
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->realizeMovement()V

    .line 3681
    iget-object v5, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v5, v3}, Landroidx/compose/runtime/SlotReader;->node(I)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v5}, Landroidx/compose/runtime/ComposerImpl;->recordDown(Ljava/lang/Object;)V

    :cond_4
    if-nez v4, :cond_6

    if-eqz p2, :cond_5

    goto :goto_3

    :cond_5
    move v5, v1

    goto :goto_4

    :cond_6
    :goto_3
    move v5, v2

    :goto_4
    if-eqz v4, :cond_7

    move v6, v1

    goto :goto_5

    :cond_7
    add-int v6, p3, p1

    .line 3683
    :goto_5
    invoke-static {p0, v3, v5, v6}, Landroidx/compose/runtime/ComposerImpl;->reportFreeMovableContent$reportGroup(Landroidx/compose/runtime/ComposerImpl;IZI)I

    move-result v5

    add-int/2addr p1, v5

    if-eqz v4, :cond_8

    .line 3689
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->realizeMovement()V

    .line 3690
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->recordUp()V

    .line 3692
    :cond_8
    iget-object v4, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v4, v3}, Landroidx/compose/runtime/SlotReader;->groupSize(I)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_2

    :cond_9
    move p0, p1

    goto :goto_6

    .line 3695
    :cond_a
    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotReader;->nodeCount(I)I

    move-result p0

    :goto_6
    return p0
.end method

.method private final skipGroup()V
    .locals 2

    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 1577
    invoke-virtual {v1}, Landroidx/compose/runtime/SlotReader;->skipGroup()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    return-void
.end method

.method private final skipReaderToGroupEnd()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 2744
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getParentNodes()I

    move-result v0

    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 2745
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->skipToGroupEnd()V

    return-void
.end method

.method private final start-BaiHCIY(ILjava/lang/Object;ILjava/lang/Object;)V
    .locals 13

    move-object v0, p0

    move v2, p1

    move-object v1, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    .line 2122
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->validateNodeNotExpected()V

    .line 2124
    invoke-direct {p0, p1, p2, v4}, Landroidx/compose/runtime/ComposerImpl;->updateCompoundKeyWhenWeEnterGroup(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 4478
    sget-object v5, Landroidx/compose/runtime/GroupKind;->Companion:Landroidx/compose/runtime/GroupKind$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/GroupKind$Companion;->getGroup-ULZAiWs()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v3, v6, :cond_0

    move v9, v8

    goto :goto_0

    :cond_0
    move v9, v7

    .line 2129
    :goto_0
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v6

    const/4 v10, -0x1

    const/4 v11, 0x0

    if-eqz v6, :cond_6

    iget-object v3, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 2130
    invoke-virtual {v3}, Landroidx/compose/runtime/SlotReader;->beginEmpty()V

    iget-object v3, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    .line 2131
    invoke-virtual {v3}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    move-result v3

    if-eqz v9, :cond_1

    iget-object v1, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 2133
    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, p1, v4}, Landroidx/compose/runtime/SlotWriter;->startNode(ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    if-eqz v4, :cond_3

    iget-object v5, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    if-nez v1, :cond_2

    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 2134
    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    :cond_2
    invoke-virtual {v5, p1, v1, v4}, Landroidx/compose/runtime/SlotWriter;->startData(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    iget-object v4, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    if-nez v1, :cond_4

    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 2135
    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    :cond_4
    invoke-virtual {v4, p1, v1}, Landroidx/compose/runtime/SlotWriter;->startGroup(ILjava/lang/Object;)V

    :goto_1
    iget-object v7, v0, Landroidx/compose/runtime/ComposerImpl;->pending:Landroidx/compose/runtime/Pending;

    if-eqz v7, :cond_5

    .line 2138
    new-instance v8, Landroidx/compose/runtime/KeyInfo;

    .line 2140
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 2141
    invoke-direct {p0, v3}, Landroidx/compose/runtime/ComposerImpl;->insertedGroupVirtualIndex(I)I

    move-result v5

    const/4 v6, -0x1

    const/4 v10, 0x0

    move-object v1, v8

    move v2, p1

    move-object v3, v4

    move v4, v5

    move v5, v6

    move v6, v10

    .line 2138
    invoke-direct/range {v1 .. v6}, Landroidx/compose/runtime/KeyInfo;-><init>(ILjava/lang/Object;III)V

    iget v1, v0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    .line 2145
    invoke-virtual {v7}, Landroidx/compose/runtime/Pending;->getStartIndex()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v7, v8, v1}, Landroidx/compose/runtime/Pending;->registerInsert(Landroidx/compose/runtime/KeyInfo;I)V

    .line 2146
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/Pending;->recordUsed(Landroidx/compose/runtime/KeyInfo;)Z

    .line 2148
    :cond_5
    invoke-direct {p0, v9, v11}, Landroidx/compose/runtime/ComposerImpl;->enterGroup(ZLandroidx/compose/runtime/Pending;)V

    return-void

    .line 4479
    :cond_6
    invoke-virtual {v5}, Landroidx/compose/runtime/GroupKind$Companion;->getNode-ULZAiWs()I

    move-result v5

    if-eq v3, v5, :cond_7

    goto :goto_2

    :cond_7
    iget-boolean v3, v0, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    if-eqz v3, :cond_8

    move v3, v8

    goto :goto_3

    :cond_8
    :goto_2
    move v3, v7

    :goto_3
    iget-object v5, v0, Landroidx/compose/runtime/ComposerImpl;->pending:Landroidx/compose/runtime/Pending;

    if-nez v5, :cond_a

    iget-object v5, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 2154
    invoke-virtual {v5}, Landroidx/compose/runtime/SlotReader;->getGroupKey()I

    move-result v5

    if-nez v3, :cond_9

    if-ne v5, v2, :cond_9

    iget-object v5, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 2155
    invoke-virtual {v5}, Landroidx/compose/runtime/SlotReader;->getGroupObjectKey()Ljava/lang/Object;

    move-result-object v5

    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2157
    invoke-direct {p0, v9, v4}, Landroidx/compose/runtime/ComposerImpl;->startReaderGroup(ZLjava/lang/Object;)V

    goto :goto_4

    .line 2159
    :cond_9
    new-instance v5, Landroidx/compose/runtime/Pending;

    iget-object v6, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 2160
    invoke-virtual {v6}, Landroidx/compose/runtime/SlotReader;->extractKeys()Ljava/util/List;

    move-result-object v6

    iget v12, v0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    .line 2159
    invoke-direct {v5, v6, v12}, Landroidx/compose/runtime/Pending;-><init>(Ljava/util/List;I)V

    iput-object v5, v0, Landroidx/compose/runtime/ComposerImpl;->pending:Landroidx/compose/runtime/Pending;

    :cond_a
    :goto_4
    iget-object v12, v0, Landroidx/compose/runtime/ComposerImpl;->pending:Landroidx/compose/runtime/Pending;

    if-eqz v12, :cond_12

    .line 2170
    invoke-virtual {v12, p1, p2}, Landroidx/compose/runtime/Pending;->getNext(ILjava/lang/Object;)Landroidx/compose/runtime/KeyInfo;

    move-result-object v5

    if-nez v3, :cond_c

    if-eqz v5, :cond_c

    .line 2173
    invoke-virtual {v12, v5}, Landroidx/compose/runtime/Pending;->recordUsed(Landroidx/compose/runtime/KeyInfo;)Z

    .line 2178
    invoke-virtual {v5}, Landroidx/compose/runtime/KeyInfo;->getLocation()I

    move-result v1

    .line 2182
    invoke-virtual {v12, v5}, Landroidx/compose/runtime/Pending;->nodePositionOf(Landroidx/compose/runtime/KeyInfo;)I

    move-result v2

    invoke-virtual {v12}, Landroidx/compose/runtime/Pending;->getStartIndex()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    .line 2185
    invoke-virtual {v12, v5}, Landroidx/compose/runtime/Pending;->slotPositionOf(Landroidx/compose/runtime/KeyInfo;)I

    move-result v2

    .line 2186
    invoke-virtual {v12}, Landroidx/compose/runtime/Pending;->getGroupIndex()I

    move-result v3

    sub-int v3, v2, v3

    .line 2187
    invoke-virtual {v12}, Landroidx/compose/runtime/Pending;->getGroupIndex()I

    move-result v5

    invoke-virtual {v12, v2, v5}, Landroidx/compose/runtime/Pending;->registerMoveSlot(II)V

    .line 2188
    invoke-direct {p0, v1}, Landroidx/compose/runtime/ComposerImpl;->recordReaderMoving(I)V

    iget-object v2, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 2189
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/SlotReader;->reposition(I)V

    if-lez v3, :cond_b

    .line 2192
    new-instance v1, Landroidx/compose/runtime/ComposerImpl$start$2;

    invoke-direct {v1, v3}, Landroidx/compose/runtime/ComposerImpl$start$2;-><init>(I)V

    invoke-direct {p0, v1}, Landroidx/compose/runtime/ComposerImpl;->recordSlotEditingOperation(Lkotlin/jvm/functions/Function3;)V

    .line 2196
    :cond_b
    invoke-direct {p0, v9, v4}, Landroidx/compose/runtime/ComposerImpl;->startReaderGroup(ZLjava/lang/Object;)V

    goto/16 :goto_7

    :cond_c
    iget-object v3, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 2201
    invoke-virtual {v3}, Landroidx/compose/runtime/SlotReader;->beginEmpty()V

    iput-boolean v8, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    iput-object v11, v0, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 2204
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->ensureWriter()V

    iget-object v3, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    .line 2205
    invoke-virtual {v3}, Landroidx/compose/runtime/SlotWriter;->beginInsert()V

    iget-object v3, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    .line 2206
    invoke-virtual {v3}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    move-result v3

    if-eqz v9, :cond_d

    iget-object v1, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 2208
    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, p1, v4}, Landroidx/compose/runtime/SlotWriter;->startNode(ILjava/lang/Object;)V

    goto :goto_5

    :cond_d
    if-eqz v4, :cond_f

    iget-object v5, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    if-nez v1, :cond_e

    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 2209
    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    :cond_e
    invoke-virtual {v5, p1, v1, v4}, Landroidx/compose/runtime/SlotWriter;->startData(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_5

    :cond_f
    iget-object v4, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    if-nez v1, :cond_10

    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 2210
    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    :cond_10
    invoke-virtual {v4, p1, v1}, Landroidx/compose/runtime/SlotWriter;->startGroup(ILjava/lang/Object;)V

    :goto_5
    iget-object v1, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    .line 2212
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/SlotWriter;->anchor(I)Landroidx/compose/runtime/Anchor;

    move-result-object v1

    iput-object v1, v0, Landroidx/compose/runtime/ComposerImpl;->insertAnchor:Landroidx/compose/runtime/Anchor;

    .line 2213
    new-instance v8, Landroidx/compose/runtime/KeyInfo;

    .line 2215
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 2216
    invoke-direct {p0, v3}, Landroidx/compose/runtime/ComposerImpl;->insertedGroupVirtualIndex(I)I

    move-result v5

    const/4 v6, -0x1

    const/4 v10, 0x0

    move-object v1, v8

    move v2, p1

    move-object v3, v4

    move v4, v5

    move v5, v6

    move v6, v10

    .line 2213
    invoke-direct/range {v1 .. v6}, Landroidx/compose/runtime/KeyInfo;-><init>(ILjava/lang/Object;III)V

    iget v1, v0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    .line 2220
    invoke-virtual {v12}, Landroidx/compose/runtime/Pending;->getStartIndex()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v12, v8, v1}, Landroidx/compose/runtime/Pending;->registerInsert(Landroidx/compose/runtime/KeyInfo;I)V

    .line 2221
    invoke-virtual {v12, v8}, Landroidx/compose/runtime/Pending;->recordUsed(Landroidx/compose/runtime/KeyInfo;)Z

    .line 2222
    new-instance v11, Landroidx/compose/runtime/Pending;

    .line 2223
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v9, :cond_11

    goto :goto_6

    :cond_11
    iget v7, v0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    .line 2222
    :goto_6
    invoke-direct {v11, v1, v7}, Landroidx/compose/runtime/Pending;-><init>(Ljava/util/List;I)V

    .line 2229
    :cond_12
    :goto_7
    invoke-direct {p0, v9, v11}, Landroidx/compose/runtime/ComposerImpl;->enterGroup(ZLandroidx/compose/runtime/Pending;)V

    return-void
.end method

.method private final startGroup(I)V
    .locals 2

    .line 1566
    sget-object v0, Landroidx/compose/runtime/GroupKind;->Companion:Landroidx/compose/runtime/GroupKind$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/GroupKind$Companion;->getGroup-ULZAiWs()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, v1}, Landroidx/compose/runtime/ComposerImpl;->start-BaiHCIY(ILjava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method private final startGroup(ILjava/lang/Object;)V
    .locals 2

    .line 1568
    sget-object v0, Landroidx/compose/runtime/GroupKind;->Companion:Landroidx/compose/runtime/GroupKind$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/GroupKind$Companion;->getGroup-ULZAiWs()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/compose/runtime/ComposerImpl;->start-BaiHCIY(ILjava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method private final startReaderGroup(ZLjava/lang/Object;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 2110
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotReader;->startNode()V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    iget-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 2112
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotReader;->getGroupAux()Ljava/lang/Object;

    move-result-object p1

    if-eq p1, p2, :cond_1

    .line 2113
    new-instance p1, Landroidx/compose/runtime/ComposerImpl$startReaderGroup$1;

    invoke-direct {p1, p2}, Landroidx/compose/runtime/ComposerImpl$startReaderGroup$1;-><init>(Ljava/lang/Object;)V

    const/4 p2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, p2, v0}, Landroidx/compose/runtime/ComposerImpl;->recordSlotTableOperation$default(Landroidx/compose/runtime/ComposerImpl;ZLkotlin/jvm/functions/Function3;ILjava/lang/Object;)V

    :cond_1
    iget-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 2117
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotReader;->startGroup()V

    :goto_0
    return-void
.end method

.method private final startRoot()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    .line 1427
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->openReader()Landroidx/compose/runtime/SlotReader;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    const/16 v0, 0x64

    .line 1428
    invoke-direct {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->startGroup(I)V

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    .line 1431
    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionContext;->startComposing$runtime_release()V

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    .line 1432
    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionContext;->getCompositionLocalScope$runtime_release()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->parentProvider:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalidStack:Landroidx/compose/runtime/IntStack;

    iget-boolean v1, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z

    .line 1433
    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->access$asInt(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/IntStack;->push(I)V

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->parentProvider:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 1434
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->forceRecomposeScopes:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    .line 1437
    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionContext;->getCollectingParameterInformation$runtime_release()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->forceRecomposeScopes:Z

    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->parentProvider:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 1439
    invoke-static {}, Landroidx/compose/runtime/tooling/InspectionTablesKt;->getLocalInspectionTables()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/runtime/CompositionLocalMapKt;->read(Landroidx/compose/runtime/PersistentCompositionLocalMap;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    .line 1440
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    .line 1441
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/CompositionContext;->recordInspectionTable$runtime_release(Ljava/util/Set;)V

    :cond_1
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    .line 1443
    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionContext;->getCompoundHashKey$runtime_release()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->startGroup(I)V

    return-void
.end method

.method private final updateCompoundKeyWhenWeEnterGroup(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    const/16 p2, 0xcf

    if-ne p1, p2, :cond_0

    sget-object p2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 4085
    invoke-virtual {p2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 4086
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updateCompoundKeyWhenWeEnterGroupKeyHash(I)V

    goto :goto_0

    .line 4088
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updateCompoundKeyWhenWeEnterGroupKeyHash(I)V

    goto :goto_0

    .line 4089
    :cond_1
    instance-of p1, p2, Ljava/lang/Enum;

    if-eqz p1, :cond_2

    .line 4090
    check-cast p2, Ljava/lang/Enum;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updateCompoundKeyWhenWeEnterGroupKeyHash(I)V

    goto :goto_0

    .line 4092
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updateCompoundKeyWhenWeEnterGroupKeyHash(I)V

    :goto_0
    return-void
.end method

.method private final updateCompoundKeyWhenWeEnterGroupKeyHash(I)V
    .locals 2

    .line 4096
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getCompoundKeyHash()I

    move-result v0

    const/4 v1, 0x3

    .line 26
    invoke-static {v0, v1}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v0

    xor-int/2addr p1, v0

    iput p1, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    return-void
.end method

.method private final updateCompoundKeyWhenWeExitGroup(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    const/16 p2, 0xcf

    if-ne p1, p2, :cond_0

    sget-object p2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 4101
    invoke-virtual {p2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 4102
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updateCompoundKeyWhenWeExitGroupKeyHash(I)V

    goto :goto_0

    .line 4104
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updateCompoundKeyWhenWeExitGroupKeyHash(I)V

    goto :goto_0

    .line 4105
    :cond_1
    instance-of p1, p2, Ljava/lang/Enum;

    if-eqz p1, :cond_2

    .line 4106
    check-cast p2, Ljava/lang/Enum;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updateCompoundKeyWhenWeExitGroupKeyHash(I)V

    goto :goto_0

    .line 4108
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updateCompoundKeyWhenWeExitGroupKeyHash(I)V

    :goto_0
    return-void
.end method

.method private final updateCompoundKeyWhenWeExitGroupKeyHash(I)V
    .locals 1

    .line 4112
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getCompoundKeyHash()I

    move-result v0

    xor-int/2addr p1, v0

    const/4 v0, 0x3

    .line 22
    invoke-static {p1, v0}, Ljava/lang/Integer;->rotateRight(II)I

    move-result p1

    iput p1, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    return-void
.end method

.method private final updateNodeCount(II)V
    .locals 7

    .line 2609
    invoke-direct {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updatedNodeCount(I)I

    move-result v0

    if-eq v0, p2, :cond_3

    if-gez p1, :cond_1

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeCountVirtualOverrides:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 2612
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeCountVirtualOverrides:Ljava/util/HashMap;

    .line 2611
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 2616
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeCountOverrides:[I

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 2619
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getSize()I

    move-result v0

    new-array v0, v0, [I

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, v0

    .line 2620
    invoke-static/range {v1 .. v6}, Lkotlin/collections/ArraysKt;->fill$default([IIIIILjava/lang/Object;)V

    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeCountOverrides:[I

    .line 2624
    :cond_2
    aput p2, v0, p1

    :cond_3
    :goto_0
    return-void
.end method

.method private final updateNodeCountOverrides(II)V
    .locals 5

    .line 2529
    invoke-direct {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updatedNodeCount(I)I

    move-result v0

    if-eq v0, p2, :cond_3

    sub-int/2addr p2, v0

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->pendingStack:Landroidx/compose/runtime/Stack;

    .line 2535
    invoke-virtual {v0}, Landroidx/compose/runtime/Stack;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    const/4 v1, -0x1

    if-eq p1, v1, :cond_3

    .line 2537
    invoke-direct {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updatedNodeCount(I)I

    move-result v2

    add-int/2addr v2, p2

    .line 2538
    invoke-direct {p0, p1, v2}, Landroidx/compose/runtime/ComposerImpl;->updateNodeCount(II)V

    move v3, v0

    :goto_1
    if-ge v1, v3, :cond_1

    iget-object v4, p0, Landroidx/compose/runtime/ComposerImpl;->pendingStack:Landroidx/compose/runtime/Stack;

    .line 2540
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/Stack;->peek(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/runtime/Pending;

    if-eqz v4, :cond_0

    .line 2541
    invoke-virtual {v4, p1, v2}, Landroidx/compose/runtime/Pending;->updateNodeCount(II)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, -0x1

    move v0, v3

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-gez p1, :cond_2

    iget-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 2548
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotReader;->getParent()I

    move-result p1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 2550
    invoke-virtual {v1, p1}, Landroidx/compose/runtime/SlotReader;->isNode(I)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 2551
    invoke-virtual {v1, p1}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    move-result p1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private final updateProviderMapGroup(Landroidx/compose/runtime/PersistentCompositionLocalMap;Landroidx/compose/runtime/PersistentCompositionLocalMap;)Landroidx/compose/runtime/PersistentCompositionLocalMap;
    .locals 2

    .line 73
    invoke-interface {p1}, Landroidx/compose/runtime/PersistentCompositionLocalMap;->builder()Landroidx/compose/runtime/PersistentCompositionLocalMap$Builder;

    move-result-object p1

    .line 1979
    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 73
    invoke-interface {p1}, Landroidx/compose/runtime/PersistentCompositionLocalMap$Builder;->build()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object p1

    const/16 v0, 0xcc

    .line 1980
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->getProviderMaps()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroidx/compose/runtime/ComposerImpl;->startGroup(ILjava/lang/Object;)V

    .line 1981
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    .line 1982
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    .line 1983
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->endGroup()V

    return-object p1
.end method

.method private final updatedNodeCount(I)I
    .locals 1

    if-gez p1, :cond_1

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeCountVirtualOverrides:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 2599
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :cond_1
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeCountOverrides:[I

    if-eqz v0, :cond_2

    .line 2602
    aget v0, v0, p1

    if-ltz v0, :cond_2

    return v0

    :cond_2
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 2605
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotReader;->nodeCount(I)I

    move-result p1

    return p1
.end method

.method private final validateNodeExpected()V
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeExpected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeExpected:Z

    return-void

    :cond_0
    const-string v0, "A call to createNode(), emitNode() or useNode() expected was not expected"

    .line 4550
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method private final validateNodeNotExpected()V
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeExpected:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "A call to createNode(), emitNode() or useNode() expected"

    .line 4550
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V
    .locals 1

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1710
    new-instance v0, Landroidx/compose/runtime/ComposerImpl$apply$operation$1;

    invoke-direct {v0, p2, p1}, Landroidx/compose/runtime/ComposerImpl$apply$operation$1;-><init>(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;)V

    .line 1714
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->recordFixup(Lkotlin/jvm/functions/Function3;)V

    goto :goto_0

    .line 1715
    :cond_0
    invoke-direct {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->recordApplierOperation(Lkotlin/jvm/functions/Function3;)V

    :goto_0
    return-void
.end method

.method public buildContext()Landroidx/compose/runtime/CompositionContext;
    .locals 4

    const/16 v0, 0xce

    .line 2055
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->getReference()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroidx/compose/runtime/ComposerImpl;->startGroup(ILjava/lang/Object;)V

    .line 2056
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2057
    invoke-static {v0, v2, v3, v1}, Landroidx/compose/runtime/SlotWriter;->markGroup$default(Landroidx/compose/runtime/SlotWriter;IILjava/lang/Object;)V

    .line 2059
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->nextSlot()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Landroidx/compose/runtime/ComposerImpl$CompositionContextHolder;

    if-eqz v2, :cond_1

    move-object v1, v0

    check-cast v1, Landroidx/compose/runtime/ComposerImpl$CompositionContextHolder;

    :cond_1
    if-nez v1, :cond_2

    .line 2061
    new-instance v1, Landroidx/compose/runtime/ComposerImpl$CompositionContextHolder;

    .line 2062
    new-instance v0, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;

    .line 2063
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getCompoundKeyHash()I

    move-result v2

    iget-boolean v3, p0, Landroidx/compose/runtime/ComposerImpl;->forceRecomposeScopes:Z

    .line 2062
    invoke-direct {v0, p0, v2, v3}, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;-><init>(Landroidx/compose/runtime/ComposerImpl;IZ)V

    .line 2061
    invoke-direct {v1, v0}, Landroidx/compose/runtime/ComposerImpl$CompositionContextHolder;-><init>(Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;)V

    .line 2067
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V

    .line 2069
    :cond_2
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl$CompositionContextHolder;->getRef()Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;

    move-result-object v0

    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;->updateCompositionLocalScope(Landroidx/compose/runtime/PersistentCompositionLocalMap;)V

    .line 2070
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->endGroup()V

    .line 2072
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl$CompositionContextHolder;->getRef()Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;

    move-result-object v0

    return-object v0
.end method

.method public changed(F)Z
    .locals 2

    .line 1811
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->nextSlot()Ljava/lang/Object;

    move-result-object v0

    .line 1812
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_0

    .line 1813
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    cmpg-float v0, p1, v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1816
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public changed(I)Z
    .locals 2

    .line 1844
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->nextSlot()Ljava/lang/Object;

    move-result-object v0

    .line 1845
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 1846
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1849
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public changed(J)Z
    .locals 2

    .line 1822
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->nextSlot()Ljava/lang/Object;

    move-result-object v0

    .line 1823
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 1824
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1827
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public changed(Ljava/lang/Object;)Z
    .locals 1

    .line 1747
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->nextSlot()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1748
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public changed(Z)Z
    .locals 2

    .line 1800
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->nextSlot()Ljava/lang/Object;

    move-result-object v0

    .line 1801
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 1802
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1805
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public changedInstance(Ljava/lang/Object;)Z
    .locals 1

    .line 1757
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->nextSlot()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 1758
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final changesApplied$runtime_release()V
    .locals 1

    .line 1492
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->createFreshInsertTable()V

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->providerUpdates:Landroidx/compose/runtime/collection/IntMap;

    .line 1493
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/IntMap;->clear()V

    return-void
.end method

.method public collectParameterInformation()V
    .locals 1

    .line 0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->forceRecomposeScopes:Z

    return-void
.end method

.method public final composeContent$runtime_release(Landroidx/compose/runtime/collection/IdentityArrayMap;Lkotlin/jvm/functions/Function2;)V
    .locals 1

    const-string v0, "invalidationsRequested"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->changes:Ljava/util/List;

    .line 3272
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3273
    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/ComposerImpl;->doCompose(Landroidx/compose/runtime/collection/IdentityArrayMap;Lkotlin/jvm/functions/Function2;)V

    return-void

    :cond_0
    const-string p1, "Expected applyChanges() to have been called"

    .line 4550
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method public consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2049
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/compose/runtime/CompositionLocalMapKt;->read(Landroidx/compose/runtime/PersistentCompositionLocalMap;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public createNode(Lkotlin/jvm/functions/Function0;)V
    .locals 3

    const-string v0, "factory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1603
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->validateNodeExpected()V

    .line 1604
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndexStack:Landroidx/compose/runtime/IntStack;

    .line 1605
    invoke-virtual {v0}, Landroidx/compose/runtime/IntStack;->peek()I

    move-result v0

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    .line 1606
    invoke-virtual {v1}, Landroidx/compose/runtime/SlotWriter;->getParent()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/SlotWriter;->anchor(I)Landroidx/compose/runtime/Anchor;

    move-result-object v1

    iget v2, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    .line 1608
    new-instance v2, Landroidx/compose/runtime/ComposerImpl$createNode$2;

    invoke-direct {v2, p1, v1, v0}, Landroidx/compose/runtime/ComposerImpl$createNode$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Anchor;I)V

    invoke-direct {p0, v2}, Landroidx/compose/runtime/ComposerImpl;->recordFixup(Lkotlin/jvm/functions/Function3;)V

    .line 1616
    new-instance p1, Landroidx/compose/runtime/ComposerImpl$createNode$3;

    invoke-direct {p1, v1, v0}, Landroidx/compose/runtime/ComposerImpl$createNode$3;-><init>(Landroidx/compose/runtime/Anchor;I)V

    invoke-direct {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->recordInsertUpFixup(Lkotlin/jvm/functions/Function3;)V

    return-void

    :cond_0
    const-string p1, "createNode() can only be called when inserting"

    .line 4550
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method public deactivateToEndGroup(Z)V
    .locals 4

    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_5

    .line 2769
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v0

    if-nez v0, :cond_4

    if-nez p1, :cond_1

    .line 2771
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->skipReaderToGroupEnd()V

    return-void

    :cond_1
    iget-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 2774
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotReader;->getCurrentGroup()I

    move-result p1

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 2775
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getCurrentEnd()I

    move-result v0

    move v1, p1

    :goto_1
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 2777
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/SlotReader;->isNode(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 2778
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/SlotReader;->node(I)Ljava/lang/Object;

    move-result-object v2

    .line 2779
    instance-of v3, v2, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    if-eqz v3, :cond_2

    .line 2780
    new-instance v3, Landroidx/compose/runtime/ComposerImpl$deactivateToEndGroup$2;

    invoke-direct {v3, v2}, Landroidx/compose/runtime/ComposerImpl$deactivateToEndGroup$2;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v3}, Landroidx/compose/runtime/ComposerImpl;->record(Lkotlin/jvm/functions/Function3;)V

    :cond_2
    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 2785
    new-instance v3, Landroidx/compose/runtime/ComposerImpl$deactivateToEndGroup$3;

    invoke-direct {v3, p0, v1}, Landroidx/compose/runtime/ComposerImpl$deactivateToEndGroup$3;-><init>(Landroidx/compose/runtime/ComposerImpl;I)V

    invoke-virtual {v2, v1, v3}, Landroidx/compose/runtime/SlotReader;->forEachData$runtime_release(ILkotlin/jvm/functions/Function2;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    .line 2810
    invoke-static {v1, p1, v0}, Landroidx/compose/runtime/ComposerKt;->access$removeRange(Ljava/util/List;II)V

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 2811
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotReader;->reposition(I)V

    iget-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 2812
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotReader;->skipToGroupEnd()V

    :cond_4
    return-void

    :cond_5
    const-string p1, "No nodes can be emitted before calling dactivateToEndGroup"

    .line 4550
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method public disableReusing()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    return-void
.end method

.method public final dispose$runtime_release()V
    .locals 3

    .line 46
    sget-object v0, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    const-string v1, "Compose:Composer.dispose"

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/Trace;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    .line 1536
    invoke-virtual {v2, p0}, Landroidx/compose/runtime/CompositionContext;->unregisterComposer$runtime_release(Landroidx/compose/runtime/Composer;)V

    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->invalidateStack:Landroidx/compose/runtime/Stack;

    .line 1537
    invoke-virtual {v2}, Landroidx/compose/runtime/Stack;->clear()V

    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    .line 1538
    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->changes:Ljava/util/List;

    .line 1539
    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->providerUpdates:Landroidx/compose/runtime/collection/IntMap;

    .line 1540
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/IntMap;->clear()V

    .line 1541
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v2

    invoke-interface {v2}, Landroidx/compose/runtime/Applier;->clear()V

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/compose/runtime/ComposerImpl;->isDisposed:Z

    .line 1543
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/Trace;->endSection(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    sget-object v2, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/Trace;->endSection(Ljava/lang/Object;)V

    throw v0
.end method

.method public enableReusing()V
    .locals 1

    .line 0
    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->reusingGroup:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    return-void
.end method

.method public endDefaults()V
    .locals 2

    .line 1358
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->endGroup()V

    .line 1359
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getCurrentRecomposeScope$runtime_release()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1360
    invoke-virtual {v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->getUsed()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 1361
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/RecomposeScopeImpl;->setDefaultsInScope(Z)V

    :cond_0
    return-void
.end method

.method public endMovableGroup()V
    .locals 0

    .line 1419
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->endGroup()V

    return-void
.end method

.method public endNode()V
    .locals 1

    const/4 v0, 0x1

    .line 1645
    invoke-direct {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-void
.end method

.method public endProviders()V
    .locals 1

    .line 2042
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->endGroup()V

    .line 2043
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->endGroup()V

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalidStack:Landroidx/compose/runtime/IntStack;

    .line 2044
    invoke-virtual {v0}, Landroidx/compose/runtime/IntStack;->pop()I

    move-result v0

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->access$asBool(I)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    return-void
.end method

.method public endReplaceableGroup()V
    .locals 0

    .line 1335
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->endGroup()V

    return-void
.end method

.method public endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;
    .locals 5

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->invalidateStack:Landroidx/compose/runtime/Stack;

    .line 2862
    invoke-virtual {v0}, Landroidx/compose/runtime/Stack;->isNotEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->invalidateStack:Landroidx/compose/runtime/Stack;

    invoke-virtual {v0}, Landroidx/compose/runtime/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/RecomposeScopeImpl;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    goto :goto_1

    .line 2864
    :cond_1
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/RecomposeScopeImpl;->setRequiresRecompose(Z)V

    :goto_1
    if-eqz v0, :cond_2

    iget v3, p0, Landroidx/compose/runtime/ComposerImpl;->compositionToken:I

    .line 2865
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/RecomposeScopeImpl;->end(I)Lkotlin/jvm/functions/Function1;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2866
    new-instance v4, Landroidx/compose/runtime/ComposerImpl$endRestartGroup$1$1;

    invoke-direct {v4, v3, p0}, Landroidx/compose/runtime/ComposerImpl$endRestartGroup$1$1;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/ComposerImpl;)V

    invoke-direct {p0, v4}, Landroidx/compose/runtime/ComposerImpl;->record(Lkotlin/jvm/functions/Function3;)V

    :cond_2
    if-eqz v0, :cond_6

    .line 2869
    invoke-virtual {v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->getSkipped$runtime_release()Z

    move-result v3

    if-nez v3, :cond_6

    .line 2870
    invoke-virtual {v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->getUsed()Z

    move-result v3

    if-nez v3, :cond_3

    iget-boolean v3, p0, Landroidx/compose/runtime/ComposerImpl;->forceRecomposeScopes:Z

    if-eqz v3, :cond_6

    .line 2872
    :cond_3
    invoke-virtual {v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->getAnchor()Landroidx/compose/runtime/Anchor;

    move-result-object v1

    if-nez v1, :cond_5

    .line 2873
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    .line 2874
    invoke-virtual {v1}, Landroidx/compose/runtime/SlotWriter;->getParent()I

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/compose/runtime/SlotWriter;->anchor(I)Landroidx/compose/runtime/Anchor;

    move-result-object v1

    goto :goto_2

    :cond_4
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 2876
    invoke-virtual {v1}, Landroidx/compose/runtime/SlotReader;->getParent()I

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/compose/runtime/SlotReader;->anchor(I)Landroidx/compose/runtime/Anchor;

    move-result-object v1

    .line 2873
    :goto_2
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/RecomposeScopeImpl;->setAnchor(Landroidx/compose/runtime/Anchor;)V

    .line 2879
    :cond_5
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/RecomposeScopeImpl;->setDefaultsInvalid(Z)V

    move-object v1, v0

    .line 2884
    :cond_6
    invoke-direct {p0, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-object v1
.end method

.method public endReusableGroup()V
    .locals 3

    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 1657
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getParent()I

    move-result v0

    iget v2, p0, Landroidx/compose/runtime/ComposerImpl;->reusingGroup:I

    if-ne v0, v2, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->reusingGroup:I

    iput-boolean v1, p0, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    .line 1661
    :cond_0
    invoke-direct {p0, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-void
.end method

.method public getApplier()Landroidx/compose/runtime/Applier;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/compose/runtime/Applier;

    return-object v0
.end method

.method public getApplyCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    .line 1296
    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionContext;->getEffectCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    return-object v0
.end method

.method public final getAreChildrenComposing$runtime_release()Z
    .locals 1

    .line 0
    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->childrenComposing:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getComposition()Landroidx/compose/runtime/ControlledComposition;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->composition:Landroidx/compose/runtime/ControlledComposition;

    return-object v0
.end method

.method public getCompositionData()Landroidx/compose/runtime/tooling/CompositionData;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    return-object v0
.end method

.method public getCompoundKeyHash()I
    .locals 1

    .line 0
    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    return v0
.end method

.method public getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;
    .locals 1

    .line 1931
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v0

    return-object v0
.end method

.method public final getCurrentRecomposeScope$runtime_release()Landroidx/compose/runtime/RecomposeScopeImpl;
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->invalidateStack:Landroidx/compose/runtime/Stack;

    iget v1, p0, Landroidx/compose/runtime/ComposerImpl;->childrenComposing:I

    if-nez v1, :cond_0

    .line 2086
    invoke-virtual {v0}, Landroidx/compose/runtime/Stack;->isNotEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/compose/runtime/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/RecomposeScopeImpl;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getDefaultsInvalid()Z
    .locals 2

    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 1369
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getCurrentRecomposeScope$runtime_release()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->getDefaultsInvalid()Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final getDeferredChanges$runtime_release()Ljava/util/List;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->deferredChanges:Ljava/util/List;

    return-object v0
.end method

.method public getInserting()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    return v0
.end method

.method public getRecomposeScope()Landroidx/compose/runtime/RecomposeScope;
    .locals 1

    .line 4115
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getCurrentRecomposeScope$runtime_release()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    return-object v0
.end method

.method public getSkipping()Z
    .locals 1

    .line 1511
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z

    if-nez v0, :cond_0

    .line 1513
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getCurrentRecomposeScope$runtime_release()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->getRequiresRecompose()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->forciblyRecompose:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public insertMovableContentReferences(Ljava/util/List;)V
    .locals 1

    const-string v0, "references"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2964
    :try_start_0
    invoke-direct {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->insertMovableContentGuarded(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2968
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->cleanUpCompose()V

    return-void

    :catchall_0
    move-exception p1

    .line 2971
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->abortRoot()V

    throw p1
.end method

.method public final isComposing$runtime_release()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    return v0
.end method

.method public final nextSlot()Ljava/lang/Object;
    .locals 2

    .line 1732
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1733
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->validateNodeNotExpected()V

    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 1734
    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 1735
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->next()Ljava/lang/Object;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    if-eqz v1, :cond_1

    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final prepareCompose$runtime_release(Lkotlin/jvm/functions/Function0;)V
    .locals 2

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    const/4 v0, 0x0

    .line 3280
    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    .line 3282
    throw p1

    :cond_0
    const-string p1, "Preparing a composition while composing is not supported"

    .line 4550
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method public final recompose$runtime_release(Landroidx/compose/runtime/collection/IdentityArrayMap;)Z
    .locals 1

    const-string v0, "invalidationsRequested"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->changes:Ljava/util/List;

    .line 3293
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3299
    invoke-virtual {p1}, Landroidx/compose/runtime/collection/IdentityArrayMap;->isNotEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    .line 3300
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->forciblyRecompose:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 3303
    invoke-direct {p0, p1, v0}, Landroidx/compose/runtime/ComposerImpl;->doCompose(Landroidx/compose/runtime/collection/IdentityArrayMap;Lkotlin/jvm/functions/Function2;)V

    iget-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->changes:Ljava/util/List;

    .line 3304
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_2
    const-string p1, "Expected applyChanges() to have been called"

    .line 4550
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method public recordSideEffect(Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const-string v0, "effect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1922
    new-instance v0, Landroidx/compose/runtime/ComposerImpl$recordSideEffect$1;

    invoke-direct {v0, p1}, Landroidx/compose/runtime/ComposerImpl$recordSideEffect$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-direct {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->record(Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method public recordUsed(Landroidx/compose/runtime/RecomposeScope;)V
    .locals 1

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4119
    instance-of v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/compose/runtime/RecomposeScopeImpl;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->setUsed(Z)V

    :goto_1
    return-void
.end method

.method public rememberedValue()Ljava/lang/Object;
    .locals 1

    .line 4117
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->nextSlot()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public skipCurrentGroup()V
    .locals 6

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    .line 2728
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2729
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->skipGroup()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 2732
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getGroupKey()I

    move-result v1

    .line 2733
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getGroupObjectKey()Ljava/lang/Object;

    move-result-object v2

    .line 2734
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getGroupAux()Ljava/lang/Object;

    move-result-object v3

    .line 2735
    invoke-direct {p0, v1, v2, v3}, Landroidx/compose/runtime/ComposerImpl;->updateCompoundKeyWhenWeEnterGroup(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 2736
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->isNode()Z

    move-result v4

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Landroidx/compose/runtime/ComposerImpl;->startReaderGroup(ZLjava/lang/Object;)V

    .line 2737
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->recomposeToGroupEnd()V

    .line 2738
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->endGroup()V

    .line 2739
    invoke-direct {p0, v1, v2, v3}, Landroidx/compose/runtime/ComposerImpl;->updateCompoundKeyWhenWeExitGroup(ILjava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public skipToGroupEnd()V
    .locals 1

    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 2756
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getCurrentRecomposeScope$runtime_release()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->scopeSkipped()V

    :cond_1
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    .line 2757
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2758
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->skipReaderToGroupEnd()V

    goto :goto_1

    .line 2760
    :cond_2
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->recomposeToGroupEnd()V

    :goto_1
    return-void

    :cond_3
    const-string v0, "No nodes can be emitted before calling skipAndEndGroup"

    .line 4550
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method public startDefaults()V
    .locals 3

    .line 1346
    sget-object v0, Landroidx/compose/runtime/GroupKind;->Companion:Landroidx/compose/runtime/GroupKind$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/GroupKind$Companion;->getGroup-ULZAiWs()I

    move-result v0

    const/16 v1, -0x7f

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0, v2}, Landroidx/compose/runtime/ComposerImpl;->start-BaiHCIY(ILjava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public startMovableGroup(ILjava/lang/Object;)V
    .locals 2

    .line 1401
    sget-object v0, Landroidx/compose/runtime/GroupKind;->Companion:Landroidx/compose/runtime/GroupKind$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/GroupKind$Companion;->getGroup-ULZAiWs()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/compose/runtime/ComposerImpl;->start-BaiHCIY(ILjava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public startNode()V
    .locals 3

    .line 1588
    sget-object v0, Landroidx/compose/runtime/GroupKind;->Companion:Landroidx/compose/runtime/GroupKind$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/GroupKind$Companion;->getNode-ULZAiWs()I

    move-result v0

    const/16 v1, 0x7d

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0, v2}, Landroidx/compose/runtime/ComposerImpl;->start-BaiHCIY(ILjava/lang/Object;ILjava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeExpected:Z

    return-void
.end method

.method public startProviders([Landroidx/compose/runtime/ProvidedValue;)V
    .locals 6

    const-string v0, "values"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1989
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v0

    const/16 v1, 0xc9

    .line 1990
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->getProvider()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroidx/compose/runtime/ComposerImpl;->startGroup(ILjava/lang/Object;)V

    const/16 v1, 0xcb

    .line 1994
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->getProviderValues()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroidx/compose/runtime/ComposerImpl;->startGroup(ILjava/lang/Object;)V

    .line 1995
    new-instance v1, Landroidx/compose/runtime/ComposerImpl$startProviders$currentProviders$1;

    invoke-direct {v1, p1, v0}, Landroidx/compose/runtime/ComposerImpl$startProviders$currentProviders$1;-><init>([Landroidx/compose/runtime/ProvidedValue;Landroidx/compose/runtime/PersistentCompositionLocalMap;)V

    invoke-static {p0, v1}, Landroidx/compose/runtime/ActualJvm_jvmKt;->invokeComposableForResult(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 1998
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->endGroup()V

    .line 2001
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 2002
    invoke-direct {p0, v0, p1}, Landroidx/compose/runtime/ComposerImpl;->updateProviderMapGroup(Landroidx/compose/runtime/PersistentCompositionLocalMap;Landroidx/compose/runtime/PersistentCompositionLocalMap;)Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object p1

    iput-boolean v2, p0, Landroidx/compose/runtime/ComposerImpl;->writerHasAProvider:Z

    goto :goto_1

    :cond_0
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 2007
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/SlotReader;->groupGet(I)Ljava/lang/Object;

    move-result-object v1

    const-string v4, "null cannot be cast to non-null type androidx.compose.runtime.PersistentCompositionLocalMap"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/compose/runtime/PersistentCompositionLocalMap;

    iget-object v5, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 2010
    invoke-virtual {v5, v2}, Landroidx/compose/runtime/SlotReader;->groupGet(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 2013
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 2025
    :cond_1
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->skipGroup()V

    move-object p1, v1

    goto :goto_1

    .line 2014
    :cond_2
    :goto_0
    invoke-direct {p0, v0, p1}, Landroidx/compose/runtime/ComposerImpl;->updateProviderMapGroup(Landroidx/compose/runtime/PersistentCompositionLocalMap;Landroidx/compose/runtime/PersistentCompositionLocalMap;)Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object p1

    .line 2022
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v3, v0, 0x1

    :goto_1
    if-eqz v3, :cond_3

    .line 2031
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->providerUpdates:Landroidx/compose/runtime/collection/IntMap;

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 2032
    invoke-virtual {v1}, Landroidx/compose/runtime/SlotReader;->getCurrentGroup()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroidx/compose/runtime/collection/IntMap;->set(ILjava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalidStack:Landroidx/compose/runtime/IntStack;

    iget-boolean v1, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z

    .line 2034
    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->access$asInt(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/IntStack;->push(I)V

    iput-boolean v3, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z

    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 2037
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->getCompositionLocalMap()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/compose/runtime/GroupKind;->Companion:Landroidx/compose/runtime/GroupKind$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/GroupKind$Companion;->getGroup-ULZAiWs()I

    move-result v1

    const/16 v2, 0xca

    invoke-direct {p0, v2, v0, v1, p1}, Landroidx/compose/runtime/ComposerImpl;->start-BaiHCIY(ILjava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public startReplaceableGroup(I)V
    .locals 2

    .line 1320
    sget-object v0, Landroidx/compose/runtime/GroupKind;->Companion:Landroidx/compose/runtime/GroupKind$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/GroupKind$Companion;->getGroup-ULZAiWs()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, v1}, Landroidx/compose/runtime/ComposerImpl;->start-BaiHCIY(ILjava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public startRestartGroup(I)Landroidx/compose/runtime/Composer;
    .locals 2

    .line 2824
    sget-object v0, Landroidx/compose/runtime/GroupKind;->Companion:Landroidx/compose/runtime/GroupKind$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/GroupKind$Companion;->getGroup-ULZAiWs()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, v1}, Landroidx/compose/runtime/ComposerImpl;->start-BaiHCIY(ILjava/lang/Object;ILjava/lang/Object;)V

    .line 2825
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->addRecomposeScope()V

    return-object p0
.end method

.method public startReusableGroup(ILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 1648
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getGroupKey()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getGroupAux()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->reusingGroup:I

    if-gez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 1650
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getCurrentGroup()I

    move-result v0

    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->reusingGroup:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    .line 1653
    :cond_0
    sget-object v0, Landroidx/compose/runtime/GroupKind;->Companion:Landroidx/compose/runtime/GroupKind$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/GroupKind$Companion;->getGroup-ULZAiWs()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, p2}, Landroidx/compose/runtime/ComposerImpl;->start-BaiHCIY(ILjava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public startReusableNode()V
    .locals 3

    .line 1593
    sget-object v0, Landroidx/compose/runtime/GroupKind;->Companion:Landroidx/compose/runtime/GroupKind$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/GroupKind$Companion;->getReusableNode-ULZAiWs()I

    move-result v0

    const/16 v1, 0x7d

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0, v2}, Landroidx/compose/runtime/ComposerImpl;->start-BaiHCIY(ILjava/lang/Object;ILjava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeExpected:Z

    return-void
.end method

.method public final tryImminentInvalidation$runtime_release(Landroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)Z
    .locals 3

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2701
    invoke-virtual {p1}, Landroidx/compose/runtime/RecomposeScopeImpl;->getAnchor()Landroidx/compose/runtime/Anchor;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 2702
    invoke-virtual {v2}, Landroidx/compose/runtime/SlotReader;->getTable$runtime_release()Landroidx/compose/runtime/SlotTable;

    move-result-object v2

    .line 2703
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/Anchor;->toIndexFor(Landroidx/compose/runtime/SlotTable;)I

    move-result v0

    iget-boolean v2, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 2704
    invoke-virtual {v2}, Landroidx/compose/runtime/SlotReader;->getCurrentGroup()I

    move-result v2

    if-lt v0, v2, :cond_1

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    .line 2707
    invoke-static {v1, v0, p1, p2}, Landroidx/compose/runtime/ComposerKt;->access$insertIfMissing(Ljava/util/List;ILandroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public updateRememberedValue(Ljava/lang/Object;)V
    .locals 0

    .line 4118
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final updateValue(Ljava/lang/Object;)V
    .locals 3

    .line 1881
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    .line 1882
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotWriter;->update(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1883
    instance-of v0, p1, Landroidx/compose/runtime/RememberObserver;

    if-eqz v0, :cond_2

    .line 1884
    new-instance v0, Landroidx/compose/runtime/ComposerImpl$updateValue$1;

    invoke-direct {v0, p1}, Landroidx/compose/runtime/ComposerImpl$updateValue$1;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->record(Lkotlin/jvm/functions/Function3;)V

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->abandonSet:Ljava/util/Set;

    .line 1885
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 1888
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getGroupSlotIndex()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 1889
    instance-of v2, p1, Landroidx/compose/runtime/RememberObserver;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->abandonSet:Ljava/util/Set;

    .line 1890
    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1892
    :cond_1
    new-instance v2, Landroidx/compose/runtime/ComposerImpl$updateValue$2;

    invoke-direct {v2, p1, v0}, Landroidx/compose/runtime/ComposerImpl$updateValue$2;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p0, v1, v2}, Landroidx/compose/runtime/ComposerImpl;->recordSlotTableOperation(ZLkotlin/jvm/functions/Function3;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public useNode()V
    .locals 2

    .line 1630
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->validateNodeExpected()V

    .line 1631
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 1632
    invoke-direct {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->getNode(Landroidx/compose/runtime/SlotReader;)Ljava/lang/Object;

    move-result-object v0

    .line 1633
    invoke-direct {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->recordDown(Ljava/lang/Object;)V

    iget-boolean v1, p0, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    if-eqz v1, :cond_0

    .line 1635
    instance-of v0, v0, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/compose/runtime/ComposerImpl$useNode$2;->INSTANCE:Landroidx/compose/runtime/ComposerImpl$useNode$2;

    .line 1636
    invoke-direct {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->recordApplierOperation(Lkotlin/jvm/functions/Function3;)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "useNode() called while inserting"

    .line 4550
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method
