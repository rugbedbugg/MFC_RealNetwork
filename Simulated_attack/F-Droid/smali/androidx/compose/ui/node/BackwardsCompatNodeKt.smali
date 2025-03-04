.class public abstract Landroidx/compose/ui/node/BackwardsCompatNodeKt;
.super Ljava/lang/Object;
.source "BackwardsCompatNode.kt"


# static fields
.field private static final DetachedModifierLocalReadScope:Landroidx/compose/ui/node/BackwardsCompatNodeKt$DetachedModifierLocalReadScope$1;

.field private static final onDrawCacheReadsChanged:Lkotlin/jvm/functions/Function1;

.field private static final updateModifierLocalConsumer:Lkotlin/jvm/functions/Function1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 428
    new-instance v0, Landroidx/compose/ui/node/BackwardsCompatNodeKt$DetachedModifierLocalReadScope$1;

    invoke-direct {v0}, Landroidx/compose/ui/node/BackwardsCompatNodeKt$DetachedModifierLocalReadScope$1;-><init>()V

    sput-object v0, Landroidx/compose/ui/node/BackwardsCompatNodeKt;->DetachedModifierLocalReadScope:Landroidx/compose/ui/node/BackwardsCompatNodeKt$DetachedModifierLocalReadScope$1;

    sget-object v0, Landroidx/compose/ui/node/BackwardsCompatNodeKt$onDrawCacheReadsChanged$1;->INSTANCE:Landroidx/compose/ui/node/BackwardsCompatNodeKt$onDrawCacheReadsChanged$1;

    sput-object v0, Landroidx/compose/ui/node/BackwardsCompatNodeKt;->onDrawCacheReadsChanged:Lkotlin/jvm/functions/Function1;

    sget-object v0, Landroidx/compose/ui/node/BackwardsCompatNodeKt$updateModifierLocalConsumer$1;->INSTANCE:Landroidx/compose/ui/node/BackwardsCompatNodeKt$updateModifierLocalConsumer$1;

    sput-object v0, Landroidx/compose/ui/node/BackwardsCompatNodeKt;->updateModifierLocalConsumer:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static final synthetic access$getDetachedModifierLocalReadScope$p()Landroidx/compose/ui/node/BackwardsCompatNodeKt$DetachedModifierLocalReadScope$1;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/node/BackwardsCompatNodeKt;->DetachedModifierLocalReadScope:Landroidx/compose/ui/node/BackwardsCompatNodeKt$DetachedModifierLocalReadScope$1;

    return-object v0
.end method

.method public static final synthetic access$getUpdateModifierLocalConsumer$p()Lkotlin/jvm/functions/Function1;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/node/BackwardsCompatNodeKt;->updateModifierLocalConsumer:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final synthetic access$isChainUpdate(Landroidx/compose/ui/node/BackwardsCompatNode;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/node/BackwardsCompatNodeKt;->isChainUpdate(Landroidx/compose/ui/node/BackwardsCompatNode;)Z

    move-result p0

    return p0
.end method

.method private static final isChainUpdate(Landroidx/compose/ui/node/BackwardsCompatNode;)Z
    .locals 1

    .line 455
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui_release()Landroidx/compose/ui/node/NodeChain;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeChain;->getTail$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type androidx.compose.ui.node.TailModifierNode"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/compose/ui/node/TailModifierNode;

    .line 456
    invoke-virtual {p0}, Landroidx/compose/ui/node/TailModifierNode;->getAttachHasBeenRun()Z

    move-result p0

    return p0
.end method
