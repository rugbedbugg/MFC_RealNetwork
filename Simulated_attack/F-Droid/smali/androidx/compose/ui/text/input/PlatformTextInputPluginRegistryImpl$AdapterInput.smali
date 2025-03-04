.class final Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl$AdapterInput;
.super Ljava/lang/Object;
.source "PlatformTextInputAdapter.kt"

# interfaces
.implements Landroidx/compose/ui/text/input/PlatformTextInput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AdapterInput"
.end annotation


# instance fields
.field private final plugin:Landroidx/compose/ui/text/input/PlatformTextInputPlugin;

.field final synthetic this$0:Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl;Landroidx/compose/ui/text/input/PlatformTextInputPlugin;)V
    .locals 1

    const-string v0, "plugin"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl$AdapterInput;->this$0:Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl;

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl$AdapterInput;->plugin:Landroidx/compose/ui/text/input/PlatformTextInputPlugin;

    return-void
.end method


# virtual methods
.method public releaseInputFocus()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl$AdapterInput;->this$0:Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl;

    .line 336
    invoke-static {v0}, Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl;->access$getFocusedPlugin$p(Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl;)Landroidx/compose/ui/text/input/PlatformTextInputPlugin;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl$AdapterInput;->plugin:Landroidx/compose/ui/text/input/PlatformTextInputPlugin;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl$AdapterInput;->this$0:Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl;

    const/4 v1, 0x0

    .line 337
    invoke-static {v0, v1}, Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl;->access$setFocusedPlugin$p(Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl;Landroidx/compose/ui/text/input/PlatformTextInputPlugin;)V

    :cond_0
    return-void
.end method

.method public requestInputFocus()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl$AdapterInput;->this$0:Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl;

    iget-object v1, p0, Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl$AdapterInput;->plugin:Landroidx/compose/ui/text/input/PlatformTextInputPlugin;

    .line 331
    invoke-static {v0, v1}, Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl;->access$setFocusedPlugin$p(Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl;Landroidx/compose/ui/text/input/PlatformTextInputPlugin;)V

    return-void
.end method
