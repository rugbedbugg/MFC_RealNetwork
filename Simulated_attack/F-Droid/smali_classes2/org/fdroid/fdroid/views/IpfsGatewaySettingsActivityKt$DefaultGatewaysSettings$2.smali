.class final Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivityKt$DefaultGatewaysSettings$2;
.super Lkotlin/jvm/internal/Lambda;
.source "IpfsGatewaySettingsActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


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
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $$changed:I

.field final synthetic $ipfsEnabled:Z

.field final synthetic $prefs:Lorg/fdroid/fdroid/IPreferencesIpfs;


# direct methods
.method constructor <init>(Lorg/fdroid/fdroid/IPreferencesIpfs;ZI)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivityKt$DefaultGatewaysSettings$2;->$prefs:Lorg/fdroid/fdroid/IPreferencesIpfs;

    iput-boolean p2, p0, Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivityKt$DefaultGatewaysSettings$2;->$ipfsEnabled:Z

    iput p3, p0, Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivityKt$DefaultGatewaysSettings$2;->$$changed:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivityKt$DefaultGatewaysSettings$2;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 2

    .line 0
    iget-object p2, p0, Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivityKt$DefaultGatewaysSettings$2;->$prefs:Lorg/fdroid/fdroid/IPreferencesIpfs;

    iget-boolean v0, p0, Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivityKt$DefaultGatewaysSettings$2;->$ipfsEnabled:Z

    iget v1, p0, Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivityKt$DefaultGatewaysSettings$2;->$$changed:I

    or-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v1

    invoke-static {p2, v0, p1, v1}, Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivityKt;->DefaultGatewaysSettings(Lorg/fdroid/fdroid/IPreferencesIpfs;ZLandroidx/compose/runtime/Composer;I)V

    return-void
.end method
