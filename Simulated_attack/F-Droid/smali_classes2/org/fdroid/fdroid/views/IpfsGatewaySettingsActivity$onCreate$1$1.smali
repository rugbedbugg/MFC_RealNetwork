.class final Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivity$onCreate$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "IpfsGatewaySettingsActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivity$onCreate$1;->invoke(Landroidx/compose/runtime/Composer;I)V
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
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\u000b\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "(Landroidx/compose/runtime/Composer;I)V"
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
.field final synthetic this$0:Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivity;


# direct methods
.method constructor <init>(Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivity;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivity$onCreate$1$1;->this$0:Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivity;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 61
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivity$onCreate$1$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 3

    and-int/lit8 v0, p2, 0xb

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 62
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_1

    .line 62
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    const-string v1, "org.fdroid.fdroid.views.IpfsGatewaySettingsActivity.onCreate.<anonymous>.<anonymous> (IpfsGatewaySettingsActivity.kt:61)"

    const v2, -0x63083908

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    iget-object p2, p0, Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivity$onCreate$1$1;->this$0:Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivity;

    invoke-virtual {p2}, Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivity;->getPrefs()Lorg/fdroid/fdroid/Preferences;

    move-result-object p2

    new-instance v0, Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivity$onCreate$1$1$1;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivity$onCreate$1$1;->this$0:Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivity;

    invoke-direct {v0, v1}, Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivity$onCreate$1$1$1;-><init>(Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivity;)V

    const/16 v1, 0x40

    invoke-static {v0, p2, p1, v1}, Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivityKt;->IpfsGatewaySettingsScreen(Lkotlin/jvm/functions/Function0;Lorg/fdroid/fdroid/IPreferencesIpfs;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    :goto_1
    return-void
.end method
