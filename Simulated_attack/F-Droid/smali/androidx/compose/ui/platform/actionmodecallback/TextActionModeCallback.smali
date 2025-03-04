.class public final Landroidx/compose/ui/platform/actionmodecallback/TextActionModeCallback;
.super Ljava/lang/Object;
.source "TextActionModeCallback.android.kt"


# instance fields
.field private final onActionModeDestroy:Lkotlin/jvm/functions/Function0;

.field private onCopyRequested:Lkotlin/jvm/functions/Function0;

.field private onCutRequested:Lkotlin/jvm/functions/Function0;

.field private onPasteRequested:Lkotlin/jvm/functions/Function0;

.field private onSelectAllRequested:Lkotlin/jvm/functions/Function0;

.field private rect:Landroidx/compose/ui/geometry/Rect;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/geometry/Rect;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const-string v0, "rect"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/platform/actionmodecallback/TextActionModeCallback;->onActionModeDestroy:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Landroidx/compose/ui/platform/actionmodecallback/TextActionModeCallback;->rect:Landroidx/compose/ui/geometry/Rect;

    iput-object p3, p0, Landroidx/compose/ui/platform/actionmodecallback/TextActionModeCallback;->onCopyRequested:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Landroidx/compose/ui/platform/actionmodecallback/TextActionModeCallback;->onPasteRequested:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Landroidx/compose/ui/platform/actionmodecallback/TextActionModeCallback;->onCutRequested:Lkotlin/jvm/functions/Function0;

    iput-object p6, p0, Landroidx/compose/ui/platform/actionmodecallback/TextActionModeCallback;->onSelectAllRequested:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/geometry/Rect;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 5

    and-int/lit8 p8, p7, 0x1

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move-object p8, v0

    goto :goto_0

    :cond_0
    move-object p8, p1

    :goto_0
    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_1

    .line 27
    sget-object p1, Landroidx/compose/ui/geometry/Rect;->Companion:Landroidx/compose/ui/geometry/Rect$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect$Companion;->getZero()Landroidx/compose/ui/geometry/Rect;

    move-result-object p2

    :cond_1
    move-object v1, p2

    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_2

    move-object v2, v0

    goto :goto_1

    :cond_2
    move-object v2, p3

    :goto_1
    and-int/lit8 p1, p7, 0x8

    if-eqz p1, :cond_3

    move-object v3, v0

    goto :goto_2

    :cond_3
    move-object v3, p4

    :goto_2
    and-int/lit8 p1, p7, 0x10

    if-eqz p1, :cond_4

    move-object v4, v0

    goto :goto_3

    :cond_4
    move-object v4, p5

    :goto_3
    and-int/lit8 p1, p7, 0x20

    if-eqz p1, :cond_5

    move-object p7, v0

    goto :goto_4

    :cond_5
    move-object p7, p6

    :goto_4
    move-object p1, p0

    move-object p2, p8

    move-object p3, v1

    move-object p4, v2

    move-object p5, v3

    move-object p6, v4

    .line 25
    invoke-direct/range {p1 .. p7}, Landroidx/compose/ui/platform/actionmodecallback/TextActionModeCallback;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/geometry/Rect;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final addOrRemoveMenuItem(Landroid/view/Menu;Landroidx/compose/ui/platform/actionmodecallback/MenuItemOption;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    if-eqz p3, :cond_0

    .line 95
    invoke-virtual {p2}, Landroidx/compose/ui/platform/actionmodecallback/MenuItemOption;->getId()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/platform/actionmodecallback/TextActionModeCallback;->addMenuItem$ui_release(Landroid/view/Menu;Landroidx/compose/ui/platform/actionmodecallback/MenuItemOption;)V

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    .line 96
    invoke-virtual {p2}, Landroidx/compose/ui/platform/actionmodecallback/MenuItemOption;->getId()I

    move-result p3

    invoke-interface {p1, p3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Landroidx/compose/ui/platform/actionmodecallback/MenuItemOption;->getId()I

    move-result p2

    invoke-interface {p1, p2}, Landroid/view/Menu;->removeItem(I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final addMenuItem$ui_release(Landroid/view/Menu;Landroidx/compose/ui/platform/actionmodecallback/MenuItemOption;)V
    .locals 3

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroidx/compose/ui/platform/actionmodecallback/MenuItemOption;->getId()I

    move-result v0

    invoke-virtual {p2}, Landroidx/compose/ui/platform/actionmodecallback/MenuItemOption;->getOrder()I

    move-result v1

    invoke-virtual {p2}, Landroidx/compose/ui/platform/actionmodecallback/MenuItemOption;->getTitleResource()I

    move-result p2

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    const/4 p2, 0x1

    .line 86
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public final getRect()Landroidx/compose/ui/geometry/Rect;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/ui/platform/actionmodecallback/TextActionModeCallback;->rect:Landroidx/compose/ui/geometry/Rect;

    return-object v0
.end method

.method public final onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    .line 61
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    .line 62
    sget-object v0, Landroidx/compose/ui/platform/actionmodecallback/MenuItemOption;->Copy:Landroidx/compose/ui/platform/actionmodecallback/MenuItemOption;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/actionmodecallback/MenuItemOption;->getId()I

    move-result v0

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Landroidx/compose/ui/platform/actionmodecallback/TextActionModeCallback;->onCopyRequested:Lkotlin/jvm/functions/Function0;

    if-eqz p2, :cond_3

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    .line 63
    :cond_0
    sget-object v0, Landroidx/compose/ui/platform/actionmodecallback/MenuItemOption;->Paste:Landroidx/compose/ui/platform/actionmodecallback/MenuItemOption;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/actionmodecallback/MenuItemOption;->getId()I

    move-result v0

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Landroidx/compose/ui/platform/actionmodecallback/TextActionModeCallback;->onPasteRequested:Lkotlin/jvm/functions/Function0;

    if-eqz p2, :cond_3

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    .line 64
    :cond_1
    sget-object v0, Landroidx/compose/ui/platform/actionmodecallback/MenuItemOption;->Cut:Landroidx/compose/ui/platform/actionmodecallback/MenuItemOption;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/actionmodecallback/MenuItemOption;->getId()I

    move-result v0

    if-ne p2, v0, :cond_2

    iget-object p2, p0, Landroidx/compose/ui/platform/actionmodecallback/TextActionModeCallback;->onCutRequested:Lkotlin/jvm/functions/Function0;

    if-eqz p2, :cond_3

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    .line 65
    :cond_2
    sget-object v0, Landroidx/compose/ui/platform/actionmodecallback/MenuItemOption;->SelectAll:Landroidx/compose/ui/platform/actionmodecallback/MenuItemOption;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/actionmodecallback/MenuItemOption;->getId()I

    move-result v0

    if-ne p2, v0, :cond_5

    iget-object p2, p0, Landroidx/compose/ui/platform/actionmodecallback/TextActionModeCallback;->onSelectAllRequested:Lkotlin/jvm/functions/Function0;

    if-eqz p2, :cond_3

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_3
    :goto_0
    if-eqz p1, :cond_4

    .line 68
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    :cond_4
    const/4 p1, 0x1

    return p1

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method public final onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    const-string v0, "Required value was null."

    if-eqz p2, :cond_5

    if-eqz p1, :cond_4

    iget-object p1, p0, Landroidx/compose/ui/platform/actionmodecallback/TextActionModeCallback;->onCopyRequested:Lkotlin/jvm/functions/Function0;

    if-eqz p1, :cond_0

    .line 38
    sget-object p1, Landroidx/compose/ui/platform/actionmodecallback/MenuItemOption;->Copy:Landroidx/compose/ui/platform/actionmodecallback/MenuItemOption;

    invoke-virtual {p0, p2, p1}, Landroidx/compose/ui/platform/actionmodecallback/TextActionModeCallback;->addMenuItem$ui_release(Landroid/view/Menu;Landroidx/compose/ui/platform/actionmodecallback/MenuItemOption;)V

    :cond_0
    iget-object p1, p0, Landroidx/compose/ui/platform/actionmodecallback/TextActionModeCallback;->onPasteRequested:Lkotlin/jvm/functions/Function0;

    if-eqz p1, :cond_1

    .line 41
    sget-object p1, Landroidx/compose/ui/platform/actionmodecallback/MenuItemOption;->Paste:Landroidx/compose/ui/platform/actionmodecallback/MenuItemOption;

    invoke-virtual {p0, p2, p1}, Landroidx/compose/ui/platform/actionmodecallback/TextActionModeCallback;->addMenuItem$ui_release(Landroid/view/Menu;Landroidx/compose/ui/platform/actionmodecallback/MenuItemOption;)V

    :cond_1
    iget-object p1, p0, Landroidx/compose/ui/platform/actionmodecallback/TextActionModeCallback;->onCutRequested:Lkotlin/jvm/functions/Function0;

    if-eqz p1, :cond_2

    .line 44
    sget-object p1, Landroidx/compose/ui/platform/actionmodecallback/MenuItemOption;->Cut:Landroidx/compose/ui/platform/actionmodecallback/MenuItemOption;

    invoke-virtual {p0, p2, p1}, Landroidx/compose/ui/platform/actionmodecallback/TextActionModeCallback;->addMenuItem$ui_release(Landroid/view/Menu;Landroidx/compose/ui/platform/actionmodecallback/MenuItemOption;)V

    :cond_2
    iget-object p1, p0, Landroidx/compose/ui/platform/actionmodecallback/TextActionModeCallback;->onSelectAllRequested:Lkotlin/jvm/functions/Function0;

    if-eqz p1, :cond_3

    .line 47
    sget-object p1, Landroidx/compose/ui/platform/actionmodecallback/MenuItemOption;->SelectAll:Landroidx/compose/ui/platform/actionmodecallback/MenuItemOption;

    invoke-virtual {p0, p2, p1}, Landroidx/compose/ui/platform/actionmodecallback/TextActionModeCallback;->addMenuItem$ui_release(Landroid/view/Menu;Landroidx/compose/ui/platform/actionmodecallback/MenuItemOption;)V

    :cond_3
    const/4 p1, 0x1

    return p1

    .line 35
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 34
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onDestroyActionMode()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/actionmodecallback/TextActionModeCallback;->onActionModeDestroy:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_0

    .line 73
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {p0, p2}, Landroidx/compose/ui/platform/actionmodecallback/TextActionModeCallback;->updateMenuItems$ui_release(Landroid/view/Menu;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final setOnCopyRequested(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/ui/platform/actionmodecallback/TextActionModeCallback;->onCopyRequested:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setOnCutRequested(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/ui/platform/actionmodecallback/TextActionModeCallback;->onCutRequested:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setOnPasteRequested(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/ui/platform/actionmodecallback/TextActionModeCallback;->onPasteRequested:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setOnSelectAllRequested(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/ui/platform/actionmodecallback/TextActionModeCallback;->onSelectAllRequested:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setRect(Landroidx/compose/ui/geometry/Rect;)V
    .locals 1

    .line 0
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/compose/ui/platform/actionmodecallback/TextActionModeCallback;->rect:Landroidx/compose/ui/geometry/Rect;

    return-void
.end method

.method public final updateMenuItems$ui_release(Landroid/view/Menu;)V
    .locals 2

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    sget-object v0, Landroidx/compose/ui/platform/actionmodecallback/MenuItemOption;->Copy:Landroidx/compose/ui/platform/actionmodecallback/MenuItemOption;

    iget-object v1, p0, Landroidx/compose/ui/platform/actionmodecallback/TextActionModeCallback;->onCopyRequested:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, p1, v0, v1}, Landroidx/compose/ui/platform/actionmodecallback/TextActionModeCallback;->addOrRemoveMenuItem(Landroid/view/Menu;Landroidx/compose/ui/platform/actionmodecallback/MenuItemOption;Lkotlin/jvm/functions/Function0;)V

    .line 79
    sget-object v0, Landroidx/compose/ui/platform/actionmodecallback/MenuItemOption;->Paste:Landroidx/compose/ui/platform/actionmodecallback/MenuItemOption;

    iget-object v1, p0, Landroidx/compose/ui/platform/actionmodecallback/TextActionModeCallback;->onPasteRequested:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, p1, v0, v1}, Landroidx/compose/ui/platform/actionmodecallback/TextActionModeCallback;->addOrRemoveMenuItem(Landroid/view/Menu;Landroidx/compose/ui/platform/actionmodecallback/MenuItemOption;Lkotlin/jvm/functions/Function0;)V

    .line 80
    sget-object v0, Landroidx/compose/ui/platform/actionmodecallback/MenuItemOption;->Cut:Landroidx/compose/ui/platform/actionmodecallback/MenuItemOption;

    iget-object v1, p0, Landroidx/compose/ui/platform/actionmodecallback/TextActionModeCallback;->onCutRequested:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, p1, v0, v1}, Landroidx/compose/ui/platform/actionmodecallback/TextActionModeCallback;->addOrRemoveMenuItem(Landroid/view/Menu;Landroidx/compose/ui/platform/actionmodecallback/MenuItemOption;Lkotlin/jvm/functions/Function0;)V

    .line 81
    sget-object v0, Landroidx/compose/ui/platform/actionmodecallback/MenuItemOption;->SelectAll:Landroidx/compose/ui/platform/actionmodecallback/MenuItemOption;

    iget-object v1, p0, Landroidx/compose/ui/platform/actionmodecallback/TextActionModeCallback;->onSelectAllRequested:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, p1, v0, v1}, Landroidx/compose/ui/platform/actionmodecallback/TextActionModeCallback;->addOrRemoveMenuItem(Landroid/view/Menu;Landroidx/compose/ui/platform/actionmodecallback/MenuItemOption;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
