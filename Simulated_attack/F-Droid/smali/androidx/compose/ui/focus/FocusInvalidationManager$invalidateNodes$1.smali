.class final Landroidx/compose/ui/focus/FocusInvalidationManager$invalidateNodes$1;
.super Lkotlin/jvm/internal/Lambda;
.source "FocusInvalidationManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/focus/FocusInvalidationManager;-><init>(Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/ui/focus/FocusInvalidationManager;


# direct methods
.method constructor <init>(Landroidx/compose/ui/focus/FocusInvalidationManager;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/ui/focus/FocusInvalidationManager$invalidateNodes$1;->this$0:Landroidx/compose/ui/focus/FocusInvalidationManager;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 57
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusInvalidationManager$invalidateNodes$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/ui/focus/FocusInvalidationManager$invalidateNodes$1;->this$0:Landroidx/compose/ui/focus/FocusInvalidationManager;

    .line 59
    invoke-static {v1}, Landroidx/compose/ui/focus/FocusInvalidationManager;->access$getFocusPropertiesNodes$p(Landroidx/compose/ui/focus/FocusInvalidationManager;)Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    iget-object v2, v0, Landroidx/compose/ui/focus/FocusInvalidationManager$invalidateNodes$1;->this$0:Landroidx/compose/ui/focus/FocusInvalidationManager;

    .line 1855
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "visitChildren called on an unattached node"

    const/16 v5, 0x400

    const/16 v6, 0x10

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v3, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/focus/FocusPropertiesModifierNode;

    .line 62
    invoke-interface {v3}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 90
    invoke-static {v5}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v5

    .line 282
    invoke-interface {v3}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    const/4 v11, 0x0

    :goto_0
    if-eqz v10, :cond_8

    .line 386
    instance-of v12, v10, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v12, :cond_1

    .line 387
    check-cast v10, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 65
    invoke-static {v2}, Landroidx/compose/ui/focus/FocusInvalidationManager;->access$getFocusTargetNodes$p(Landroidx/compose/ui/focus/FocusInvalidationManager;)Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 261
    :cond_1
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v12

    and-int/2addr v12, v5

    if-eqz v12, :cond_7

    .line 388
    instance-of v12, v10, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v12, :cond_7

    .line 394
    move-object v12, v10

    check-cast v12, Landroidx/compose/ui/node/DelegatingNode;

    .line 234
    invoke-virtual {v12}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v12

    move v13, v8

    :goto_1
    if-eqz v12, :cond_6

    .line 261
    invoke-virtual {v12}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v14

    and-int/2addr v14, v5

    if-eqz v14, :cond_5

    add-int/lit8 v13, v13, 0x1

    if-ne v13, v9, :cond_2

    move-object v10, v12

    goto :goto_2

    :cond_2
    if-nez v11, :cond_3

    .line 1162
    new-instance v11, Landroidx/compose/runtime/collection/MutableVector;

    new-array v14, v6, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v11, v14, v8}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_3
    if-eqz v10, :cond_4

    .line 405
    invoke-virtual {v11, v10}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x0

    .line 408
    :cond_4
    invoke-virtual {v11, v12}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 237
    :cond_5
    :goto_2
    invoke-virtual {v12}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v12

    goto :goto_1

    :cond_6
    if-ne v13, v9, :cond_7

    goto :goto_0

    .line 417
    :cond_7
    :goto_3
    invoke-static {v11}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    goto :goto_0

    .line 133
    :cond_8
    invoke-interface {v3}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v10

    if-eqz v10, :cond_14

    .line 1162
    new-instance v4, Landroidx/compose/runtime/collection/MutableVector;

    new-array v10, v6, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v4, v10, v8}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 135
    invoke-interface {v3}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    if-nez v10, :cond_9

    .line 137
    invoke-interface {v3}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v3

    invoke-static {v4, v3}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    goto :goto_4

    .line 139
    :cond_9
    invoke-virtual {v4, v10}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_a
    :goto_4
    invoke-virtual {v4}, Landroidx/compose/runtime/collection/MutableVector;->isNotEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 48
    invoke-virtual {v4}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v3

    sub-int/2addr v3, v9

    .line 141
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/Modifier$Node;

    .line 142
    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v10

    and-int/2addr v10, v5

    if-nez v10, :cond_b

    .line 143
    invoke-static {v4, v3}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    goto :goto_4

    :cond_b
    :goto_5
    if-eqz v3, :cond_a

    .line 149
    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v10

    and-int/2addr v10, v5

    if-eqz v10, :cond_13

    const/4 v10, 0x0

    :goto_6
    if-eqz v3, :cond_a

    .line 386
    instance-of v11, v3, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v11, :cond_c

    .line 387
    check-cast v3, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 65
    invoke-static {v2}, Landroidx/compose/ui/focus/FocusInvalidationManager;->access$getFocusTargetNodes$p(Landroidx/compose/ui/focus/FocusInvalidationManager;)Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 261
    :cond_c
    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v11

    and-int/2addr v11, v5

    if-eqz v11, :cond_12

    .line 388
    instance-of v11, v3, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v11, :cond_12

    .line 394
    move-object v11, v3

    check-cast v11, Landroidx/compose/ui/node/DelegatingNode;

    .line 234
    invoke-virtual {v11}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    move v12, v8

    :goto_7
    if-eqz v11, :cond_11

    .line 261
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v13

    and-int/2addr v13, v5

    if-eqz v13, :cond_10

    add-int/lit8 v12, v12, 0x1

    if-ne v12, v9, :cond_d

    move-object v3, v11

    goto :goto_8

    :cond_d
    if-nez v10, :cond_e

    .line 1162
    new-instance v10, Landroidx/compose/runtime/collection/MutableVector;

    new-array v13, v6, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v10, v13, v8}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_e
    if-eqz v3, :cond_f

    .line 405
    invoke-virtual {v10, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    .line 408
    :cond_f
    invoke-virtual {v10, v11}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 237
    :cond_10
    :goto_8
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    goto :goto_7

    :cond_11
    if-ne v12, v9, :cond_12

    goto :goto_6

    .line 417
    :cond_12
    :goto_9
    invoke-static {v10}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v3

    goto :goto_6

    .line 153
    :cond_13
    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v3

    goto :goto_5

    .line 133
    :cond_14
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_15
    iget-object v1, v0, Landroidx/compose/ui/focus/FocusInvalidationManager$invalidateNodes$1;->this$0:Landroidx/compose/ui/focus/FocusInvalidationManager;

    .line 68
    invoke-static {v1}, Landroidx/compose/ui/focus/FocusInvalidationManager;->access$getFocusPropertiesNodes$p(Landroidx/compose/ui/focus/FocusInvalidationManager;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 71
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iget-object v2, v0, Landroidx/compose/ui/focus/FocusInvalidationManager$invalidateNodes$1;->this$0:Landroidx/compose/ui/focus/FocusInvalidationManager;

    .line 72
    invoke-static {v2}, Landroidx/compose/ui/focus/FocusInvalidationManager;->access$getFocusEventNodes$p(Landroidx/compose/ui/focus/FocusInvalidationManager;)Ljava/util/Set;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    iget-object v3, v0, Landroidx/compose/ui/focus/FocusInvalidationManager$invalidateNodes$1;->this$0:Landroidx/compose/ui/focus/FocusInvalidationManager;

    .line 1855
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/ui/focus/FocusEventModifierNode;

    .line 78
    invoke-interface {v10}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v11

    if-nez v11, :cond_16

    .line 79
    sget-object v11, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    invoke-interface {v10, v11}, Landroidx/compose/ui/focus/FocusEventModifierNode;->onFocusEvent(Landroidx/compose/ui/focus/FocusState;)V

    move v6, v8

    move v8, v9

    goto/16 :goto_19

    .line 90
    :cond_16
    invoke-static {v5}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v11

    .line 282
    invoke-interface {v10}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v12

    move/from16 v16, v8

    move v15, v9

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_b
    if-eqz v12, :cond_20

    .line 386
    instance-of v5, v12, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v5, :cond_19

    .line 387
    check-cast v12, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v13, :cond_17

    move/from16 v16, v9

    .line 100
    :cond_17
    invoke-static {v3}, Landroidx/compose/ui/focus/FocusInvalidationManager;->access$getFocusTargetNodes$p(Landroidx/compose/ui/focus/FocusInvalidationManager;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 102
    invoke-interface {v1, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v15, v8

    :cond_18
    move-object v13, v12

    goto :goto_e

    .line 261
    :cond_19
    invoke-virtual {v12}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v5

    and-int/2addr v5, v11

    if-eqz v5, :cond_1f

    .line 388
    instance-of v5, v12, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v5, :cond_1f

    .line 394
    move-object v5, v12

    check-cast v5, Landroidx/compose/ui/node/DelegatingNode;

    .line 234
    invoke-virtual {v5}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    move v7, v8

    :goto_c
    if-eqz v5, :cond_1e

    .line 261
    invoke-virtual {v5}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v17

    and-int v17, v17, v11

    if-eqz v17, :cond_1d

    add-int/lit8 v7, v7, 0x1

    if-ne v7, v9, :cond_1a

    move-object v12, v5

    goto :goto_d

    :cond_1a
    if-nez v14, :cond_1b

    .line 1162
    new-instance v14, Landroidx/compose/runtime/collection/MutableVector;

    new-array v9, v6, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v14, v9, v8}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_1b
    if-eqz v12, :cond_1c

    .line 405
    invoke-virtual {v14, v12}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    const/4 v12, 0x0

    .line 408
    :cond_1c
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 237
    :cond_1d
    :goto_d
    invoke-virtual {v5}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    const/4 v9, 0x1

    goto :goto_c

    :cond_1e
    move v5, v9

    if-ne v7, v5, :cond_1f

    move v9, v5

    const/16 v5, 0x400

    goto :goto_b

    .line 417
    :cond_1f
    :goto_e
    invoke-static {v14}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v12

    const/16 v5, 0x400

    const/4 v9, 0x1

    goto :goto_b

    .line 133
    :cond_20
    invoke-interface {v10}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v5

    if-eqz v5, :cond_35

    .line 1162
    new-instance v5, Landroidx/compose/runtime/collection/MutableVector;

    new-array v7, v6, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v5, v7, v8}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 135
    invoke-interface {v10}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    if-nez v7, :cond_21

    .line 137
    invoke-interface {v10}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    invoke-static {v5, v7}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    goto :goto_f

    .line 139
    :cond_21
    invoke-virtual {v5, v7}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_22
    :goto_f
    invoke-virtual {v5}, Landroidx/compose/runtime/collection/MutableVector;->isNotEmpty()Z

    move-result v7

    if-eqz v7, :cond_30

    .line 48
    invoke-virtual {v5}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v7

    const/4 v9, 0x1

    sub-int/2addr v7, v9

    .line 141
    invoke-virtual {v5, v7}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/Modifier$Node;

    .line 142
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v9

    and-int/2addr v9, v11

    if-nez v9, :cond_24

    .line 143
    invoke-static {v5, v7}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    :cond_23
    move v6, v8

    const/4 v8, 0x1

    goto/16 :goto_17

    :cond_24
    :goto_10
    if-eqz v7, :cond_23

    .line 149
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v9

    and-int/2addr v9, v11

    if-eqz v9, :cond_2f

    const/4 v9, 0x0

    :goto_11
    if-eqz v7, :cond_22

    .line 386
    instance-of v12, v7, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v12, :cond_28

    .line 387
    check-cast v7, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v13, :cond_25

    const/16 v16, 0x1

    .line 100
    :cond_25
    invoke-static {v3}, Landroidx/compose/ui/focus/FocusInvalidationManager;->access$getFocusTargetNodes$p(Landroidx/compose/ui/focus/FocusInvalidationManager;)Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_26

    .line 102
    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v15, v8

    :cond_26
    move-object v13, v7

    :cond_27
    move v6, v8

    const/4 v8, 0x1

    goto :goto_16

    .line 261
    :cond_28
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v12

    and-int/2addr v12, v11

    if-eqz v12, :cond_27

    .line 388
    instance-of v12, v7, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v12, :cond_27

    .line 394
    move-object v12, v7

    check-cast v12, Landroidx/compose/ui/node/DelegatingNode;

    .line 234
    invoke-virtual {v12}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v12

    move v14, v8

    :goto_12
    if-eqz v12, :cond_2d

    .line 261
    invoke-virtual {v12}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v18

    and-int v18, v18, v11

    if-eqz v18, :cond_2c

    add-int/lit8 v14, v14, 0x1

    const/4 v8, 0x1

    if-ne v14, v8, :cond_29

    move-object v7, v12

    const/4 v6, 0x0

    goto :goto_14

    :cond_29
    if-nez v9, :cond_2a

    .line 1162
    new-instance v9, Landroidx/compose/runtime/collection/MutableVector;

    new-array v8, v6, [Landroidx/compose/ui/Modifier$Node;

    const/4 v6, 0x0

    invoke-direct {v9, v8, v6}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    goto :goto_13

    :cond_2a
    const/4 v6, 0x0

    :goto_13
    if-eqz v7, :cond_2b

    .line 405
    invoke-virtual {v9, v7}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x0

    .line 408
    :cond_2b
    invoke-virtual {v9, v12}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_2c
    move v6, v8

    .line 237
    :goto_14
    invoke-virtual {v12}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v12

    move v8, v6

    const/16 v6, 0x10

    goto :goto_12

    :cond_2d
    move v6, v8

    const/4 v8, 0x1

    if-ne v14, v8, :cond_2e

    :goto_15
    move v8, v6

    const/16 v6, 0x10

    goto :goto_11

    .line 417
    :cond_2e
    :goto_16
    invoke-static {v9}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    goto :goto_15

    :cond_2f
    move v6, v8

    const/4 v8, 0x1

    .line 153
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    move v8, v6

    const/16 v6, 0x10

    goto/16 :goto_10

    :goto_17
    move v8, v6

    const/16 v6, 0x10

    goto/16 :goto_f

    :cond_30
    move v6, v8

    const/4 v8, 0x1

    if-eqz v15, :cond_34

    if-eqz v16, :cond_31

    .line 110
    invoke-static {v10}, Landroidx/compose/ui/focus/FocusEventModifierNodeKt;->getFocusState(Landroidx/compose/ui/focus/FocusEventModifierNode;)Landroidx/compose/ui/focus/FocusState;

    move-result-object v5

    goto :goto_18

    :cond_31
    if-eqz v13, :cond_32

    .line 112
    invoke-virtual {v13}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v5

    if-nez v5, :cond_33

    :cond_32
    sget-object v5, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 108
    :cond_33
    :goto_18
    invoke-interface {v10, v5}, Landroidx/compose/ui/focus/FocusEventModifierNode;->onFocusEvent(Landroidx/compose/ui/focus/FocusState;)V

    :cond_34
    :goto_19
    move v9, v8

    const/16 v5, 0x400

    move v8, v6

    const/16 v6, 0x10

    goto/16 :goto_a

    .line 133
    :cond_35
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_36
    iget-object v2, v0, Landroidx/compose/ui/focus/FocusInvalidationManager$invalidateNodes$1;->this$0:Landroidx/compose/ui/focus/FocusInvalidationManager;

    .line 117
    invoke-static {v2}, Landroidx/compose/ui/focus/FocusInvalidationManager;->access$getFocusEventNodes$p(Landroidx/compose/ui/focus/FocusInvalidationManager;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    iget-object v2, v0, Landroidx/compose/ui/focus/FocusInvalidationManager$invalidateNodes$1;->this$0:Landroidx/compose/ui/focus/FocusInvalidationManager;

    .line 120
    invoke-static {v2}, Landroidx/compose/ui/focus/FocusInvalidationManager;->access$getFocusTargetNodes$p(Landroidx/compose/ui/focus/FocusInvalidationManager;)Ljava/util/Set;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 1855
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_37
    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 123
    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v4

    if-eqz v4, :cond_37

    .line 125
    invoke-virtual {v3}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v4

    .line 126
    invoke-virtual {v3}, Landroidx/compose/ui/focus/FocusTargetNode;->invalidateFocus$ui_release()V

    .line 127
    invoke-virtual {v3}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v5

    if-ne v4, v5, :cond_38

    .line 128
    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 129
    :cond_38
    invoke-static {v3}, Landroidx/compose/ui/focus/FocusEventModifierNodeKt;->refreshFocusEventNodes(Landroidx/compose/ui/focus/FocusTargetNode;)V

    goto :goto_1a

    :cond_39
    iget-object v2, v0, Landroidx/compose/ui/focus/FocusInvalidationManager$invalidateNodes$1;->this$0:Landroidx/compose/ui/focus/FocusInvalidationManager;

    .line 132
    invoke-static {v2}, Landroidx/compose/ui/focus/FocusInvalidationManager;->access$getFocusTargetNodes$p(Landroidx/compose/ui/focus/FocusInvalidationManager;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 133
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    iget-object v1, v0, Landroidx/compose/ui/focus/FocusInvalidationManager$invalidateNodes$1;->this$0:Landroidx/compose/ui/focus/FocusInvalidationManager;

    .line 135
    invoke-static {v1}, Landroidx/compose/ui/focus/FocusInvalidationManager;->access$getFocusPropertiesNodes$p(Landroidx/compose/ui/focus/FocusInvalidationManager;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3c

    iget-object v1, v0, Landroidx/compose/ui/focus/FocusInvalidationManager$invalidateNodes$1;->this$0:Landroidx/compose/ui/focus/FocusInvalidationManager;

    .line 136
    invoke-static {v1}, Landroidx/compose/ui/focus/FocusInvalidationManager;->access$getFocusEventNodes$p(Landroidx/compose/ui/focus/FocusInvalidationManager;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3b

    iget-object v1, v0, Landroidx/compose/ui/focus/FocusInvalidationManager$invalidateNodes$1;->this$0:Landroidx/compose/ui/focus/FocusInvalidationManager;

    .line 137
    invoke-static {v1}, Landroidx/compose/ui/focus/FocusInvalidationManager;->access$getFocusTargetNodes$p(Landroidx/compose/ui/focus/FocusInvalidationManager;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3a

    return-void

    :cond_3a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unprocessed FocusTarget nodes"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 136
    :cond_3b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unprocessed FocusEvent nodes"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 135
    :cond_3c
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unprocessed FocusProperties nodes"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
