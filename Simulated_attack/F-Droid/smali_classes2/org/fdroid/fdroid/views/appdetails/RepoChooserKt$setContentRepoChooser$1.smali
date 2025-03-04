.class final Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$setContentRepoChooser$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RepoChooser.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt;->setContentRepoChooser(Landroidx/compose/ui/platform/ComposeView;Ljava/util/List;JJLandroidx/core/util/Consumer;Landroidx/core/util/Consumer;)V
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
.field final synthetic $currentRepoId:J

.field final synthetic $onPreferredRepoChanged:Landroidx/core/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Consumer;"
        }
    .end annotation
.end field

.field final synthetic $onRepoChanged:Landroidx/core/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Consumer;"
        }
    .end annotation
.end field

.field final synthetic $preferredRepoId:J

.field final synthetic $repos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fdroid/database/Repository;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;JJLandroidx/core/util/Consumer;Landroidx/core/util/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/fdroid/database/Repository;",
            ">;JJ",
            "Landroidx/core/util/Consumer;",
            "Landroidx/core/util/Consumer;",
            ")V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$setContentRepoChooser$1;->$repos:Ljava/util/List;

    iput-wide p2, p0, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$setContentRepoChooser$1;->$currentRepoId:J

    iput-wide p4, p0, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$setContentRepoChooser$1;->$preferredRepoId:J

    iput-object p6, p0, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$setContentRepoChooser$1;->$onRepoChanged:Landroidx/core/util/Consumer;

    iput-object p7, p0, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$setContentRepoChooser$1;->$onPreferredRepoChanged:Landroidx/core/util/Consumer;

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

    invoke-virtual {p0, p1, p2}, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$setContentRepoChooser$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 9

    and-int/lit8 v0, p2, 0xb

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 62
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 71
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

    const-string v1, "org.fdroid.fdroid.views.appdetails.setContentRepoChooser.<anonymous> (RepoChooser.kt:61)"

    const v2, -0x20a050f

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    sget-object p2, Lorg/fdroid/fdroid/compose/ComposeUtils;->INSTANCE:Lorg/fdroid/fdroid/compose/ComposeUtils;

    new-instance v8, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$setContentRepoChooser$1$1;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$setContentRepoChooser$1;->$repos:Ljava/util/List;

    iget-wide v2, p0, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$setContentRepoChooser$1;->$currentRepoId:J

    iget-wide v4, p0, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$setContentRepoChooser$1;->$preferredRepoId:J

    iget-object v6, p0, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$setContentRepoChooser$1;->$onRepoChanged:Landroidx/core/util/Consumer;

    iget-object v7, p0, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$setContentRepoChooser$1;->$onPreferredRepoChanged:Landroidx/core/util/Consumer;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$setContentRepoChooser$1$1;-><init>(Ljava/util/List;JJLandroidx/core/util/Consumer;Landroidx/core/util/Consumer;)V

    const v0, -0x6ccd97c7

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v8}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    const/16 v1, 0x36

    invoke-virtual {p2, v0, p1, v1}, Lorg/fdroid/fdroid/compose/ComposeUtils;->FDroidContent(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    :goto_1
    return-void
.end method
