.class final Landroidx/compose/runtime/Pending;
.super Ljava/lang/Object;
.source "Composer.kt"


# instance fields
.field private groupIndex:I

.field private final groupInfos:Ljava/util/HashMap;

.field private final keyInfos:Ljava/util/List;

.field private final keyMap$delegate:Lkotlin/Lazy;

.field private final startIndex:I

.field private final usedKeys:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .locals 6

    const-string v0, "keyInfos"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/Pending;->keyInfos:Ljava/util/List;

    iput p2, p0, Landroidx/compose/runtime/Pending;->startIndex:I

    if-ltz p2, :cond_1

    .line 108
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroidx/compose/runtime/Pending;->usedKeys:Ljava/util/List;

    .line 111
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 112
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v2, p0, Landroidx/compose/runtime/Pending;->keyInfos:Ljava/util/List;

    .line 113
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/KeyInfo;

    .line 115
    invoke-virtual {v2}, Landroidx/compose/runtime/KeyInfo;->getLocation()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Landroidx/compose/runtime/GroupInfo;

    invoke-virtual {v2}, Landroidx/compose/runtime/KeyInfo;->getNodes()I

    move-result v5

    invoke-direct {v4, v0, v1, v5}, Landroidx/compose/runtime/GroupInfo;-><init>(III)V

    invoke-interface {p2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    invoke-virtual {v2}, Landroidx/compose/runtime/KeyInfo;->getNodes()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object p2, p0, Landroidx/compose/runtime/Pending;->groupInfos:Ljava/util/HashMap;

    .line 126
    new-instance p1, Landroidx/compose/runtime/Pending$keyMap$2;

    invoke-direct {p1, p0}, Landroidx/compose/runtime/Pending$keyMap$2;-><init>(Landroidx/compose/runtime/Pending;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/runtime/Pending;->keyMap$delegate:Lkotlin/Lazy;

    return-void

    .line 105
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid start index"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final getGroupIndex()I
    .locals 1

    .line 0
    iget v0, p0, Landroidx/compose/runtime/Pending;->groupIndex:I

    return v0
.end method

.method public final getKeyInfos()Ljava/util/List;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/runtime/Pending;->keyInfos:Ljava/util/List;

    return-object v0
.end method

.method public final getKeyMap()Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/Pending;->keyMap$delegate:Lkotlin/Lazy;

    .line 126
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method public final getNext(ILjava/lang/Object;)Landroidx/compose/runtime/KeyInfo;
    .locals 1

    if-eqz p2, :cond_0

    .line 140
    new-instance v0, Landroidx/compose/runtime/JoinedKey;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Landroidx/compose/runtime/JoinedKey;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 141
    :goto_0
    invoke-virtual {p0}, Landroidx/compose/runtime/Pending;->getKeyMap()Ljava/util/HashMap;

    move-result-object p1

    invoke-static {p1, v0}, Landroidx/compose/runtime/ComposerKt;->access$pop(Ljava/util/HashMap;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/runtime/KeyInfo;

    return-object p1
.end method

.method public final getStartIndex()I
    .locals 1

    .line 0
    iget v0, p0, Landroidx/compose/runtime/Pending;->startIndex:I

    return v0
.end method

.method public final getUsed()Ljava/util/List;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/runtime/Pending;->usedKeys:Ljava/util/List;

    return-object v0
.end method

.method public final nodePositionOf(Landroidx/compose/runtime/KeyInfo;)I
    .locals 1

    const-string v0, "keyInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/runtime/Pending;->groupInfos:Ljava/util/HashMap;

    .line 214
    invoke-virtual {p1}, Landroidx/compose/runtime/KeyInfo;->getLocation()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/runtime/GroupInfo;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/compose/runtime/GroupInfo;->getNodeIndex()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public final recordUsed(Landroidx/compose/runtime/KeyInfo;)Z
    .locals 1

    const-string v0, "keyInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/runtime/Pending;->usedKeys:Ljava/util/List;

    .line 147
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final registerInsert(Landroidx/compose/runtime/KeyInfo;I)V
    .locals 4

    const-string v0, "keyInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/runtime/Pending;->groupInfos:Ljava/util/HashMap;

    .line 187
    invoke-virtual {p1}, Landroidx/compose/runtime/KeyInfo;->getLocation()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v1, Landroidx/compose/runtime/GroupInfo;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, p2, v3}, Landroidx/compose/runtime/GroupInfo;-><init>(III)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final registerMoveNode(III)V
    .locals 4

    const-string v0, "groupInfos.values"

    if-le p1, p2, :cond_2

    iget-object v1, p0, Landroidx/compose/runtime/Pending;->groupInfos:Ljava/util/HashMap;

    .line 171
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    .line 1855
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/GroupInfo;

    .line 172
    invoke-virtual {v1}, Landroidx/compose/runtime/GroupInfo;->getNodeIndex()I

    move-result v2

    if-gt p1, v2, :cond_1

    add-int v3, p1, p3

    if-ge v2, v3, :cond_1

    sub-int/2addr v2, p1

    add-int/2addr v2, p2

    .line 173
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GroupInfo;->setNodeIndex(I)V

    goto :goto_0

    :cond_1
    if-gt p2, v2, :cond_0

    if-ge v2, p1, :cond_0

    add-int/2addr v2, p3

    .line 174
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GroupInfo;->setNodeIndex(I)V

    goto :goto_0

    :cond_2
    if-le p2, p1, :cond_5

    iget-object v1, p0, Landroidx/compose/runtime/Pending;->groupInfos:Ljava/util/HashMap;

    .line 177
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    .line 1855
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/GroupInfo;

    .line 178
    invoke-virtual {v1}, Landroidx/compose/runtime/GroupInfo;->getNodeIndex()I

    move-result v2

    if-gt p1, v2, :cond_4

    add-int v3, p1, p3

    if-ge v2, v3, :cond_4

    sub-int/2addr v2, p1

    add-int/2addr v2, p2

    .line 179
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GroupInfo;->setNodeIndex(I)V

    goto :goto_1

    :cond_4
    add-int/lit8 v3, p1, 0x1

    if-gt v3, v2, :cond_3

    if-ge v2, p2, :cond_3

    sub-int/2addr v2, p3

    .line 180
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GroupInfo;->setNodeIndex(I)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method public final registerMoveSlot(II)V
    .locals 4

    const-string v0, "groupInfos.values"

    if-le p1, p2, :cond_2

    iget-object v1, p0, Landroidx/compose/runtime/Pending;->groupInfos:Ljava/util/HashMap;

    .line 155
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    .line 1855
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/GroupInfo;

    .line 156
    invoke-virtual {v1}, Landroidx/compose/runtime/GroupInfo;->getSlotIndex()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 157
    invoke-virtual {v1, p2}, Landroidx/compose/runtime/GroupInfo;->setSlotIndex(I)V

    goto :goto_0

    :cond_1
    if-gt p2, v2, :cond_0

    if-ge v2, p1, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 158
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GroupInfo;->setSlotIndex(I)V

    goto :goto_0

    :cond_2
    if-le p2, p1, :cond_5

    iget-object v1, p0, Landroidx/compose/runtime/Pending;->groupInfos:Ljava/util/HashMap;

    .line 161
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    .line 1855
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/GroupInfo;

    .line 162
    invoke-virtual {v1}, Landroidx/compose/runtime/GroupInfo;->getSlotIndex()I

    move-result v2

    if-ne v2, p1, :cond_4

    .line 163
    invoke-virtual {v1, p2}, Landroidx/compose/runtime/GroupInfo;->setSlotIndex(I)V

    goto :goto_1

    :cond_4
    add-int/lit8 v3, p1, 0x1

    if-gt v3, v2, :cond_3

    if-ge v2, p2, :cond_3

    add-int/lit8 v2, v2, -0x1

    .line 164
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GroupInfo;->setSlotIndex(I)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method public final setGroupIndex(I)V
    .locals 0

    .line 0
    iput p1, p0, Landroidx/compose/runtime/Pending;->groupIndex:I

    return-void
.end method

.method public final slotPositionOf(Landroidx/compose/runtime/KeyInfo;)I
    .locals 1

    const-string v0, "keyInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/runtime/Pending;->groupInfos:Ljava/util/HashMap;

    .line 211
    invoke-virtual {p1}, Landroidx/compose/runtime/KeyInfo;->getLocation()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/runtime/GroupInfo;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/compose/runtime/GroupInfo;->getSlotIndex()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public final updateNodeCount(II)Z
    .locals 4

    iget-object v0, p0, Landroidx/compose/runtime/Pending;->groupInfos:Ljava/util/HashMap;

    .line 191
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/runtime/GroupInfo;

    if-eqz p1, :cond_2

    .line 193
    invoke-virtual {p1}, Landroidx/compose/runtime/GroupInfo;->getNodeIndex()I

    move-result v0

    .line 194
    invoke-virtual {p1}, Landroidx/compose/runtime/GroupInfo;->getNodeCount()I

    move-result v1

    sub-int v1, p2, v1

    .line 195
    invoke-virtual {p1, p2}, Landroidx/compose/runtime/GroupInfo;->setNodeCount(I)V

    if-eqz v1, :cond_1

    iget-object p2, p0, Landroidx/compose/runtime/Pending;->groupInfos:Ljava/util/HashMap;

    .line 197
    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p2

    const-string v2, "groupInfos.values"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Iterable;

    .line 1855
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/GroupInfo;

    .line 198
    invoke-virtual {v2}, Landroidx/compose/runtime/GroupInfo;->getNodeIndex()I

    move-result v3

    if-lt v3, v0, :cond_0

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 199
    invoke-virtual {v2}, Landroidx/compose/runtime/GroupInfo;->getNodeIndex()I

    move-result v3

    add-int/2addr v3, v1

    if-ltz v3, :cond_0

    .line 201
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GroupInfo;->setNodeIndex(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final updatedNodeCountOf(Landroidx/compose/runtime/KeyInfo;)I
    .locals 2

    const-string v0, "keyInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/runtime/Pending;->groupInfos:Ljava/util/HashMap;

    .line 218
    invoke-virtual {p1}, Landroidx/compose/runtime/KeyInfo;->getLocation()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/GroupInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/runtime/GroupInfo;->getNodeCount()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/runtime/KeyInfo;->getNodes()I

    move-result p1

    :goto_0
    return p1
.end method
