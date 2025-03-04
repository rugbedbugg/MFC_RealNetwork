.class public final Landroidx/compose/ui/semantics/SemanticsActions;
.super Ljava/lang/Object;
.source "SemanticsProperties.kt"


# static fields
.field private static final Collapse:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final CopyText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final CustomActions:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final CutText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final Dismiss:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final Expand:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final GetTextLayoutResult:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field public static final INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

.field private static final InsertTextAtCursor:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final OnClick:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final OnLongClick:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final PageDown:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final PageLeft:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final PageRight:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final PageUp:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final PasteText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final PerformImeAction:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final RequestFocus:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final ScrollBy:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final ScrollToIndex:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final SetProgress:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final SetSelection:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final SetText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-direct {v0}, Landroidx/compose/ui/semantics/SemanticsActions;-><init>()V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    .line 462
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsPropertiesKt$ActionPropertyKey$1;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsPropertiesKt$ActionPropertyKey$1;

    const-string v2, "GetTextLayoutResult"

    invoke-direct {v0, v2, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->GetTextLayoutResult:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 462
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v2, "OnClick"

    invoke-direct {v0, v2, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->OnClick:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 462
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v2, "OnLongClick"

    invoke-direct {v0, v2, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->OnLongClick:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 462
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v2, "ScrollBy"

    invoke-direct {v0, v2, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->ScrollBy:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 462
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v2, "ScrollToIndex"

    invoke-direct {v0, v2, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->ScrollToIndex:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 462
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v2, "SetProgress"

    invoke-direct {v0, v2, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->SetProgress:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 462
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v2, "SetSelection"

    invoke-direct {v0, v2, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->SetSelection:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 462
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v2, "SetText"

    invoke-direct {v0, v2, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->SetText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 462
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v2, "InsertTextAtCursor"

    invoke-direct {v0, v2, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->InsertTextAtCursor:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 462
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v2, "PerformImeAction"

    invoke-direct {v0, v2, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->PerformImeAction:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 462
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v2, "CopyText"

    invoke-direct {v0, v2, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->CopyText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 462
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v2, "CutText"

    invoke-direct {v0, v2, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->CutText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 462
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v2, "PasteText"

    invoke-direct {v0, v2, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->PasteText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 462
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v2, "Expand"

    invoke-direct {v0, v2, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->Expand:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 462
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v2, "Collapse"

    invoke-direct {v0, v2, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->Collapse:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 462
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v2, "Dismiss"

    invoke-direct {v0, v2, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->Dismiss:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 462
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v2, "RequestFocus"

    invoke-direct {v0, v2, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->RequestFocus:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 344
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, "CustomActions"

    invoke-direct {v0, v4, v2, v3, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->CustomActions:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 462
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v2, "PageUp"

    invoke-direct {v0, v2, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->PageUp:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 462
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v2, "PageLeft"

    invoke-direct {v0, v2, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->PageLeft:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 462
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v2, "PageDown"

    invoke-direct {v0, v2, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->PageDown:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 462
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v2, "PageRight"

    invoke-direct {v0, v2, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->PageRight:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCollapse()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->Collapse:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final getCopyText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->CopyText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final getCustomActions()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->CustomActions:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final getCutText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->CutText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final getDismiss()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->Dismiss:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final getExpand()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->Expand:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final getGetTextLayoutResult()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->GetTextLayoutResult:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final getInsertTextAtCursor()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->InsertTextAtCursor:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final getOnClick()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->OnClick:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final getOnLongClick()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->OnLongClick:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final getPageDown()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->PageDown:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final getPageLeft()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->PageLeft:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final getPageRight()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->PageRight:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final getPageUp()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->PageUp:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final getPasteText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->PasteText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final getPerformImeAction()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->PerformImeAction:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final getRequestFocus()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->RequestFocus:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final getScrollBy()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->ScrollBy:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final getScrollToIndex()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->ScrollToIndex:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final getSetProgress()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->SetProgress:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final getSetSelection()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->SetSelection:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final getSetText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->SetText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method
