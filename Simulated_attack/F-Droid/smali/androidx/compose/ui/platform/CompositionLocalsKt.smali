.class public abstract Landroidx/compose/ui/platform/CompositionLocalsKt;
.super Ljava/lang/Object;
.source "CompositionLocals.kt"


# static fields
.field private static final LocalAccessibilityManager:Landroidx/compose/runtime/ProvidableCompositionLocal;

.field private static final LocalAutofill:Landroidx/compose/runtime/ProvidableCompositionLocal;

.field private static final LocalAutofillTree:Landroidx/compose/runtime/ProvidableCompositionLocal;

.field private static final LocalClipboardManager:Landroidx/compose/runtime/ProvidableCompositionLocal;

.field private static final LocalDensity:Landroidx/compose/runtime/ProvidableCompositionLocal;

.field private static final LocalFocusManager:Landroidx/compose/runtime/ProvidableCompositionLocal;

.field private static final LocalFontFamilyResolver:Landroidx/compose/runtime/ProvidableCompositionLocal;

.field private static final LocalFontLoader:Landroidx/compose/runtime/ProvidableCompositionLocal;

.field private static final LocalHapticFeedback:Landroidx/compose/runtime/ProvidableCompositionLocal;

.field private static final LocalInputModeManager:Landroidx/compose/runtime/ProvidableCompositionLocal;

.field private static final LocalLayoutDirection:Landroidx/compose/runtime/ProvidableCompositionLocal;

.field private static final LocalPlatformTextInputPluginRegistry:Landroidx/compose/runtime/ProvidableCompositionLocal;

.field private static final LocalPointerIconService:Landroidx/compose/runtime/ProvidableCompositionLocal;

.field private static final LocalTextInputService:Landroidx/compose/runtime/ProvidableCompositionLocal;

.field private static final LocalTextToolbar:Landroidx/compose/runtime/ProvidableCompositionLocal;

.field private static final LocalUriHandler:Landroidx/compose/runtime/ProvidableCompositionLocal;

.field private static final LocalViewConfiguration:Landroidx/compose/runtime/ProvidableCompositionLocal;

.field private static final LocalWindowInfo:Landroidx/compose/runtime/ProvidableCompositionLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalAccessibilityManager$1;->INSTANCE:Landroidx/compose/ui/platform/CompositionLocalsKt$LocalAccessibilityManager$1;

    .line 43
    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalAccessibilityManager:Landroidx/compose/runtime/ProvidableCompositionLocal;

    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalAutofill$1;->INSTANCE:Landroidx/compose/ui/platform/CompositionLocalsKt$LocalAutofill$1;

    .line 52
    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalAutofill:Landroidx/compose/runtime/ProvidableCompositionLocal;

    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalAutofillTree$1;->INSTANCE:Landroidx/compose/ui/platform/CompositionLocalsKt$LocalAutofillTree$1;

    .line 63
    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalAutofillTree:Landroidx/compose/runtime/ProvidableCompositionLocal;

    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalClipboardManager$1;->INSTANCE:Landroidx/compose/ui/platform/CompositionLocalsKt$LocalClipboardManager$1;

    .line 70
    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalClipboardManager:Landroidx/compose/runtime/ProvidableCompositionLocal;

    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalDensity$1;->INSTANCE:Landroidx/compose/ui/platform/CompositionLocalsKt$LocalDensity$1;

    .line 82
    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/ProvidableCompositionLocal;

    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalFocusManager$1;->INSTANCE:Landroidx/compose/ui/platform/CompositionLocalsKt$LocalFocusManager$1;

    .line 89
    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalFocusManager:Landroidx/compose/runtime/ProvidableCompositionLocal;

    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalFontLoader$1;->INSTANCE:Landroidx/compose/ui/platform/CompositionLocalsKt$LocalFontLoader$1;

    .line 102
    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalFontLoader:Landroidx/compose/runtime/ProvidableCompositionLocal;

    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalFontFamilyResolver$1;->INSTANCE:Landroidx/compose/ui/platform/CompositionLocalsKt$LocalFontFamilyResolver$1;

    .line 109
    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalFontFamilyResolver:Landroidx/compose/runtime/ProvidableCompositionLocal;

    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalHapticFeedback$1;->INSTANCE:Landroidx/compose/ui/platform/CompositionLocalsKt$LocalHapticFeedback$1;

    .line 116
    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalHapticFeedback:Landroidx/compose/runtime/ProvidableCompositionLocal;

    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalInputModeManager$1;->INSTANCE:Landroidx/compose/ui/platform/CompositionLocalsKt$LocalInputModeManager$1;

    .line 124
    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalInputModeManager:Landroidx/compose/runtime/ProvidableCompositionLocal;

    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalLayoutDirection$1;->INSTANCE:Landroidx/compose/ui/platform/CompositionLocalsKt$LocalLayoutDirection$1;

    .line 131
    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalLayoutDirection:Landroidx/compose/runtime/ProvidableCompositionLocal;

    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalTextInputService$1;->INSTANCE:Landroidx/compose/ui/platform/CompositionLocalsKt$LocalTextInputService$1;

    .line 138
    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalTextInputService:Landroidx/compose/runtime/ProvidableCompositionLocal;

    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalPlatformTextInputPluginRegistry$1;->INSTANCE:Landroidx/compose/ui/platform/CompositionLocalsKt$LocalPlatformTextInputPluginRegistry$1;

    .line 151
    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalPlatformTextInputPluginRegistry:Landroidx/compose/runtime/ProvidableCompositionLocal;

    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalTextToolbar$1;->INSTANCE:Landroidx/compose/ui/platform/CompositionLocalsKt$LocalTextToolbar$1;

    .line 158
    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalTextToolbar:Landroidx/compose/runtime/ProvidableCompositionLocal;

    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalUriHandler$1;->INSTANCE:Landroidx/compose/ui/platform/CompositionLocalsKt$LocalUriHandler$1;

    .line 165
    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalUriHandler:Landroidx/compose/runtime/ProvidableCompositionLocal;

    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalViewConfiguration$1;->INSTANCE:Landroidx/compose/ui/platform/CompositionLocalsKt$LocalViewConfiguration$1;

    .line 172
    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalViewConfiguration:Landroidx/compose/runtime/ProvidableCompositionLocal;

    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalWindowInfo$1;->INSTANCE:Landroidx/compose/ui/platform/CompositionLocalsKt$LocalWindowInfo$1;

    .line 179
    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalWindowInfo:Landroidx/compose/runtime/ProvidableCompositionLocal;

    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalPointerIconService$1;->INSTANCE:Landroidx/compose/ui/platform/CompositionLocalsKt$LocalPointerIconService$1;

    .line 183
    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalPointerIconService:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-void
.end method

.method public static final ProvideCommonCompositionLocals(Landroidx/compose/ui/node/Owner;Landroidx/compose/ui/platform/UriHandler;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 7

    const-string v0, "owner"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uriHandler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x34224bad

    .line 194
    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p3

    and-int/lit8 v1, p4, 0xe

    const/4 v2, 0x2

    const/4 v3, 0x4

    if-nez v1, :cond_1

    invoke-interface {p3, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    or-int/2addr v1, p4

    goto :goto_1

    :cond_1
    move v1, p4

    :goto_1
    and-int/lit8 v4, p4, 0x70

    const/16 v5, 0x10

    if-nez v4, :cond_3

    invoke-interface {p3, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x20

    goto :goto_2

    :cond_2
    move v4, v5

    :goto_2
    or-int/2addr v1, v4

    :cond_3
    and-int/lit16 v4, p4, 0x380

    if-nez v4, :cond_5

    invoke-interface {p3, p2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x100

    goto :goto_3

    :cond_4
    const/16 v4, 0x80

    :goto_3
    or-int/2addr v1, v4

    :cond_5
    and-int/lit16 v4, v1, 0x2db

    const/16 v6, 0x92

    if-ne v4, v6, :cond_7

    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_4

    .line 217
    :cond_6
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_5

    .line 194
    :cond_7
    :goto_4
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, -0x1

    const-string v6, "androidx.compose.ui.platform.ProvideCommonCompositionLocals (CompositionLocals.kt:189)"

    invoke-static {v0, v1, v4, v6}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_8
    const/16 v0, 0x12

    new-array v0, v0, [Landroidx/compose/runtime/ProvidedValue;

    sget-object v4, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalAccessibilityManager:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 196
    invoke-interface {p0}, Landroidx/compose/ui/node/Owner;->getAccessibilityManager()Landroidx/compose/ui/platform/AccessibilityManager;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v0, v6

    sget-object v4, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalAutofill:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 197
    invoke-interface {p0}, Landroidx/compose/ui/node/Owner;->getAutofill()Landroidx/compose/ui/autofill/Autofill;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v0, v6

    sget-object v4, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalAutofillTree:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 198
    invoke-interface {p0}, Landroidx/compose/ui/node/Owner;->getAutofillTree()Landroidx/compose/ui/autofill/AutofillTree;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v4

    aput-object v4, v0, v2

    sget-object v2, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalClipboardManager:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 199
    invoke-interface {p0}, Landroidx/compose/ui/node/Owner;->getClipboardManager()Landroidx/compose/ui/platform/ClipboardManager;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v0, v4

    sget-object v2, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 200
    invoke-interface {p0}, Landroidx/compose/ui/node/Owner;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v2

    aput-object v2, v0, v3

    sget-object v2, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalFocusManager:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 201
    invoke-interface {p0}, Landroidx/compose/ui/node/Owner;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v0, v3

    sget-object v2, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalFontLoader:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 203
    invoke-interface {p0}, Landroidx/compose/ui/node/Owner;->getFontLoader()Landroidx/compose/ui/text/font/Font$ResourceLoader;

    move-result-object v3

    .line 202
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ProvidableCompositionLocal;->providesDefault(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v0, v3

    sget-object v2, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalFontFamilyResolver:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 204
    invoke-interface {p0}, Landroidx/compose/ui/node/Owner;->getFontFamilyResolver()Landroidx/compose/ui/text/font/FontFamily$Resolver;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ProvidableCompositionLocal;->providesDefault(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v0, v3

    sget-object v2, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalHapticFeedback:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 205
    invoke-interface {p0}, Landroidx/compose/ui/node/Owner;->getHapticFeedBack()Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, v0, v3

    sget-object v2, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalInputModeManager:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 206
    invoke-interface {p0}, Landroidx/compose/ui/node/Owner;->getInputModeManager()Landroidx/compose/ui/input/InputModeManager;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v2

    const/16 v6, 0x9

    aput-object v2, v0, v6

    sget-object v2, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalLayoutDirection:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 207
    invoke-interface {p0}, Landroidx/compose/ui/node/Owner;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v2

    const/16 v6, 0xa

    aput-object v2, v0, v6

    sget-object v2, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalTextInputService:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 208
    invoke-interface {p0}, Landroidx/compose/ui/node/Owner;->getTextInputService()Landroidx/compose/ui/text/input/TextInputService;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v2

    const/16 v6, 0xb

    aput-object v2, v0, v6

    sget-object v2, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalPlatformTextInputPluginRegistry:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 209
    invoke-interface {p0}, Landroidx/compose/ui/node/Owner;->getPlatformTextInputPluginRegistry()Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistry;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v2

    const/16 v6, 0xc

    aput-object v2, v0, v6

    sget-object v2, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalTextToolbar:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 210
    invoke-interface {p0}, Landroidx/compose/ui/node/Owner;->getTextToolbar()Landroidx/compose/ui/platform/TextToolbar;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v2

    const/16 v6, 0xd

    aput-object v2, v0, v6

    sget-object v2, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalUriHandler:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 211
    invoke-virtual {v2, p1}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v2

    const/16 v6, 0xe

    aput-object v2, v0, v6

    sget-object v2, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalViewConfiguration:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 212
    invoke-interface {p0}, Landroidx/compose/ui/node/Owner;->getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v2

    const/16 v6, 0xf

    aput-object v2, v0, v6

    sget-object v2, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalWindowInfo:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 213
    invoke-interface {p0}, Landroidx/compose/ui/node/Owner;->getWindowInfo()Landroidx/compose/ui/platform/WindowInfo;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v2

    aput-object v2, v0, v5

    sget-object v2, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalPointerIconService:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 214
    invoke-interface {p0}, Landroidx/compose/ui/node/Owner;->getPointerIconService()Landroidx/compose/ui/input/pointer/PointerIconService;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v2

    const/16 v5, 0x11

    aput-object v2, v0, v5

    shr-int/2addr v1, v4

    and-int/lit8 v1, v1, 0x70

    or-int/2addr v1, v3

    .line 195
    invoke-static {v0, p2, p3, v1}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 217
    :cond_9
    :goto_5
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object p3

    if-nez p3, :cond_a

    goto :goto_6

    :cond_a
    new-instance v0, Landroidx/compose/ui/platform/CompositionLocalsKt$ProvideCommonCompositionLocals$1;

    invoke-direct {v0, p0, p1, p2, p4}, Landroidx/compose/ui/platform/CompositionLocalsKt$ProvideCommonCompositionLocals$1;-><init>(Landroidx/compose/ui/node/Owner;Landroidx/compose/ui/platform/UriHandler;Lkotlin/jvm/functions/Function2;I)V

    invoke-interface {p3, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_6
    return-void
.end method

.method public static final synthetic access$noLocalProvidedFor(Ljava/lang/String;)Ljava/lang/Void;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/platform/CompositionLocalsKt;->noLocalProvidedFor(Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public static final getLocalAccessibilityManager()Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalAccessibilityManager:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-object v0
.end method

.method public static final getLocalClipboardManager()Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalClipboardManager:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-object v0
.end method

.method public static final getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-object v0
.end method

.method public static final getLocalFocusManager()Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalFocusManager:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-object v0
.end method

.method public static final getLocalFontFamilyResolver()Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalFontFamilyResolver:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-object v0
.end method

.method public static final getLocalHapticFeedback()Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalHapticFeedback:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-object v0
.end method

.method public static final getLocalInputModeManager()Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalInputModeManager:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-object v0
.end method

.method public static final getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalLayoutDirection:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-object v0
.end method

.method public static final getLocalPointerIconService()Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalPointerIconService:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-object v0
.end method

.method public static final getLocalTextInputService()Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalTextInputService:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-object v0
.end method

.method public static final getLocalTextToolbar()Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalTextToolbar:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-object v0
.end method

.method public static final getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalViewConfiguration:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-object v0
.end method

.method private static final noLocalProvidedFor(Ljava/lang/String;)Ljava/lang/Void;
    .locals 3

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CompositionLocal "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not present"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
