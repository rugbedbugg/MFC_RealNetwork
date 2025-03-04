.class final Lorg/fdroid/fdroid/views/IpfsGatewayAddActivity$onCreate$1$1$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "IpfsGatewayAddActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/fdroid/views/IpfsGatewayAddActivity$onCreate$1$1;->invoke(Landroidx/compose/runtime/Composer;I)V
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "url",
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
.field final synthetic this$0:Lorg/fdroid/fdroid/views/IpfsGatewayAddActivity;


# direct methods
.method constructor <init>(Lorg/fdroid/fdroid/views/IpfsGatewayAddActivity;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/fdroid/fdroid/views/IpfsGatewayAddActivity$onCreate$1$1$2$1;->this$0:Lorg/fdroid/fdroid/views/IpfsGatewayAddActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 55
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/views/IpfsGatewayAddActivity$onCreate$1$1$2$1;->invoke(Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)V
    .locals 2

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    sget-object v0, Lorg/fdroid/fdroid/Preferences;->DEFAULT_IPFS_GATEWAYS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/fdroid/Preferences;->getIpfsGwUserList()Ljava/util/List;

    move-result-object v0

    const-string v1, "getIpfsGwUserList(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 60
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 61
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/fdroid/fdroid/Preferences;->setIpfsGwUserList(Ljava/util/List;)V

    :cond_0
    iget-object p1, p0, Lorg/fdroid/fdroid/views/IpfsGatewayAddActivity$onCreate$1$1$2$1;->this$0:Lorg/fdroid/fdroid/views/IpfsGatewayAddActivity;

    .line 65
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
