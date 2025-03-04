.class public final Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl$AdapterHandle;
.super Ljava/lang/Object;
.source "PlatformTextInputAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdapterHandle"
.end annotation


# instance fields
.field private final adapter:Landroidx/compose/ui/text/input/PlatformTextInputAdapter;

.field private final onDispose:Lkotlin/jvm/functions/Function0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/text/input/PlatformTextInputAdapter;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onDispose"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl$AdapterHandle;->adapter:Landroidx/compose/ui/text/input/PlatformTextInputAdapter;

    iput-object p2, p0, Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl$AdapterHandle;->onDispose:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final getAdapter()Landroidx/compose/ui/text/input/PlatformTextInputAdapter;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl$AdapterHandle;->adapter:Landroidx/compose/ui/text/input/PlatformTextInputAdapter;

    return-object v0
.end method
