.class public final Landroidx/compose/ui/semantics/SemanticsProperties;
.super Ljava/lang/Object;
.source "SemanticsProperties.kt"


# static fields
.field private static final CollectionInfo:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final CollectionItemInfo:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final ContentDescription:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final Disabled:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final EditableText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final Error:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final Focused:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final Heading:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final HorizontalScrollAxisRange:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field public static final INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

.field private static final ImeAction:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final IndexForKey:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final InvisibleToUser:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final IsDialog:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final IsPopup:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final IsTraversalGroup:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final LiveRegion:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final PaneTitle:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final Password:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final ProgressBarRangeInfo:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final Role:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final SelectableGroup:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final Selected:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final StateDescription:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final TestTag:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final Text:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final TextSelectionRange:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final ToggleableState:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final TraversalIndex:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final VerticalScrollAxisRange:Landroidx/compose/ui/semantics/SemanticsPropertyKey;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-direct {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;-><init>()V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    .line 39
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v1, "ContentDescription"

    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties$ContentDescription$1;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties$ContentDescription$1;

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->ContentDescription:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 49
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v1, "StateDescription"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->StateDescription:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 55
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v1, "ProgressBarRangeInfo"

    invoke-direct {v0, v1, v2, v3, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->ProgressBarRangeInfo:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 60
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v1, "PaneTitle"

    sget-object v4, Landroidx/compose/ui/semantics/SemanticsProperties$PaneTitle$1;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties$PaneTitle$1;

    invoke-direct {v0, v1, v4}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->PaneTitle:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 70
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v1, "SelectableGroup"

    invoke-direct {v0, v1, v2, v3, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->SelectableGroup:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 73
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v1, "CollectionInfo"

    invoke-direct {v0, v1, v2, v3, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->CollectionInfo:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 76
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v1, "CollectionItemInfo"

    invoke-direct {v0, v1, v2, v3, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->CollectionItemInfo:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 81
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v1, "Heading"

    invoke-direct {v0, v1, v2, v3, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->Heading:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 86
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v1, "Disabled"

    invoke-direct {v0, v1, v2, v3, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->Disabled:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 91
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v1, "LiveRegion"

    invoke-direct {v0, v1, v2, v3, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->LiveRegion:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 96
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v1, "Focused"

    invoke-direct {v0, v1, v2, v3, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->Focused:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 110
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v1, "IsTraversalGroup"

    invoke-direct {v0, v1, v2, v3, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->IsTraversalGroup:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 116
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v1, "InvisibleToUser"

    sget-object v4, Landroidx/compose/ui/semantics/SemanticsProperties$InvisibleToUser$1;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties$InvisibleToUser$1;

    invoke-direct {v0, v1, v4}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->InvisibleToUser:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 126
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v1, "TraversalIndex"

    sget-object v4, Landroidx/compose/ui/semantics/SemanticsProperties$TraversalIndex$1;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties$TraversalIndex$1;

    invoke-direct {v0, v1, v4}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->TraversalIndex:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 138
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v1, "HorizontalScrollAxisRange"

    invoke-direct {v0, v1, v2, v3, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->HorizontalScrollAxisRange:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 144
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v1, "VerticalScrollAxisRange"

    invoke-direct {v0, v1, v2, v3, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->VerticalScrollAxisRange:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 149
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v1, "IsPopup"

    sget-object v4, Landroidx/compose/ui/semantics/SemanticsProperties$IsPopup$1;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties$IsPopup$1;

    invoke-direct {v0, v1, v4}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->IsPopup:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 162
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v1, "IsDialog"

    sget-object v4, Landroidx/compose/ui/semantics/SemanticsProperties$IsDialog$1;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties$IsDialog$1;

    invoke-direct {v0, v1, v4}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->IsDialog:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 181
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v1, "Role"

    sget-object v4, Landroidx/compose/ui/semantics/SemanticsProperties$Role$1;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties$Role$1;

    invoke-direct {v0, v1, v4}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->Role:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 186
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v1, "TestTag"

    sget-object v4, Landroidx/compose/ui/semantics/SemanticsProperties$TestTag$1;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties$TestTag$1;

    invoke-direct {v0, v1, v4}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->TestTag:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 197
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v1, "Text"

    sget-object v4, Landroidx/compose/ui/semantics/SemanticsProperties$Text$1;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties$Text$1;

    invoke-direct {v0, v1, v4}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->Text:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 207
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v1, "EditableText"

    invoke-direct {v0, v1, v2, v3, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->EditableText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 212
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v1, "TextSelectionRange"

    invoke-direct {v0, v1, v2, v3, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->TextSelectionRange:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 217
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v1, "ImeAction"

    invoke-direct {v0, v1, v2, v3, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->ImeAction:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 222
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v1, "Selected"

    invoke-direct {v0, v1, v2, v3, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->Selected:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 227
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v1, "ToggleableState"

    invoke-direct {v0, v1, v2, v3, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->ToggleableState:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 232
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v1, "Password"

    invoke-direct {v0, v1, v2, v3, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->Password:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 237
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v1, "Error"

    invoke-direct {v0, v1, v2, v3, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->Error:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 242
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v1, "IndexForKey"

    invoke-direct {v0, v1, v2, v3, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->IndexForKey:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCollectionInfo()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->CollectionInfo:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final getCollectionItemInfo()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->CollectionItemInfo:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final getContentDescription()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->ContentDescription:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final getDisabled()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->Disabled:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final getEditableText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->EditableText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final getError()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->Error:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final getFocused()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->Focused:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final getHeading()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->Heading:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final getHorizontalScrollAxisRange()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->HorizontalScrollAxisRange:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final getImeAction()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->ImeAction:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final getIndexForKey()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->IndexForKey:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final getInvisibleToUser()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->InvisibleToUser:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final getIsPopup()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->IsPopup:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final getIsTraversalGroup()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->IsTraversalGroup:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final getLiveRegion()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->LiveRegion:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final getPaneTitle()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->PaneTitle:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final getPassword()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->Password:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final getProgressBarRangeInfo()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->ProgressBarRangeInfo:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final getRole()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->Role:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final getSelectableGroup()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->SelectableGroup:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final getSelected()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->Selected:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final getStateDescription()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->StateDescription:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final getTestTag()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->TestTag:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final getText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->Text:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final getTextSelectionRange()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->TextSelectionRange:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final getToggleableState()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->ToggleableState:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final getTraversalIndex()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->TraversalIndex:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final getVerticalScrollAxisRange()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->VerticalScrollAxisRange:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method
