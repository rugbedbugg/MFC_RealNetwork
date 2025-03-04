.class public interface abstract Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
.super Ljava/lang/Object;
.source "SuspendingPointerInputFilter.kt"

# interfaces
.implements Landroidx/compose/ui/unit/Density;


# virtual methods
.method public abstract awaitPointerEvent(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method

.method public abstract getCurrentEvent()Landroidx/compose/ui/input/pointer/PointerEvent;
.end method

.method public abstract getExtendedTouchPadding-NH-jbRc()J
.end method

.method public abstract getSize-YbymL2g()J
.end method

.method public abstract getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;
.end method

.method public abstract withTimeout(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method

.method public abstract withTimeoutOrNull(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method
