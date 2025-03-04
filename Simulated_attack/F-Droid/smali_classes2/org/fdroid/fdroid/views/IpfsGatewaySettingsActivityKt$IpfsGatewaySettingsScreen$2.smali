.class final Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivityKt$IpfsGatewaySettingsScreen$2;
.super Lkotlin/jvm/internal/Lambda;
.source "IpfsGatewaySettingsActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivityKt;->IpfsGatewaySettingsScreen(Lkotlin/jvm/functions/Function0;Lorg/fdroid/fdroid/IPreferencesIpfs;Landroidx/compose/runtime/Composer;I)V
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
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $ipfsEnabled$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/compose/runtime/MutableState;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivityKt$IpfsGatewaySettingsScreen$2;->$ipfsEnabled$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p2, p0, Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivityKt$IpfsGatewaySettingsScreen$2;->$context:Landroid/content/Context;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 95
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivityKt$IpfsGatewaySettingsScreen$2;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 13

    and-int/lit8 v0, p2, 0xb

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 97
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_1

    .line 97
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    const-string v1, "org.fdroid.fdroid.views.IpfsGatewaySettingsScreen.<anonymous> (IpfsGatewaySettingsActivity.kt:96)"

    const v2, -0x2808a78e

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    iget-object p2, p0, Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivityKt$IpfsGatewaySettingsScreen$2;->$ipfsEnabled$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {p2}, Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivityKt;->access$IpfsGatewaySettingsScreen$lambda$1(Landroidx/compose/runtime/MutableState;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 98
    new-instance v0, Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivityKt$IpfsGatewaySettingsScreen$2$1;

    iget-object p2, p0, Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivityKt$IpfsGatewaySettingsScreen$2;->$context:Landroid/content/Context;

    invoke-direct {v0, p2}, Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivityKt$IpfsGatewaySettingsScreen$2$1;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    sget-object p2, Lorg/fdroid/fdroid/views/ComposableSingletons$IpfsGatewaySettingsActivityKt;->INSTANCE:Lorg/fdroid/fdroid/views/ComposableSingletons$IpfsGatewaySettingsActivityKt;

    invoke-virtual {p2}, Lorg/fdroid/fdroid/views/ComposableSingletons$IpfsGatewaySettingsActivityKt;->getLambda-3$app_fullRelease()Lkotlin/jvm/functions/Function2;

    move-result-object v9

    const/high16 v11, 0xc00000

    const/16 v12, 0x7e

    move-object v10, p1

    invoke-static/range {v0 .. v12}, Landroidx/compose/material/FloatingActionButtonKt;->FloatingActionButton-bogVsAg(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material/FloatingActionButtonElevation;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    :cond_3
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4
    :goto_1
    return-void
.end method
