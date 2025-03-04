.class Landroidx/core/view/WindowInsetsControllerCompat$Impl30;
.super Landroidx/core/view/WindowInsetsControllerCompat$Impl;
.source "WindowInsetsControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl30"
.end annotation


# instance fields
.field final mCompatController:Landroidx/core/view/WindowInsetsControllerCompat;

.field final mInsetsController:Landroid/view/WindowInsetsController;

.field private final mListeners:Landroidx/collection/SimpleArrayMap;

.field final mSoftwareKeyboardControllerCompat:Landroidx/core/view/SoftwareKeyboardControllerCompat;

.field protected mWindow:Landroid/view/Window;


# direct methods
.method constructor <init>(Landroid/view/Window;Landroidx/core/view/WindowInsetsControllerCompat;Landroidx/core/view/SoftwareKeyboardControllerCompat;)V
    .locals 1

    .line 610
    invoke-static {p1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/Window;)Landroid/view/WindowInsetsController;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/WindowInsetsController;Landroidx/core/view/WindowInsetsControllerCompat;Landroidx/core/view/SoftwareKeyboardControllerCompat;)V

    iput-object p1, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->mWindow:Landroid/view/Window;

    return-void
.end method

.method constructor <init>(Landroid/view/WindowInsetsController;Landroidx/core/view/WindowInsetsControllerCompat;Landroidx/core/view/SoftwareKeyboardControllerCompat;)V
    .locals 1

    .line 616
    invoke-direct {p0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl;-><init>()V

    .line 600
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->mListeners:Landroidx/collection/SimpleArrayMap;

    iput-object p1, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->mInsetsController:Landroid/view/WindowInsetsController;

    iput-object p2, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->mCompatController:Landroidx/core/view/WindowInsetsControllerCompat;

    iput-object p3, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->mSoftwareKeyboardControllerCompat:Landroidx/core/view/SoftwareKeyboardControllerCompat;

    return-void
.end method


# virtual methods
.method public setAppearanceLightNavigationBars(Z)V
    .locals 2

    const/16 v0, 0x10

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->mWindow:Landroid/view/Window;

    if-eqz p1, :cond_0

    .line 675
    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->setSystemUiFlag(I)V

    :cond_0
    iget-object p1, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->mInsetsController:Landroid/view/WindowInsetsController;

    .line 678
    invoke-static {p1, v0, v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30$$ExternalSyntheticApiModelOutline1;->m(Landroid/view/WindowInsetsController;II)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->mWindow:Landroid/view/Window;

    if-eqz p1, :cond_2

    .line 683
    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->unsetSystemUiFlag(I)V

    :cond_2
    iget-object p1, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->mInsetsController:Landroid/view/WindowInsetsController;

    const/4 v1, 0x0

    .line 686
    invoke-static {p1, v1, v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30$$ExternalSyntheticApiModelOutline1;->m(Landroid/view/WindowInsetsController;II)V

    :goto_0
    return-void
.end method

.method public setAppearanceLightStatusBars(Z)V
    .locals 2

    const/16 v0, 0x2000

    const/16 v1, 0x8

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->mWindow:Landroid/view/Window;

    if-eqz p1, :cond_0

    .line 648
    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->setSystemUiFlag(I)V

    :cond_0
    iget-object p1, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->mInsetsController:Landroid/view/WindowInsetsController;

    .line 651
    invoke-static {p1, v1, v1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30$$ExternalSyntheticApiModelOutline1;->m(Landroid/view/WindowInsetsController;II)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->mWindow:Landroid/view/Window;

    if-eqz p1, :cond_2

    .line 656
    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->unsetSystemUiFlag(I)V

    :cond_2
    iget-object p1, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->mInsetsController:Landroid/view/WindowInsetsController;

    const/4 v0, 0x0

    .line 659
    invoke-static {p1, v0, v1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30$$ExternalSyntheticApiModelOutline1;->m(Landroid/view/WindowInsetsController;II)V

    :goto_0
    return-void
.end method

.method protected setSystemUiFlag(I)V
    .locals 2

    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->mWindow:Landroid/view/Window;

    .line 794
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 796
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    or-int/2addr p1, v1

    .line 795
    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method show(I)V
    .locals 1

    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->mSoftwareKeyboardControllerCompat:Landroidx/core/view/SoftwareKeyboardControllerCompat;

    .line 625
    invoke-virtual {v0}, Landroidx/core/view/SoftwareKeyboardControllerCompat;->show()V

    :cond_0
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->mInsetsController:Landroid/view/WindowInsetsController;

    and-int/lit8 p1, p1, -0x9

    .line 627
    invoke-static {v0, p1}, Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat$Impl30$$ExternalSyntheticApiModelOutline2;->m(Landroid/view/WindowInsetsController;I)V

    return-void
.end method

.method protected unsetSystemUiFlag(I)V
    .locals 2

    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->mWindow:Landroid/view/Window;

    .line 787
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 789
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    not-int p1, p1

    and-int/2addr p1, v1

    .line 788
    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method
