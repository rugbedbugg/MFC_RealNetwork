.class final Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivityKt$UserGatewaysSettings$2$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "IpfsGatewaySettingsActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


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
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
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
.field final synthetic $gatewayUrl:Ljava/lang/String;

.field final synthetic $prefs:Lorg/fdroid/fdroid/IPreferencesIpfs;

.field final synthetic $userGateways$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/fdroid/fdroid/IPreferencesIpfs;Landroidx/compose/runtime/MutableState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/fdroid/fdroid/IPreferencesIpfs;",
            "Landroidx/compose/runtime/MutableState;",
            ")V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivityKt$UserGatewaysSettings$2$1$1;->$gatewayUrl:Ljava/lang/String;

    iput-object p2, p0, Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivityKt$UserGatewaysSettings$2$1$1;->$prefs:Lorg/fdroid/fdroid/IPreferencesIpfs;

    iput-object p3, p0, Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivityKt$UserGatewaysSettings$2$1$1;->$userGateways$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 215
    invoke-virtual {p0}, Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivityKt$UserGatewaysSettings$2$1$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivityKt$UserGatewaysSettings$2$1$1;->$userGateways$delegate:Landroidx/compose/runtime/MutableState;

    .line 217
    invoke-static {v0}, Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivityKt;->access$UserGatewaysSettings$lambda$9(Landroidx/compose/runtime/MutableState;)Ljava/util/List;

    move-result-object v0

    const-string v1, "access$UserGatewaysSettings$lambda$9(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivityKt$UserGatewaysSettings$2$1$1;->$gatewayUrl:Ljava/lang/String;

    .line 218
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivityKt$UserGatewaysSettings$2$1$1;->$userGateways$delegate:Landroidx/compose/runtime/MutableState;

    .line 220
    invoke-static {v1, v0}, Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivityKt;->access$UserGatewaysSettings$lambda$10(Landroidx/compose/runtime/MutableState;Ljava/util/List;)V

    iget-object v1, p0, Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivityKt$UserGatewaysSettings$2$1$1;->$prefs:Lorg/fdroid/fdroid/IPreferencesIpfs;

    .line 221
    invoke-interface {v1, v0}, Lorg/fdroid/fdroid/IPreferencesIpfs;->setIpfsGwUserList(Ljava/util/List;)V

    return-void
.end method
