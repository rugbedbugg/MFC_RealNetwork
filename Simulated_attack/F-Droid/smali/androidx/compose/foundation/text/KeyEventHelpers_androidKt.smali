.class public abstract Landroidx/compose/foundation/text/KeyEventHelpers_androidKt;
.super Ljava/lang/Object;
.source "KeyEventHelpers.android.kt"


# direct methods
.method public static final cancelsTextSelection-ZmokQxo(Landroid/view/KeyEvent;)Z
    .locals 2

    const-string v0, "$this$cancelsTextSelection"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->getType-ZmokQxo(Landroid/view/KeyEvent;)I

    move-result p0

    sget-object v0, Landroidx/compose/ui/input/key/KeyEventType;->Companion:Landroidx/compose/ui/input/key/KeyEventType$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/input/key/KeyEventType$Companion;->getKeyUp-CS__XNY()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/ui/input/key/KeyEventType;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final showCharacterPalette()V
    .locals 0

    .line 0
    return-void
.end method
