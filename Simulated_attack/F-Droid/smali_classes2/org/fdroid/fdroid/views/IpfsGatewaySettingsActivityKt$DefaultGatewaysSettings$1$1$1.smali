.class final Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivityKt$DefaultGatewaysSettings$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "IpfsGatewaySettingsActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivityKt;->DefaultGatewaysSettings(Lorg/fdroid/fdroid/IPreferencesIpfs;ZLandroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "checked",
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
.field final synthetic $disabledDefaultGateways$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState;"
        }
    .end annotation
.end field

.field final synthetic $gatewayUrl:Ljava/lang/String;

.field final synthetic $prefs:Lorg/fdroid/fdroid/IPreferencesIpfs;


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
    iput-object p1, p0, Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivityKt$DefaultGatewaysSettings$1$1$1;->$gatewayUrl:Ljava/lang/String;

    iput-object p2, p0, Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivityKt$DefaultGatewaysSettings$1$1$1;->$prefs:Lorg/fdroid/fdroid/IPreferencesIpfs;

    iput-object p3, p0, Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivityKt$DefaultGatewaysSettings$1$1$1;->$disabledDefaultGateways$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 161
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivityKt$DefaultGatewaysSettings$1$1$1;->invoke(Z)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Z)V
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivityKt$DefaultGatewaysSettings$1$1$1;->$disabledDefaultGateways$delegate:Landroidx/compose/runtime/MutableState;

    .line 164
    invoke-static {v0}, Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivityKt;->access$DefaultGatewaysSettings$lambda$4(Landroidx/compose/runtime/MutableState;)Ljava/util/List;

    move-result-object v0

    const-string v1, "access$DefaultGatewaysSettings$lambda$4(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivityKt$DefaultGatewaysSettings$1$1$1;->$gatewayUrl:Ljava/lang/String;

    .line 166
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivityKt$DefaultGatewaysSettings$1$1$1;->$gatewayUrl:Ljava/lang/String;

    .line 168
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_0
    iget-object p1, p0, Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivityKt$DefaultGatewaysSettings$1$1$1;->$disabledDefaultGateways$delegate:Landroidx/compose/runtime/MutableState;

    .line 170
    invoke-static {p1, v0}, Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivityKt;->access$DefaultGatewaysSettings$lambda$5(Landroidx/compose/runtime/MutableState;Ljava/util/List;)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivityKt$DefaultGatewaysSettings$1$1$1;->$prefs:Lorg/fdroid/fdroid/IPreferencesIpfs;

    .line 171
    invoke-interface {p1, v0}, Lorg/fdroid/fdroid/IPreferencesIpfs;->setIpfsGwDisabledDefaults(Ljava/util/List;)V

    return-void
.end method
