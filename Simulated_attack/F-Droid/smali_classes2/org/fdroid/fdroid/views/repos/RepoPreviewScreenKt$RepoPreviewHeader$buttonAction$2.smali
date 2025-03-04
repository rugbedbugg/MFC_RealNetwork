.class final Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewHeader$buttonAction$2;
.super Lkotlin/jvm/internal/Lambda;
.source "RepoPreviewScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt;->RepoPreviewHeader(Lorg/fdroid/repo/Fetching;Lkotlin/jvm/functions/Function0;Landroidx/core/os/LocaleListCompat;Landroidx/compose/runtime/Composer;I)V
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
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $res:Lorg/fdroid/repo/FetchResult;


# direct methods
.method constructor <init>(Lorg/fdroid/repo/FetchResult;Landroid/content/Context;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewHeader$buttonAction$2;->$res:Lorg/fdroid/repo/FetchResult;

    iput-object p2, p0, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewHeader$buttonAction$2;->$context:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 121
    invoke-virtual {p0}, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewHeader$buttonAction$2;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewHeader$buttonAction$2;->$res:Lorg/fdroid/repo/FetchResult;

    .line 130
    check-cast v0, Lorg/fdroid/repo/FetchResult$IsExistingMirror;

    invoke-virtual {v0}, Lorg/fdroid/repo/FetchResult$IsExistingMirror;->getExistingRepoId()J

    move-result-wide v0

    iget-object v2, p0, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewHeader$buttonAction$2;->$context:Landroid/content/Context;

    .line 131
    invoke-static {v2, v0, v1}, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->launch(Landroid/content/Context;J)V

    return-void
.end method
