.class final Landroidx/compose/ui/input/rotary/RotaryInputNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "RotaryInputModifier.kt"

# interfaces
.implements Landroidx/compose/ui/input/rotary/RotaryInputModifierNode;


# instance fields
.field private onEvent:Lkotlin/jvm/functions/Function1;

.field private onPreEvent:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 106
    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/input/rotary/RotaryInputNode;->onEvent:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Landroidx/compose/ui/input/rotary/RotaryInputNode;->onPreEvent:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public onPreRotaryScrollEvent(Landroidx/compose/ui/input/rotary/RotaryScrollEvent;)Z
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/ui/input/rotary/RotaryInputNode;->onPreEvent:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_0

    .line 110
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onRotaryScrollEvent(Landroidx/compose/ui/input/rotary/RotaryScrollEvent;)Z
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/ui/input/rotary/RotaryInputNode;->onEvent:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_0

    .line 108
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final setOnEvent(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/ui/input/rotary/RotaryInputNode;->onEvent:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setOnPreEvent(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/ui/input/rotary/RotaryInputNode;->onPreEvent:Lkotlin/jvm/functions/Function1;

    return-void
.end method
