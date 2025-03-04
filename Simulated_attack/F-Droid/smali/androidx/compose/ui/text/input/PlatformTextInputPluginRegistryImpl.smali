.class public final Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl;
.super Ljava/lang/Object;
.source "PlatformTextInputAdapter.kt"

# interfaces
.implements Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistry;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl$AdapterHandle;,
        Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl$AdapterInput;,
        Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl$AdapterWithRefCount;
    }
.end annotation


# instance fields
.field private final adaptersByPlugin:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

.field private adaptersMayNeedDisposal:Z

.field private final factory:Lkotlin/jvm/functions/Function2;

.field private focusedPlugin:Landroidx/compose/ui/text/input/PlatformTextInputPlugin;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function2;)V
    .locals 1

    const-string v0, "factory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl;->factory:Lkotlin/jvm/functions/Function2;

    .line 139
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateMapOf()Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl;->adaptersByPlugin:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    return-void
.end method

.method public static final synthetic access$getFocusedPlugin$p(Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl;)Landroidx/compose/ui/text/input/PlatformTextInputPlugin;
    .locals 0

    .line 123
    iget-object p0, p0, Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl;->focusedPlugin:Landroidx/compose/ui/text/input/PlatformTextInputPlugin;

    return-object p0
.end method

.method public static final synthetic access$setAdaptersMayNeedDisposal$p(Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl;Z)V
    .locals 0

    .line 123
    iput-boolean p1, p0, Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl;->adaptersMayNeedDisposal:Z

    return-void
.end method

.method public static final synthetic access$setFocusedPlugin$p(Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl;Landroidx/compose/ui/text/input/PlatformTextInputPlugin;)V
    .locals 0

    .line 123
    iput-object p1, p0, Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl;->focusedPlugin:Landroidx/compose/ui/text/input/PlatformTextInputPlugin;

    return-void
.end method

.method private final instantiateAdapter(Landroidx/compose/ui/text/input/PlatformTextInputPlugin;)Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl$AdapterWithRefCount;
    .locals 2

    .line 265
    new-instance v0, Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl$AdapterInput;

    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl$AdapterInput;-><init>(Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl;Landroidx/compose/ui/text/input/PlatformTextInputPlugin;)V

    iget-object v1, p0, Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl;->factory:Lkotlin/jvm/functions/Function2;

    .line 268
    invoke-interface {v1, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type T of androidx.compose.ui.text.input.PlatformTextInputPluginRegistryImpl.instantiateAdapter"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/ui/text/input/PlatformTextInputAdapter;

    .line 269
    new-instance v1, Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl$AdapterWithRefCount;

    invoke-direct {v1, p0, v0}, Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl$AdapterWithRefCount;-><init>(Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl;Landroidx/compose/ui/text/input/PlatformTextInputAdapter;)V

    iget-object v0, p0, Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl;->adaptersByPlugin:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    .line 270
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method


# virtual methods
.method public final getFocusedAdapter()Landroidx/compose/ui/text/input/PlatformTextInputAdapter;
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl;->adaptersByPlugin:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    iget-object v1, p0, Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl;->focusedPlugin:Landroidx/compose/ui/text/input/PlatformTextInputPlugin;

    .line 162
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl$AdapterWithRefCount;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl$AdapterWithRefCount;->getAdapter()Landroidx/compose/ui/text/input/PlatformTextInputAdapter;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getOrCreateAdapter(Landroidx/compose/ui/text/input/PlatformTextInputPlugin;)Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl$AdapterHandle;
    .locals 3

    const-string v0, "plugin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl;->adaptersByPlugin:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    .line 225
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl$AdapterWithRefCount;

    if-nez v0, :cond_0

    .line 226
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl;->instantiateAdapter(Landroidx/compose/ui/text/input/PlatformTextInputPlugin;)Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl$AdapterWithRefCount;

    move-result-object v0

    .line 227
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl$AdapterWithRefCount;->incrementRefCount()V

    .line 228
    new-instance p1, Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl$AdapterHandle;

    invoke-virtual {v0}, Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl$AdapterWithRefCount;->getAdapter()Landroidx/compose/ui/text/input/PlatformTextInputAdapter;

    move-result-object v1

    new-instance v2, Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl$getOrCreateAdapter$1;

    invoke-direct {v2, v0}, Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl$getOrCreateAdapter$1;-><init>(Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl$AdapterWithRefCount;)V

    invoke-direct {p1, v1, v2}, Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl$AdapterHandle;-><init>(Landroidx/compose/ui/text/input/PlatformTextInputAdapter;Lkotlin/jvm/functions/Function0;)V

    return-object p1
.end method
