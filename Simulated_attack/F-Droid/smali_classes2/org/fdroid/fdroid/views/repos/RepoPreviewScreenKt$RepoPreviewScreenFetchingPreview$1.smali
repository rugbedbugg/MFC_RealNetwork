.class final Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreenFetchingPreview$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RepoPreviewScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt;->RepoPreviewScreenFetchingPreview(Landroidx/compose/runtime/Composer;I)V
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
.field final synthetic $address:Ljava/lang/String;

.field final synthetic $app1:Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreenFetchingPreview$app1$1;

.field final synthetic $app2:Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreenFetchingPreview$app2$1;

.field final synthetic $app3:Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreenFetchingPreview$app3$1;

.field final synthetic $repo:Lorg/fdroid/database/Repository;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/fdroid/database/Repository;Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreenFetchingPreview$app1$1;Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreenFetchingPreview$app2$1;Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreenFetchingPreview$app3$1;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreenFetchingPreview$1;->$address:Ljava/lang/String;

    iput-object p2, p0, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreenFetchingPreview$1;->$repo:Lorg/fdroid/database/Repository;

    iput-object p3, p0, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreenFetchingPreview$1;->$app1:Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreenFetchingPreview$app1$1;

    iput-object p4, p0, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreenFetchingPreview$1;->$app2:Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreenFetchingPreview$app2$1;

    iput-object p5, p0, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreenFetchingPreview$1;->$app3:Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreenFetchingPreview$app3$1;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 285
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreenFetchingPreview$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 11

    and-int/lit8 v0, p2, 0xb

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 286
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 289
    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_1

    .line 286
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    const-string v2, "org.fdroid.fdroid.views.repos.RepoPreviewScreenFetchingPreview.<anonymous> (RepoPreviewScreen.kt:285)"

    const v3, -0x381eeec9

    invoke-static {v3, p2, v0, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    const/4 p2, 0x0

    int-to-float v0, p2

    .line 154
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 287
    invoke-static {v0}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-0680j_4(F)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v0

    .line 288
    new-instance v10, Lorg/fdroid/repo/Fetching;

    iget-object v3, p0, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreenFetchingPreview$1;->$address:Ljava/lang/String;

    iget-object v4, p0, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreenFetchingPreview$1;->$repo:Lorg/fdroid/database/Repository;

    const/4 v2, 0x3

    new-array v2, v2, [Lorg/fdroid/database/MinimalApp;

    iget-object v5, p0, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreenFetchingPreview$1;->$app1:Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreenFetchingPreview$app1$1;

    aput-object v5, v2, p2

    const/4 p2, 0x1

    iget-object v5, p0, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreenFetchingPreview$1;->$app2:Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreenFetchingPreview$app2$1;

    aput-object v5, v2, p2

    iget-object p2, p0, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreenFetchingPreview$1;->$app3:Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreenFetchingPreview$app3$1;

    aput-object p2, v2, v1

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    sget-object v6, Lorg/fdroid/repo/FetchResult$IsNewRepository;->INSTANCE:Lorg/fdroid/repo/FetchResult$IsNewRepository;

    const/4 v7, 0x0

    const/16 v8, 0x10

    const/4 v9, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/fdroid/repo/Fetching;-><init>(Ljava/lang/String;Lorg/fdroid/database/Repository;Ljava/util/List;Lorg/fdroid/repo/FetchResult;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 286
    sget-object p2, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreenFetchingPreview$1$1;->INSTANCE:Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreenFetchingPreview$1$1;

    const/16 v1, 0x1c6

    invoke-static {v0, v10, p2, p1, v1}, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt;->RepoPreviewScreen(Landroidx/compose/foundation/layout/PaddingValues;Lorg/fdroid/repo/Fetching;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    :goto_1
    return-void
.end method
