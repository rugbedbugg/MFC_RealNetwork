.class public interface abstract Landroidx/compose/ui/focus/FocusOwner;
.super Ljava/lang/Object;
.source "FocusOwner.kt"

# interfaces
.implements Landroidx/compose/ui/focus/FocusManager;


# virtual methods
.method public abstract clearFocus(ZZ)V
.end method

.method public abstract dispatchInterceptedSoftKeyboardEvent-ZmokQxo(Landroid/view/KeyEvent;)Z
.end method

.method public abstract dispatchKeyEvent-ZmokQxo(Landroid/view/KeyEvent;)Z
.end method

.method public abstract dispatchRotaryEvent(Landroidx/compose/ui/input/rotary/RotaryScrollEvent;)Z
.end method

.method public abstract getFocusRect()Landroidx/compose/ui/geometry/Rect;
.end method

.method public abstract getModifier()Landroidx/compose/ui/Modifier;
.end method

.method public abstract releaseFocus()V
.end method

.method public abstract scheduleInvalidation(Landroidx/compose/ui/focus/FocusEventModifierNode;)V
.end method

.method public abstract scheduleInvalidation(Landroidx/compose/ui/focus/FocusPropertiesModifierNode;)V
.end method

.method public abstract scheduleInvalidation(Landroidx/compose/ui/focus/FocusTargetNode;)V
.end method

.method public abstract setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V
.end method

.method public abstract takeFocus()V
.end method
