.class final Landroidx/compose/foundation/FocusableInteractionNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "Focusable.kt"


# instance fields
.field private focusedInteraction:Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

.field private interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;)V
    .locals 0

    .line 261
    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/FocusableInteractionNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    return-void
.end method

.method private final disposeInteractionSource()V
    .locals 3

    iget-object v0, p0, Landroidx/compose/foundation/FocusableInteractionNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/compose/foundation/FocusableInteractionNode;->focusedInteraction:Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    if-eqz v1, :cond_0

    .line 300
    new-instance v2, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;

    invoke-direct {v2, v1}, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;-><init>(Landroidx/compose/foundation/interaction/FocusInteraction$Focus;)V

    .line 301
    invoke-interface {v0, v2}, Landroidx/compose/foundation/interaction/MutableInteractionSource;->tryEmit(Landroidx/compose/foundation/interaction/Interaction;)Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/foundation/FocusableInteractionNode;->focusedInteraction:Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    return-void
.end method

.method private final emitWithFallback(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/Interaction;)V
    .locals 7

    .line 308
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Landroidx/compose/foundation/FocusableInteractionNode$emitWithFallback$1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, p2, v0}, Landroidx/compose/foundation/FocusableInteractionNode$emitWithFallback$1;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_0

    .line 313
    :cond_0
    invoke-interface {p1, p2}, Landroidx/compose/foundation/interaction/MutableInteractionSource;->tryEmit(Landroidx/compose/foundation/interaction/Interaction;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public final setFocus(Z)V
    .locals 3

    iget-object v0, p0, Landroidx/compose/foundation/FocusableInteractionNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/compose/foundation/FocusableInteractionNode;->focusedInteraction:Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    if-eqz p1, :cond_0

    .line 273
    new-instance v2, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;

    invoke-direct {v2, p1}, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;-><init>(Landroidx/compose/foundation/interaction/FocusInteraction$Focus;)V

    .line 274
    invoke-direct {p0, v0, v2}, Landroidx/compose/foundation/FocusableInteractionNode;->emitWithFallback(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/Interaction;)V

    iput-object v1, p0, Landroidx/compose/foundation/FocusableInteractionNode;->focusedInteraction:Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 277
    :cond_0
    new-instance p1, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    invoke-direct {p1}, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;-><init>()V

    .line 278
    invoke-direct {p0, v0, p1}, Landroidx/compose/foundation/FocusableInteractionNode;->emitWithFallback(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/Interaction;)V

    iput-object p1, p0, Landroidx/compose/foundation/FocusableInteractionNode;->focusedInteraction:Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/compose/foundation/FocusableInteractionNode;->focusedInteraction:Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    if-eqz p1, :cond_2

    .line 282
    new-instance v2, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;

    invoke-direct {v2, p1}, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;-><init>(Landroidx/compose/foundation/interaction/FocusInteraction$Focus;)V

    .line 283
    invoke-direct {p0, v0, v2}, Landroidx/compose/foundation/FocusableInteractionNode;->emitWithFallback(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/Interaction;)V

    iput-object v1, p0, Landroidx/compose/foundation/FocusableInteractionNode;->focusedInteraction:Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    :cond_2
    :goto_0
    return-void
.end method

.method public final update(Landroidx/compose/foundation/interaction/MutableInteractionSource;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/FocusableInteractionNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 291
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 292
    invoke-direct {p0}, Landroidx/compose/foundation/FocusableInteractionNode;->disposeInteractionSource()V

    iput-object p1, p0, Landroidx/compose/foundation/FocusableInteractionNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    :cond_0
    return-void
.end method
