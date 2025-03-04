.class public final Landroidx/compose/ui/text/input/InputMethodManagerImpl;
.super Ljava/lang/Object;
.source "InputMethodManager.kt"

# interfaces
.implements Landroidx/compose/ui/text/input/InputMethodManager;


# instance fields
.field private final imm$delegate:Lkotlin/Lazy;

.field private final softwareKeyboardControllerCompat:Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat;

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/input/InputMethodManagerImpl;->view:Landroid/view/View;

    .line 51
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Landroidx/compose/ui/text/input/InputMethodManagerImpl$imm$2;

    invoke-direct {v1, p0}, Landroidx/compose/ui/text/input/InputMethodManagerImpl$imm$2;-><init>(Landroidx/compose/ui/text/input/InputMethodManagerImpl;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/text/input/InputMethodManagerImpl;->imm$delegate:Lkotlin/Lazy;

    .line 57
    new-instance v0, Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat;

    invoke-direct {v0, p1}, Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroidx/compose/ui/text/input/InputMethodManagerImpl;->softwareKeyboardControllerCompat:Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat;

    return-void
.end method

.method public static final synthetic access$getView$p(Landroidx/compose/ui/text/input/InputMethodManagerImpl;)Landroid/view/View;
    .locals 0

    .line 49
    iget-object p0, p0, Landroidx/compose/ui/text/input/InputMethodManagerImpl;->view:Landroid/view/View;

    return-object p0
.end method

.method private final getImm()Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/input/InputMethodManagerImpl;->imm$delegate:Lkotlin/Lazy;

    .line 51
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method


# virtual methods
.method public hideSoftInput()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/input/InputMethodManagerImpl;->softwareKeyboardControllerCompat:Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat;

    .line 72
    invoke-virtual {v0}, Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat;->hide()V

    return-void
.end method

.method public restartInput()V
    .locals 2

    .line 60
    invoke-direct {p0}, Landroidx/compose/ui/text/input/InputMethodManagerImpl;->getImm()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/ui/text/input/InputMethodManagerImpl;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    return-void
.end method

.method public showSoftInput()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/input/InputMethodManagerImpl;->softwareKeyboardControllerCompat:Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat;

    .line 68
    invoke-virtual {v0}, Landroidx/compose/ui/platform/coreshims/SoftwareKeyboardControllerCompat;->show()V

    return-void
.end method

.method public updateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V
    .locals 2

    const-string v0, "extractedText"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-direct {p0}, Landroidx/compose/ui/text/input/InputMethodManagerImpl;->getImm()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/ui/text/input/InputMethodManagerImpl;->view:Landroid/view/View;

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V

    return-void
.end method

.method public updateSelection(IIII)V
    .locals 6

    .line 88
    invoke-direct {p0}, Landroidx/compose/ui/text/input/InputMethodManagerImpl;->getImm()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/ui/text/input/InputMethodManagerImpl;->view:Landroid/view/View;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    return-void
.end method
