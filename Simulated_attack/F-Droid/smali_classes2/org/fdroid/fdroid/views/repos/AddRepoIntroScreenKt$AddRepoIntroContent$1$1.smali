.class final Lorg/fdroid/fdroid/views/repos/AddRepoIntroScreenKt$AddRepoIntroContent$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AddRepoIntroScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/fdroid/views/repos/AddRepoIntroScreenKt;->AddRepoIntroContent(Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
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
.field final synthetic $startForResult:Landroidx/activity/compose/ManagedActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/compose/ManagedActivityResultLauncher;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/activity/compose/ManagedActivityResultLauncher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/activity/compose/ManagedActivityResultLauncher;",
            ")V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lorg/fdroid/fdroid/views/repos/AddRepoIntroScreenKt$AddRepoIntroContent$1$1;->$startForResult:Landroidx/activity/compose/ManagedActivityResultLauncher;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 147
    invoke-virtual {p0}, Lorg/fdroid/fdroid/views/repos/AddRepoIntroScreenKt$AddRepoIntroContent$1$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/AddRepoIntroScreenKt$AddRepoIntroContent$1$1;->$startForResult:Landroidx/activity/compose/ManagedActivityResultLauncher;

    .line 151
    new-instance v1, Lcom/journeyapps/barcodescanner/ScanOptions;

    invoke-direct {v1}, Lcom/journeyapps/barcodescanner/ScanOptions;-><init>()V

    const-string v2, ""

    .line 152
    invoke-virtual {v1, v2}, Lcom/journeyapps/barcodescanner/ScanOptions;->setPrompt(Ljava/lang/String;)Lcom/journeyapps/barcodescanner/ScanOptions;

    const/4 v2, 0x1

    .line 153
    invoke-virtual {v1, v2}, Lcom/journeyapps/barcodescanner/ScanOptions;->setBeepEnabled(Z)Lcom/journeyapps/barcodescanner/ScanOptions;

    const/4 v2, 0x0

    .line 154
    invoke-virtual {v1, v2}, Lcom/journeyapps/barcodescanner/ScanOptions;->setOrientationLocked(Z)Lcom/journeyapps/barcodescanner/ScanOptions;

    const-string v2, "QR_CODE"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 155
    invoke-virtual {v1, v2}, Lcom/journeyapps/barcodescanner/ScanOptions;->setDesiredBarcodeFormats([Ljava/lang/String;)Lcom/journeyapps/barcodescanner/ScanOptions;

    const/4 v2, 0x2

    .line 156
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "SCAN_TYPE"

    invoke-virtual {v1, v3, v2}, Lcom/journeyapps/barcodescanner/ScanOptions;->addExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/journeyapps/barcodescanner/ScanOptions;

    .line 151
    invoke-virtual {v0, v1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method
