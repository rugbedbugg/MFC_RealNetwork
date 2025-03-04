.class Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat$Impl30;
.super Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat$Impl20;
.source "SoftwareKeyboardControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl30"
.end annotation


# instance fields
.field private mView:Landroid/view/View;

.field private mWindowInsetsController:Landroid/view/WindowInsetsController;


# direct methods
.method public static synthetic $r8$lambda$96OMlisctbliLDQaauJF8weRDJM(Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/view/WindowInsetsController;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat$Impl30;->lambda$hide$0(Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/view/WindowInsetsController;I)V

    return-void
.end method

.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 161
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat$Impl20;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat$Impl30;->mView:Landroid/view/View;

    return-void
.end method

.method private static synthetic lambda$hide$0(Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/view/WindowInsetsController;I)V
    .locals 0

    and-int/lit8 p1, p2, 0x8

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 211
    :goto_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method


# virtual methods
.method hide()V
    .locals 5

    iget-object v0, p0, Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat$Impl30;->mWindowInsetsController:Landroid/view/WindowInsetsController;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat$Impl30;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 206
    invoke-static {v0}, Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat$Impl30$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/View;)Landroid/view/WindowInsetsController;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 209
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 210
    new-instance v3, Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat$Impl30$$ExternalSyntheticLambda6;

    invoke-direct {v3, v1}, Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat$Impl30$$ExternalSyntheticLambda6;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 216
    invoke-static {v0, v3}, Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat$Impl30$$ExternalSyntheticApiModelOutline3;->m(Landroid/view/WindowInsetsController;Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;)V

    .line 217
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat$Impl30;->mView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 218
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "input_method"

    .line 219
    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, p0, Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat$Impl30;->mView:Landroid/view/View;

    .line 223
    invoke-virtual {v4}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 225
    :cond_2
    invoke-static {v0, v3}, Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat$Impl30$$ExternalSyntheticApiModelOutline4;->m(Landroid/view/WindowInsetsController;Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;)V

    .line 226
    invoke-static {}, Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat$Impl30$$ExternalSyntheticApiModelOutline1;->m()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat$Impl30$$ExternalSyntheticApiModelOutline5;->m(Landroid/view/WindowInsetsController;I)V

    goto :goto_1

    .line 229
    :cond_3
    invoke-super {p0}, Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat$Impl20;->hide()V

    :goto_1
    return-void
.end method

.method show()V
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat$Impl30;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-ge v1, v2, :cond_0

    .line 174
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    .line 175
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 184
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat$Impl30;->mWindowInsetsController:Landroid/view/WindowInsetsController;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat$Impl30;->mView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 190
    invoke-static {v0}, Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat$Impl30$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/View;)Landroid/view/WindowInsetsController;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 193
    invoke-static {}, Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat$Impl30$$ExternalSyntheticApiModelOutline1;->m()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat$Impl30$$ExternalSyntheticApiModelOutline2;->m(Landroid/view/WindowInsetsController;I)V

    goto :goto_1

    .line 196
    :cond_3
    invoke-super {p0}, Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat$Impl20;->show()V

    :goto_1
    return-void
.end method
