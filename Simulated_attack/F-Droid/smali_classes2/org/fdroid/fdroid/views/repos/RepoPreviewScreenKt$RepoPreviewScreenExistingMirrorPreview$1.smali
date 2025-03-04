.class final Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreenExistingMirrorPreview$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RepoPreviewScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt;->RepoPreviewScreenExistingMirrorPreview(Landroidx/compose/runtime/Composer;I)V
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
.field final synthetic $repo:Lorg/fdroid/database/Repository;


# direct methods
.method constructor <init>(Lorg/fdroid/database/Repository;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreenExistingMirrorPreview$1;->$repo:Lorg/fdroid/database/Repository;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 334
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreenExistingMirrorPreview$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 9

    and-int/lit8 v0, p2, 0xb

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 335
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 338
    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_1

    .line 335
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    const-string v1, "org.fdroid.fdroid.views.repos.RepoPreviewScreenExistingMirrorPreview.<anonymous> (RepoPreviewScreen.kt:334)"

    const v2, 0x52d13235

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    const/4 p2, 0x0

    int-to-float p2, p2

    .line 154
    invoke-static {p2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p2

    .line 336
    invoke-static {p2}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-0680j_4(F)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object p2

    .line 337
    new-instance v8, Lorg/fdroid/repo/Fetching;

    const-string v1, "https://mirror.example.org"

    iget-object v2, p0, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreenExistingMirrorPreview$1;->$repo:Lorg/fdroid/database/Repository;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lorg/fdroid/repo/FetchResult$IsExistingMirror;

    const-wide/16 v5, 0x0

    invoke-direct {v4, v5, v6}, Lorg/fdroid/repo/FetchResult$IsExistingMirror;-><init>(J)V

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/fdroid/repo/Fetching;-><init>(Ljava/lang/String;Lorg/fdroid/database/Repository;Ljava/util/List;Lorg/fdroid/repo/FetchResult;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 335
    sget-object v0, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreenExistingMirrorPreview$1$1;->INSTANCE:Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreenExistingMirrorPreview$1$1;

    const/16 v1, 0x1c6

    invoke-static {p2, v8, v0, p1, v1}, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt;->RepoPreviewScreen(Landroidx/compose/foundation/layout/PaddingValues;Lorg/fdroid/repo/Fetching;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    :goto_1
    return-void
.end method
