.class public final Landroidx/compose/runtime/SlotReader;
.super Ljava/lang/Object;
.source "SlotTable.kt"


# instance fields
.field private closed:Z

.field private currentEnd:I

.field private currentGroup:I

.field private currentSlot:I

.field private currentSlotEnd:I

.field private emptyCount:I

.field private final groups:[I

.field private final groupsSize:I

.field private parent:I

.field private final slots:[Ljava/lang/Object;

.field private final slotsSize:I

.field private final table:Landroidx/compose/runtime/SlotTable;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/SlotTable;)V
    .locals 2

    const-string v0, "table"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 643
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/SlotReader;->table:Landroidx/compose/runtime/SlotTable;

    .line 653
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->getGroups()[I

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .line 658
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->getGroupsSize()I

    move-result v0

    iput v0, p0, Landroidx/compose/runtime/SlotReader;->groupsSize:I

    .line 663
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->getSlots()[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/runtime/SlotReader;->slots:[Ljava/lang/Object;

    .line 668
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->getSlotsSize()I

    move-result p1

    iput p1, p0, Landroidx/compose/runtime/SlotReader;->slotsSize:I

    iput v0, p0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    const/4 p1, -0x1

    iput p1, p0, Landroidx/compose/runtime/SlotReader;->parent:I

    return-void
.end method

.method private final aux([II)Ljava/lang/Object;
    .locals 1

    .line 1073
    invoke-static {p1, p2}, Landroidx/compose/runtime/SlotTableKt;->access$hasAux([II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->slots:[Ljava/lang/Object;

    .line 1074
    invoke-static {p1, p2}, Landroidx/compose/runtime/SlotTableKt;->access$auxIndex([II)I

    move-result p1

    aget-object p1, v0, p1

    goto :goto_0

    .line 1075
    :cond_0
    sget-object p1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private final node([II)Ljava/lang/Object;
    .locals 1

    .line 1069
    invoke-static {p1, p2}, Landroidx/compose/runtime/SlotTableKt;->access$isNode([II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->slots:[Ljava/lang/Object;

    .line 1070
    invoke-static {p1, p2}, Landroidx/compose/runtime/SlotTableKt;->access$nodeIndex([II)I

    move-result p1

    aget-object p1, v0, p1

    goto :goto_0

    .line 1071
    :cond_0
    sget-object p1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private final objectKey([II)Ljava/lang/Object;
    .locals 1

    .line 1077
    invoke-static {p1, p2}, Landroidx/compose/runtime/SlotTableKt;->access$hasObjectKey([II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->slots:[Ljava/lang/Object;

    .line 1078
    invoke-static {p1, p2}, Landroidx/compose/runtime/SlotTableKt;->access$objectKeyIndex([II)I

    move-result p1

    aget-object p1, v0, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method


# virtual methods
.method public final anchor(I)Landroidx/compose/runtime/Anchor;
    .locals 3

    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->table:Landroidx/compose/runtime/SlotTable;

    .line 1065
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->getAnchors$runtime_release()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Landroidx/compose/runtime/SlotReader;->groupsSize:I

    .line 3351
    invoke-static {v0, p1, v1}, Landroidx/compose/runtime/SlotTableKt;->access$search(Ljava/util/ArrayList;II)I

    move-result v1

    if-gez v1, :cond_0

    .line 1066
    new-instance v2, Landroidx/compose/runtime/Anchor;

    invoke-direct {v2, p1}, Landroidx/compose/runtime/Anchor;-><init>(I)V

    add-int/lit8 v1, v1, 0x1

    neg-int p1, v1

    .line 3354
    invoke-virtual {v0, p1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 3356
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "get(location)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p1

    check-cast v2, Landroidx/compose/runtime/Anchor;

    :goto_0
    return-object v2
.end method

.method public final beginEmpty()V
    .locals 1

    .line 0
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    return-void
.end method

.method public final close()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/runtime/SlotReader;->closed:Z

    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->table:Landroidx/compose/runtime/SlotTable;

    .line 930
    invoke-virtual {v0, p0}, Landroidx/compose/runtime/SlotTable;->close$runtime_release(Landroidx/compose/runtime/SlotReader;)V

    return-void
.end method

.method public final containsMark(I)Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .line 847
    invoke-static {v0, p1}, Landroidx/compose/runtime/SlotTableKt;->access$containsMark([II)Z

    move-result p1

    return p1
.end method

.method public final endEmpty()V
    .locals 2

    iget v0, p0, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    return-void

    .line 920
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unbalanced begin/end empty"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final endGroup()V
    .locals 2

    iget v0, p0, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    if-nez v0, :cond_3

    iget v0, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    iget v1, p0, Landroidx/compose/runtime/SlotReader;->parent:I

    .line 1017
    invoke-static {v0, v1}, Landroidx/compose/runtime/SlotTableKt;->access$parentAnchor([II)I

    move-result v0

    iput v0, p0, Landroidx/compose/runtime/SlotReader;->parent:I

    if-gez v0, :cond_1

    iget v0, p0, Landroidx/compose/runtime/SlotReader;->groupsSize:I

    goto :goto_1

    :cond_1
    iget-object v1, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .line 1022
    invoke-static {v1, v0}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result v1

    add-int/2addr v0, v1

    :goto_1
    iput v0, p0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    goto :goto_2

    :cond_2
    const-string v0, "endGroup() not called at the end of a group"

    .line 4550
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :cond_3
    :goto_2
    return-void
.end method

.method public final extractKeys()Ljava/util/List;
    .locals 10

    .line 1031
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v1, p0, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    if-lez v1, :cond_0

    return-object v0

    :cond_0
    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    const/4 v2, 0x0

    move v8, v2

    :goto_0
    iget v2, p0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    if-ge v1, v2, :cond_2

    .line 1037
    new-instance v2, Landroidx/compose/runtime/KeyInfo;

    iget-object v3, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .line 1038
    invoke-static {v3, v1}, Landroidx/compose/runtime/SlotTableKt;->access$key([II)I

    move-result v4

    iget-object v3, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .line 1039
    invoke-direct {p0, v3, v1}, Landroidx/compose/runtime/SlotReader;->objectKey([II)Ljava/lang/Object;

    move-result-object v5

    iget-object v3, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .line 1041
    invoke-static {v3, v1}, Landroidx/compose/runtime/SlotTableKt;->access$isNode([II)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    move v7, v3

    goto :goto_2

    :cond_1
    iget-object v3, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-static {v3, v1}, Landroidx/compose/runtime/SlotTableKt;->access$nodeCount([II)I

    move-result v3

    goto :goto_1

    :goto_2
    add-int/lit8 v9, v8, 0x1

    move-object v3, v2

    move v6, v1

    .line 1037
    invoke-direct/range {v3 .. v8}, Landroidx/compose/runtime/KeyInfo;-><init>(ILjava/lang/Object;III)V

    .line 1036
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .line 1045
    invoke-static {v2, v1}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result v2

    add-int/2addr v1, v2

    move v8, v9

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final forEachData$runtime_release(ILkotlin/jvm/functions/Function2;)V
    .locals 4

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .line 1051
    invoke-static {v0, p1}, Landroidx/compose/runtime/SlotTableKt;->access$slotAnchor([II)I

    move-result v0

    add-int/lit8 p1, p1, 0x1

    iget-object v1, p0, Landroidx/compose/runtime/SlotReader;->table:Landroidx/compose/runtime/SlotTable;

    .line 1052
    invoke-virtual {v1}, Landroidx/compose/runtime/SlotTable;->getGroupsSize()I

    move-result v1

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Landroidx/compose/runtime/SlotReader;->table:Landroidx/compose/runtime/SlotTable;

    .line 1053
    invoke-virtual {v1}, Landroidx/compose/runtime/SlotTable;->getGroups()[I

    move-result-object v1

    invoke-static {v1, p1}, Landroidx/compose/runtime/SlotTableKt;->access$dataAnchor([II)I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/compose/runtime/SlotReader;->table:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->getSlotsSize()I

    move-result p1

    :goto_0
    move v1, v0

    :goto_1
    if-ge v1, p1, :cond_1

    sub-int v2, v1, v0

    .line 1055
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroidx/compose/runtime/SlotReader;->slots:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-interface {p2, v2, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final getClosed()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Landroidx/compose/runtime/SlotReader;->closed:Z

    return v0
.end method

.method public final getCurrentEnd()I
    .locals 1

    .line 0
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    return v0
.end method

.method public final getCurrentGroup()I
    .locals 1

    .line 0
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    return v0
.end method

.method public final getGroupAux()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .line 821
    invoke-direct {p0, v1, v0}, Landroidx/compose/runtime/SlotReader;->aux([II)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final getGroupEnd()I
    .locals 1

    .line 0
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    return v0
.end method

.method public final getGroupKey()I
    .locals 2

    iget v0, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .line 787
    invoke-static {v1, v0}, Landroidx/compose/runtime/SlotTableKt;->access$key([II)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getGroupObjectKey()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .line 811
    invoke-direct {p0, v1, v0}, Landroidx/compose/runtime/SlotReader;->objectKey([II)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getGroupSize()I
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    .line 764
    invoke-static {v0, v1}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result v0

    return v0
.end method

.method public final getGroupSlotIndex()I
    .locals 3

    iget v0, p0, Landroidx/compose/runtime/SlotReader;->currentSlot:I

    iget-object v1, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    iget v2, p0, Landroidx/compose/runtime/SlotReader;->parent:I

    .line 799
    invoke-static {v1, v2}, Landroidx/compose/runtime/SlotTableKt;->access$slotAnchor([II)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getInEmpty()Z
    .locals 1

    .line 0
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getParent()I
    .locals 1

    .line 0
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->parent:I

    return v0
.end method

.method public final getParentNodes()I
    .locals 2

    iget v0, p0, Landroidx/compose/runtime/SlotReader;->parent:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .line 852
    invoke-static {v1, v0}, Landroidx/compose/runtime/SlotTableKt;->access$nodeCount([II)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getSize()I
    .locals 1

    .line 0
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->groupsSize:I

    return v0
.end method

.method public final getTable$runtime_release()Landroidx/compose/runtime/SlotTable;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->table:Landroidx/compose/runtime/SlotTable;

    return-object v0
.end method

.method public final groupAux(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .line 826
    invoke-direct {p0, v0, p1}, Landroidx/compose/runtime/SlotReader;->aux([II)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final groupGet(I)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    .line 885
    invoke-virtual {p0, v0, p1}, Landroidx/compose/runtime/SlotReader;->groupGet(II)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final groupGet(II)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .line 891
    invoke-static {v0, p1}, Landroidx/compose/runtime/SlotTableKt;->access$slotAnchor([II)I

    move-result v0

    add-int/lit8 p1, p1, 0x1

    iget v1, p0, Landroidx/compose/runtime/SlotReader;->groupsSize:I

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .line 893
    invoke-static {v1, p1}, Landroidx/compose/runtime/SlotTableKt;->access$dataAnchor([II)I

    move-result p1

    goto :goto_0

    :cond_0
    iget p1, p0, Landroidx/compose/runtime/SlotReader;->slotsSize:I

    :goto_0
    add-int/2addr v0, p2

    if-ge v0, p1, :cond_1

    iget-object p1, p0, Landroidx/compose/runtime/SlotReader;->slots:[Ljava/lang/Object;

    .line 895
    aget-object p1, p1, v0

    goto :goto_1

    :cond_1
    sget-object p1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public final groupKey(I)I
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .line 793
    invoke-static {v0, p1}, Landroidx/compose/runtime/SlotTableKt;->access$key([II)I

    move-result p1

    return p1
.end method

.method public final groupObjectKey(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .line 816
    invoke-direct {p0, v0, p1}, Landroidx/compose/runtime/SlotReader;->objectKey([II)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final groupSize(I)I
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .line 770
    invoke-static {v0, p1}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result p1

    return p1
.end method

.method public final hasMark(I)Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .line 841
    invoke-static {v0, p1}, Landroidx/compose/runtime/SlotTableKt;->access$hasMark([II)Z

    move-result p1

    return p1
.end method

.method public final hasObjectKey(I)Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .line 804
    invoke-static {v0, p1}, Landroidx/compose/runtime/SlotTableKt;->access$hasObjectKey([II)Z

    move-result p1

    return p1
.end method

.method public final isGroupEnd()Z
    .locals 2

    .line 754
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotReader;->getInEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final isNode()Z
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    .line 728
    invoke-static {v0, v1}, Landroidx/compose/runtime/SlotTableKt;->access$isNode([II)Z

    move-result v0

    return v0
.end method

.method public final isNode(I)Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .line 733
    invoke-static {v0, p1}, Landroidx/compose/runtime/SlotTableKt;->access$isNode([II)Z

    move-result p1

    return p1
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    if-gtz v0, :cond_1

    iget v0, p0, Landroidx/compose/runtime/SlotReader;->currentSlot:I

    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentSlotEnd:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/compose/runtime/SlotReader;->slots:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Landroidx/compose/runtime/SlotReader;->currentSlot:I

    .line 905
    aget-object v0, v1, v0

    return-object v0

    .line 904
    :cond_1
    :goto_0
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final node(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .line 749
    invoke-static {v0, p1}, Landroidx/compose/runtime/SlotTableKt;->access$isNode([II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-direct {p0, v0, p1}, Landroidx/compose/runtime/SlotReader;->node([II)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final nodeCount(I)I
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .line 744
    invoke-static {v0, p1}, Landroidx/compose/runtime/SlotTableKt;->access$nodeCount([II)I

    move-result p1

    return p1
.end method

.method public final parent(I)I
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .line 723
    invoke-static {v0, p1}, Landroidx/compose/runtime/SlotTableKt;->access$parentAnchor([II)I

    move-result p1

    return p1
.end method

.method public final reposition(I)V
    .locals 2

    iget v0, p0, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    iput p1, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    iget v0, p0, Landroidx/compose/runtime/SlotReader;->groupsSize:I

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .line 983
    invoke-static {v0, p1}, Landroidx/compose/runtime/SlotTableKt;->access$parentAnchor([II)I

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, -0x1

    :goto_1
    iput p1, p0, Landroidx/compose/runtime/SlotReader;->parent:I

    if-gez p1, :cond_2

    iget p1, p0, Landroidx/compose/runtime/SlotReader;->groupsSize:I

    iput p1, p0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    goto :goto_2

    :cond_2
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .line 988
    invoke-static {v0, p1}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    :goto_2
    iput v1, p0, Landroidx/compose/runtime/SlotReader;->currentSlot:I

    iput v1, p0, Landroidx/compose/runtime/SlotReader;->currentSlotEnd:I

    return-void

    :cond_3
    const-string p1, "Cannot reposition while in an empty region"

    .line 4550
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method public final restoreParent(I)V
    .locals 4

    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .line 997
    invoke-static {v0, p1}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result v0

    add-int/2addr v0, p1

    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    const/4 v2, 0x0

    if-lt v1, p1, :cond_0

    if-gt v1, v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz v3, :cond_1

    iput p1, p0, Landroidx/compose/runtime/SlotReader;->parent:I

    iput v0, p0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    iput v2, p0, Landroidx/compose/runtime/SlotReader;->currentSlot:I

    iput v2, p0, Landroidx/compose/runtime/SlotReader;->currentSlotEnd:I

    return-void

    .line 1001
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not a parent of "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4550
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method public final skipGroup()I
    .locals 3

    iget v0, p0, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    iget v2, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    .line 964
    invoke-static {v0, v2}, Landroidx/compose/runtime/SlotTableKt;->access$isNode([II)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    invoke-static {v0, v1}, Landroidx/compose/runtime/SlotTableKt;->access$nodeCount([II)I

    move-result v1

    :goto_1
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    iget-object v2, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .line 965
    invoke-static {v2, v0}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    return v1

    :cond_2
    const-string v0, "Cannot skip while in an empty region"

    .line 4550
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method public final skipToGroupEnd()V
    .locals 1

    iget v0, p0, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    iput v0, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    return-void

    :cond_1
    const-string v0, "Cannot skip the enclosing group while in an empty region"

    .line 4550
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method public final startGroup()V
    .locals 3

    iget v0, p0, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    if-gtz v0, :cond_2

    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    .line 938
    invoke-static {v0, v1}, Landroidx/compose/runtime/SlotTableKt;->access$parentAnchor([II)I

    move-result v0

    iget v1, p0, Landroidx/compose/runtime/SlotReader;->parent:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    iput v0, p0, Landroidx/compose/runtime/SlotReader;->parent:I

    iget-object v1, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .line 940
    invoke-static {v1, v0}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    iget v0, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    iget-object v2, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .line 942
    invoke-static {v2, v0}, Landroidx/compose/runtime/SlotTableKt;->access$slotAnchor([II)I

    move-result v2

    iput v2, p0, Landroidx/compose/runtime/SlotReader;->currentSlot:I

    iget v2, p0, Landroidx/compose/runtime/SlotReader;->groupsSize:I

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_0

    iget v0, p0, Landroidx/compose/runtime/SlotReader;->slotsSize:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    .line 945
    invoke-static {v0, v1}, Landroidx/compose/runtime/SlotTableKt;->access$dataAnchor([II)I

    move-result v0

    :goto_0
    iput v0, p0, Landroidx/compose/runtime/SlotReader;->currentSlotEnd:I

    goto :goto_1

    .line 938
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid slot table detected"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    return-void
.end method

.method public final startNode()V
    .locals 2

    iget v0, p0, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    if-gtz v0, :cond_1

    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    .line 954
    invoke-static {v0, v1}, Landroidx/compose/runtime/SlotTableKt;->access$isNode([II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 955
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotReader;->startGroup()V

    goto :goto_0

    .line 954
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected a node group"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1059
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SlotReader(current="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/compose/runtime/SlotReader;->getGroupKey()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/runtime/SlotReader;->parent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
