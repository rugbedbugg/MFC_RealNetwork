.class public final Landroidx/compose/ui/text/input/TextInputSession;
.super Ljava/lang/Object;
.source "TextInputService.kt"


# instance fields
.field private final platformTextInputService:Landroidx/compose/ui/text/input/PlatformTextInputService;

.field private final textInputService:Landroidx/compose/ui/text/input/TextInputService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/text/input/TextInputService;Landroidx/compose/ui/text/input/PlatformTextInputService;)V
    .locals 1

    const-string v0, "textInputService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "platformTextInputService"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/input/TextInputSession;->textInputService:Landroidx/compose/ui/text/input/TextInputService;

    iput-object p2, p0, Landroidx/compose/ui/text/input/TextInputSession;->platformTextInputService:Landroidx/compose/ui/text/input/PlatformTextInputService;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/input/TextInputSession;->textInputService:Landroidx/compose/ui/text/input/TextInputService;

    .line 140
    invoke-virtual {v0, p0}, Landroidx/compose/ui/text/input/TextInputService;->stopInput(Landroidx/compose/ui/text/input/TextInputSession;)V

    return-void
.end method

.method public final hideSoftwareKeyboard()Z
    .locals 2

    .line 153
    invoke-virtual {p0}, Landroidx/compose/ui/text/input/TextInputSession;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/compose/ui/text/input/TextInputSession;->platformTextInputService:Landroidx/compose/ui/text/input/PlatformTextInputService;

    .line 228
    invoke-interface {v1}, Landroidx/compose/ui/text/input/PlatformTextInputService;->hideSoftwareKeyboard()V

    :cond_0
    return v0
.end method

.method public final isOpen()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/input/TextInputSession;->textInputService:Landroidx/compose/ui/text/input/TextInputService;

    .line 129
    invoke-virtual {v0}, Landroidx/compose/ui/text/input/TextInputService;->getCurrentInputSession$ui_text_release()Landroidx/compose/ui/text/input/TextInputSession;

    move-result-object v0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final notifyFocusedRect(Landroidx/compose/ui/geometry/Rect;)Z
    .locals 2

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Landroidx/compose/ui/text/input/TextInputSession;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/compose/ui/text/input/TextInputSession;->platformTextInputService:Landroidx/compose/ui/text/input/PlatformTextInputService;

    .line 173
    invoke-interface {v1, p1}, Landroidx/compose/ui/text/input/PlatformTextInputService;->notifyFocusedRect(Landroidx/compose/ui/geometry/Rect;)V

    :cond_0
    return v0
.end method

.method public final showSoftwareKeyboard()Z
    .locals 2

    .line 153
    invoke-virtual {p0}, Landroidx/compose/ui/text/input/TextInputSession;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/compose/ui/text/input/TextInputSession;->platformTextInputService:Landroidx/compose/ui/text/input/PlatformTextInputService;

    .line 213
    invoke-interface {v1}, Landroidx/compose/ui/text/input/PlatformTextInputService;->showSoftwareKeyboard()V

    :cond_0
    return v0
.end method

.method public final updateState(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/TextFieldValue;)Z
    .locals 2

    const-string v0, "newValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Landroidx/compose/ui/text/input/TextInputSession;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/compose/ui/text/input/TextInputSession;->platformTextInputService:Landroidx/compose/ui/text/input/PlatformTextInputService;

    .line 195
    invoke-interface {v1, p1, p2}, Landroidx/compose/ui/text/input/PlatformTextInputService;->updateState(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/TextFieldValue;)V

    :cond_0
    return v0
.end method
