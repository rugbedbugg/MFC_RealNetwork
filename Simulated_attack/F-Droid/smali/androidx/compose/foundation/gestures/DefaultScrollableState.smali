.class final Landroidx/compose/foundation/gestures/DefaultScrollableState;
.super Ljava/lang/Object;
.source "ScrollableState.kt"

# interfaces
.implements Landroidx/compose/foundation/gestures/ScrollableState;


# instance fields
.field private final isScrollingState:Landroidx/compose/runtime/MutableState;

.field private final onDelta:Lkotlin/jvm/functions/Function1;

.field private final scrollMutex:Landroidx/compose/foundation/MutatorMutex;

.field private final scrollScope:Landroidx/compose/foundation/gestures/ScrollScope;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 2

    const-string v0, "onDelta"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/gestures/DefaultScrollableState;->onDelta:Lkotlin/jvm/functions/Function1;

    .line 163
    new-instance p1, Landroidx/compose/foundation/gestures/DefaultScrollableState$scrollScope$1;

    invoke-direct {p1, p0}, Landroidx/compose/foundation/gestures/DefaultScrollableState$scrollScope$1;-><init>(Landroidx/compose/foundation/gestures/DefaultScrollableState;)V

    iput-object p1, p0, Landroidx/compose/foundation/gestures/DefaultScrollableState;->scrollScope:Landroidx/compose/foundation/gestures/ScrollScope;

    .line 170
    new-instance p1, Landroidx/compose/foundation/MutatorMutex;

    invoke-direct {p1}, Landroidx/compose/foundation/MutatorMutex;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/gestures/DefaultScrollableState;->scrollMutex:Landroidx/compose/foundation/MutatorMutex;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 172
    invoke-static {p1, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/gestures/DefaultScrollableState;->isScrollingState:Landroidx/compose/runtime/MutableState;

    return-void
.end method

.method public static final synthetic access$getScrollMutex$p(Landroidx/compose/foundation/gestures/DefaultScrollableState;)Landroidx/compose/foundation/MutatorMutex;
    .locals 0

    .line 161
    iget-object p0, p0, Landroidx/compose/foundation/gestures/DefaultScrollableState;->scrollMutex:Landroidx/compose/foundation/MutatorMutex;

    return-object p0
.end method

.method public static final synthetic access$getScrollScope$p(Landroidx/compose/foundation/gestures/DefaultScrollableState;)Landroidx/compose/foundation/gestures/ScrollScope;
    .locals 0

    .line 161
    iget-object p0, p0, Landroidx/compose/foundation/gestures/DefaultScrollableState;->scrollScope:Landroidx/compose/foundation/gestures/ScrollScope;

    return-object p0
.end method

.method public static final synthetic access$isScrollingState$p(Landroidx/compose/foundation/gestures/DefaultScrollableState;)Landroidx/compose/runtime/MutableState;
    .locals 0

    .line 161
    iget-object p0, p0, Landroidx/compose/foundation/gestures/DefaultScrollableState;->isScrollingState:Landroidx/compose/runtime/MutableState;

    return-object p0
.end method


# virtual methods
.method public dispatchRawDelta(F)F
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/gestures/DefaultScrollableState;->onDelta:Lkotlin/jvm/functions/Function1;

    .line 189
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    return p1
.end method

.method public synthetic getCanScrollBackward()Z
    .locals 1

    .line 0
    invoke-static {p0}, Landroidx/compose/foundation/gestures/ScrollableState$-CC;->$default$getCanScrollBackward(Landroidx/compose/foundation/gestures/ScrollableState;)Z

    move-result v0

    return v0
.end method

.method public synthetic getCanScrollForward()Z
    .locals 1

    .line 0
    invoke-static {p0}, Landroidx/compose/foundation/gestures/ScrollableState$-CC;->$default$getCanScrollForward(Landroidx/compose/foundation/gestures/ScrollableState;)Z

    move-result v0

    return v0
.end method

.method public final getOnDelta()Lkotlin/jvm/functions/Function1;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DefaultScrollableState;->onDelta:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public isScrollInProgress()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/gestures/DefaultScrollableState;->isScrollingState:Landroidx/compose/runtime/MutableState;

    .line 193
    invoke-interface {v0}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public scroll(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 177
    new-instance v0, Landroidx/compose/foundation/gestures/DefaultScrollableState$scroll$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Landroidx/compose/foundation/gestures/DefaultScrollableState$scroll$2;-><init>(Landroidx/compose/foundation/gestures/DefaultScrollableState;Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, p3}, Lkotlinx/coroutines/CoroutineScopeKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
