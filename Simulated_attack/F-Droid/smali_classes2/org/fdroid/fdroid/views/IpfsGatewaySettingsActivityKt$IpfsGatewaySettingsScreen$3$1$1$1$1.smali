.class final Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivityKt$IpfsGatewaySettingsScreen$3$1$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "IpfsGatewaySettingsActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivityKt$IpfsGatewaySettingsScreen$3;->invoke(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)V
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
.field final synthetic $ipfsEnabled$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState;"
        }
    .end annotation
.end field

.field final synthetic $prefs:Lorg/fdroid/fdroid/IPreferencesIpfs;


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
    iput-object p1, p0, Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivityKt$IpfsGatewaySettingsScreen$3$1$1$1$1;->$prefs:Lorg/fdroid/fdroid/IPreferencesIpfs;

    iput-object p2, p0, Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivityKt$IpfsGatewaySettingsScreen$3$1$1$1$1;->$ipfsEnabled$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 121
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivityKt$IpfsGatewaySettingsScreen$3$1$1$1$1;->invoke(Z)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Z)V
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivityKt$IpfsGatewaySettingsScreen$3$1$1$1$1;->$ipfsEnabled$delegate:Landroidx/compose/runtime/MutableState;

    .line 122
    invoke-static {v0, p1}, Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivityKt;->access$IpfsGatewaySettingsScreen$lambda$2(Landroidx/compose/runtime/MutableState;Z)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivityKt$IpfsGatewaySettingsScreen$3$1$1$1$1;->$prefs:Lorg/fdroid/fdroid/IPreferencesIpfs;

    .line 123
    invoke-interface {v0, p1}, Lorg/fdroid/fdroid/IPreferencesIpfs;->setIpfsEnabled(Z)V

    return-void
.end method
