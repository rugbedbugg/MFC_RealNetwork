.class final Lorg/fdroid/fdroid/views/IpfsGatewayAddActivityKt$IpfsGatewayAddScreen$2$1$2$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "IpfsGatewayAddActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/fdroid/views/IpfsGatewayAddActivityKt$IpfsGatewayAddScreen$2;->invoke(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)V
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
.field final synthetic $errorMsg$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState;"
        }
    .end annotation
.end field

.field final synthetic $onAddUserGateway:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field final synthetic $textState:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState;",
            "Lkotlin/jvm/functions/Function1;",
            "Landroidx/compose/runtime/MutableState;",
            ")V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lorg/fdroid/fdroid/views/IpfsGatewayAddActivityKt$IpfsGatewayAddScreen$2$1$2$2$1;->$textState:Landroidx/compose/runtime/MutableState;

    iput-object p2, p0, Lorg/fdroid/fdroid/views/IpfsGatewayAddActivityKt$IpfsGatewayAddScreen$2$1$2$2$1;->$onAddUserGateway:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lorg/fdroid/fdroid/views/IpfsGatewayAddActivityKt$IpfsGatewayAddScreen$2$1$2$2$1;->$errorMsg$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 150
    invoke-virtual {p0}, Lorg/fdroid/fdroid/views/IpfsGatewayAddActivityKt$IpfsGatewayAddScreen$2$1$2$2$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 5

    iget-object v0, p0, Lorg/fdroid/fdroid/views/IpfsGatewayAddActivityKt$IpfsGatewayAddScreen$2$1$2$2$1;->$errorMsg$delegate:Landroidx/compose/runtime/MutableState;

    const-string v1, ""

    .line 151
    invoke-static {v0, v1}, Lorg/fdroid/fdroid/views/IpfsGatewayAddActivityKt;->access$IpfsGatewayAddScreen$lambda$4(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/IpfsGatewayAddActivityKt$IpfsGatewayAddScreen$2$1$2$2$1;->$textState:Landroidx/compose/runtime/MutableState;

    .line 152
    invoke-interface {v0}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/text/input/TextFieldValue;

    invoke-virtual {v0}, Landroidx/compose/ui/text/input/TextFieldValue;->getText()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "/"

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v0, v2, v3, v4, v1}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/fdroid/fdroid/views/IpfsGatewayAddActivityKt$IpfsGatewayAddScreen$2$1$2$2$1;->$textState:Landroidx/compose/runtime/MutableState;

    .line 153
    invoke-interface {v0}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/text/input/TextFieldValue;

    invoke-virtual {v0}, Landroidx/compose/ui/text/input/TextFieldValue;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/IpfsGatewayAddActivityKt$IpfsGatewayAddScreen$2$1$2$2$1;->$textState:Landroidx/compose/runtime/MutableState;

    .line 155
    invoke-interface {v0}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/text/input/TextFieldValue;

    invoke-virtual {v0}, Landroidx/compose/ui/text/input/TextFieldValue;->getText()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    :goto_0
    :try_start_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/String;

    const-string v4, "http"

    aput-object v4, v2, v3

    const-string v3, "https"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 160
    invoke-static {v2}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lorg/fdroid/fdroid/views/IpfsGatewayAddActivityKt$IpfsGatewayAddScreen$2$1$2$2$1;->$errorMsg$delegate:Landroidx/compose/runtime/MutableState;

    const-string v1, "IPFS gateway URL should start with `https://`"

    .line 161
    invoke-static {v0, v1}, Lorg/fdroid/fdroid/views/IpfsGatewayAddActivityKt;->access$IpfsGatewayAddScreen$lambda$4(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/fdroid/fdroid/views/IpfsGatewayAddActivityKt$IpfsGatewayAddScreen$2$1$2$2$1;->$onAddUserGateway:Lkotlin/jvm/functions/Function1;

    .line 171
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :goto_1
    iget-object v1, p0, Lorg/fdroid/fdroid/views/IpfsGatewayAddActivityKt$IpfsGatewayAddScreen$2$1$2$2$1;->$errorMsg$delegate:Landroidx/compose/runtime/MutableState;

    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "could not parse uri ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/fdroid/fdroid/views/IpfsGatewayAddActivityKt;->access$IpfsGatewayAddScreen$lambda$4(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V

    return-void
.end method
