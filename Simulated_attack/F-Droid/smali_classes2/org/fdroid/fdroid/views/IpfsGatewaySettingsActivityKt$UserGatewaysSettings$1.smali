.class final Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivityKt$UserGatewaysSettings$1;
.super Lkotlin/jvm/internal/Lambda;
.source "IpfsGatewaySettingsActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivityKt;->UserGatewaysSettings(Lorg/fdroid/fdroid/IPreferencesIpfs;ZLandroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroidx/lifecycle/LifecycleOwner;",
        "event",
        "Landroidx/lifecycle/Lifecycle$Event;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $prefs:Lorg/fdroid/fdroid/IPreferencesIpfs;

.field final synthetic $userGateways$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/fdroid/fdroid/IPreferencesIpfs;Landroidx/compose/runtime/MutableState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fdroid/fdroid/IPreferencesIpfs;",
            "Landroidx/compose/runtime/MutableState;",
            ")V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivityKt$UserGatewaysSettings$1;->$prefs:Lorg/fdroid/fdroid/IPreferencesIpfs;

    iput-object p2, p0, Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivityKt$UserGatewaysSettings$1;->$userGateways$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 190
    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    check-cast p2, Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p0, p1, p2}, Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivityKt$UserGatewaysSettings$1;->invoke(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "event"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivityKt$UserGatewaysSettings$1;->$userGateways$delegate:Landroidx/compose/runtime/MutableState;

    iget-object p2, p0, Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivityKt$UserGatewaysSettings$1;->$prefs:Lorg/fdroid/fdroid/IPreferencesIpfs;

    .line 192
    invoke-interface {p2}, Lorg/fdroid/fdroid/IPreferencesIpfs;->getIpfsGwUserList()Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivityKt;->access$UserGatewaysSettings$lambda$10(Landroidx/compose/runtime/MutableState;Ljava/util/List;)V

    :cond_0
    return-void
.end method
