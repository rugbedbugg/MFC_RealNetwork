.class public abstract Landroidx/core/view/accessibility/AccessibilityManagerCompat;
.super Ljava/lang/Object;
.source "AccessibilityManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/accessibility/AccessibilityManagerCompat$Api19Impl;,
        Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;,
        Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListenerWrapper;
    }
.end annotation


# direct methods
.method public static addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;)Z
    .locals 0

    .line 171
    invoke-static {p0, p1}, Landroidx/core/view/accessibility/AccessibilityManagerCompat$Api19Impl;->addTouchExplorationStateChangeListenerWrapper(Landroid/view/accessibility/AccessibilityManager;Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;)Z

    move-result p0

    return p0
.end method

.method public static removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;)Z
    .locals 0

    .line 187
    invoke-static {p0, p1}, Landroidx/core/view/accessibility/AccessibilityManagerCompat$Api19Impl;->removeTouchExplorationStateChangeListenerWrapper(Landroid/view/accessibility/AccessibilityManager;Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;)Z

    move-result p0

    return p0
.end method
