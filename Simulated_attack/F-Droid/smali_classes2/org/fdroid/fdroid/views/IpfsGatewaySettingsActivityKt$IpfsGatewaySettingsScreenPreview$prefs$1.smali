.class public final Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivityKt$IpfsGatewaySettingsScreenPreview$prefs$1;
.super Ljava/lang/Object;
.source "IpfsGatewaySettingsActivity.kt"

# interfaces
.implements Lorg/fdroid/fdroid/IPreferencesIpfs;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivityKt;->IpfsGatewaySettingsScreenPreview(Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0001\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000e\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u0016J\u000e\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u0016J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0007H\u0016J\u0018\u0010\u000b\u001a\u00020\t2\u000e\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003H\u0016J\u0018\u0010\r\u001a\u00020\t2\u000e\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003H\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "org/fdroid/fdroid/views/IpfsGatewaySettingsActivityKt$IpfsGatewaySettingsScreenPreview$prefs$1",
        "Lorg/fdroid/fdroid/IPreferencesIpfs;",
        "getIpfsGwDisabledDefaults",
        "",
        "",
        "getIpfsGwUserList",
        "isIpfsEnabled",
        "",
        "setIpfsEnabled",
        "",
        "enabled",
        "setIpfsGwDisabledDefaults",
        "selectedSet",
        "setIpfsGwUserList",
        "app_fullRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIpfsGwDisabledDefaults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "https://4everland.io/ipfs/"

    .line 245
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getIpfsGwUserList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "https://my.imaginary.gateway/ifps/"

    .line 242
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isIpfsEnabled()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public setIpfsEnabled(Z)Ljava/lang/Void;
    .locals 2

    .line 240
    new-instance p1, Lkotlin/NotImplementedError;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1, v0}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1
.end method

.method public bridge synthetic setIpfsEnabled(Z)V
    .locals 0

    .line 238
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivityKt$IpfsGatewaySettingsScreenPreview$prefs$1;->setIpfsEnabled(Z)Ljava/lang/Void;

    return-void
.end method

.method public setIpfsGwDisabledDefaults(Ljava/util/List;)Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 247
    new-instance p1, Lkotlin/NotImplementedError;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1, v0}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1
.end method

.method public bridge synthetic setIpfsGwDisabledDefaults(Ljava/util/List;)V
    .locals 0

    .line 238
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivityKt$IpfsGatewaySettingsScreenPreview$prefs$1;->setIpfsGwDisabledDefaults(Ljava/util/List;)Ljava/lang/Void;

    return-void
.end method

.method public setIpfsGwUserList(Ljava/util/List;)Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 244
    new-instance p1, Lkotlin/NotImplementedError;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1, v0}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1
.end method

.method public bridge synthetic setIpfsGwUserList(Ljava/util/List;)V
    .locals 0

    .line 238
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivityKt$IpfsGatewaySettingsScreenPreview$prefs$1;->setIpfsGwUserList(Ljava/util/List;)Ljava/lang/Void;

    return-void
.end method
