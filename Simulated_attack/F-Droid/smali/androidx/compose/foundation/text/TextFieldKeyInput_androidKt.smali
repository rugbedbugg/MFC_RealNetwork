.class public abstract Landroidx/compose/foundation/text/TextFieldKeyInput_androidKt;
.super Ljava/lang/Object;
.source "TextFieldKeyInput.android.kt"


# direct methods
.method public static final isTypedEvent-ZmokQxo(Landroid/view/KeyEvent;)Z
    .locals 1

    const-string v0, "$this$isTypedEvent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 23
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->isISOControl(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
