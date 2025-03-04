.class final Lorg/fdroid/fdroid/views/IpfsGatewayAddActivityKt$IpfsGatewayAddScreen$2$1$2$1;
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
.field final synthetic $clipboardManager:Landroidx/compose/ui/platform/ClipboardManager;

.field final synthetic $textState:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/compose/ui/platform/ClipboardManager;Landroidx/compose/runtime/MutableState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/platform/ClipboardManager;",
            "Landroidx/compose/runtime/MutableState;",
            ")V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lorg/fdroid/fdroid/views/IpfsGatewayAddActivityKt$IpfsGatewayAddScreen$2$1$2$1;->$clipboardManager:Landroidx/compose/ui/platform/ClipboardManager;

    iput-object p2, p0, Lorg/fdroid/fdroid/views/IpfsGatewayAddActivityKt$IpfsGatewayAddScreen$2$1$2$1;->$textState:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 138
    invoke-virtual {p0}, Lorg/fdroid/fdroid/views/IpfsGatewayAddActivityKt$IpfsGatewayAddScreen$2$1$2$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 9

    iget-object v0, p0, Lorg/fdroid/fdroid/views/IpfsGatewayAddActivityKt$IpfsGatewayAddScreen$2$1$2$1;->$clipboardManager:Landroidx/compose/ui/platform/ClipboardManager;

    .line 142
    invoke-interface {v0}, Landroidx/compose/ui/platform/ClipboardManager;->hasText()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/fdroid/fdroid/views/IpfsGatewayAddActivityKt$IpfsGatewayAddScreen$2$1$2$1;->$textState:Landroidx/compose/runtime/MutableState;

    .line 143
    new-instance v8, Landroidx/compose/ui/text/input/TextFieldValue;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/IpfsGatewayAddActivityKt$IpfsGatewayAddScreen$2$1$2$1;->$clipboardManager:Landroidx/compose/ui/platform/ClipboardManager;

    invoke-interface {v1}, Landroidx/compose/ui/platform/ClipboardManager;->getText()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/compose/ui/text/AnnotatedString;->getText()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v2, v1

    goto :goto_2

    :cond_1
    :goto_1
    const-string v1, ""

    goto :goto_0

    :goto_2
    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Landroidx/compose/ui/text/input/TextFieldValue;-><init>(Ljava/lang/String;JLandroidx/compose/ui/text/TextRange;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v8}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
