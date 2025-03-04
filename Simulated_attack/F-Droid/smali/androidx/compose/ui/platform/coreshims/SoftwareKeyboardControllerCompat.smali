.class public final Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat;
.super Ljava/lang/Object;
.source "SoftwareKeyboardControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat$Impl30;,
        Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat$Impl;,
        Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat$Impl20;
    }
.end annotation


# instance fields
.field private final mImpl:Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat$Impl;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 50
    new-instance v0, Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat$Impl30;

    invoke-direct {v0, p1}, Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat$Impl30;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat;->mImpl:Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat$Impl;

    goto :goto_0

    .line 52
    :cond_0
    new-instance v0, Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat$Impl20;

    invoke-direct {v0, p1}, Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat$Impl20;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat;->mImpl:Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat$Impl;

    :goto_0
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat;->mImpl:Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat$Impl;

    .line 81
    invoke-virtual {v0}, Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat$Impl;->hide()V

    return-void
.end method

.method public show()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat;->mImpl:Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat$Impl;

    .line 71
    invoke-virtual {v0}, Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat$Impl;->show()V

    return-void
.end method
