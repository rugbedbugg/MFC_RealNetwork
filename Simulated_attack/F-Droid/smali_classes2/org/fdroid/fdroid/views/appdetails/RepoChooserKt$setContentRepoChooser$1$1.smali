.class final Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$setContentRepoChooser$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RepoChooser.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$setContentRepoChooser$1;->invoke(Landroidx/compose/runtime/Composer;I)V
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
    iput-object p1, p0, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$setContentRepoChooser$1$1;->$repos:Ljava/util/List;

    iput-wide p2, p0, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$setContentRepoChooser$1$1;->$currentRepoId:J

    iput-wide p4, p0, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$setContentRepoChooser$1$1;->$preferredRepoId:J

    iput-object p6, p0, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$setContentRepoChooser$1$1;->$onRepoChanged:Landroidx/core/util/Consumer;

    iput-object p7, p0, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$setContentRepoChooser$1$1;->$onPreferredRepoChanged:Landroidx/core/util/Consumer;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 62
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$setContentRepoChooser$1$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p2

    and-int/lit8 v2, v1, 0xb

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 63
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_1

    .line 63
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, -0x1

    const-string v3, "org.fdroid.fdroid.views.appdetails.setContentRepoChooser.<anonymous>.<anonymous> (RepoChooser.kt:62)"

    const v4, -0x6ccd97c7

    invoke-static {v4, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    iget-object v5, v0, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$setContentRepoChooser$1$1;->$repos:Ljava/util/List;

    iget-wide v6, v0, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$setContentRepoChooser$1$1;->$currentRepoId:J

    iget-wide v8, v0, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$setContentRepoChooser$1$1;->$preferredRepoId:J

    .line 67
    new-instance v10, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$setContentRepoChooser$1$1$1;

    iget-object v1, v0, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$setContentRepoChooser$1$1;->$onRepoChanged:Landroidx/core/util/Consumer;

    invoke-direct {v10, v1}, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$setContentRepoChooser$1$1$1;-><init>(Ljava/lang/Object;)V

    .line 68
    new-instance v11, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$setContentRepoChooser$1$1$2;

    iget-object v1, v0, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$setContentRepoChooser$1$1;->$onPreferredRepoChanged:Landroidx/core/util/Consumer;

    invoke-direct {v11, v1}, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$setContentRepoChooser$1$1$2;-><init>(Ljava/lang/Object;)V

    .line 69
    sget-object v12, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    sget-object v1, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    sget v2, Landroidx/compose/material/MaterialTheme;->$stable:I

    move-object/from16 v3, p1

    invoke-virtual {v1, v3, v2}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/material/Colors;->getSurface-0d7_KjU()J

    move-result-wide v13

    const/4 v15, 0x0

    const/16 v16, 0x2

    const/16 v17, 0x0

    invoke-static/range {v12 .. v17}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU$default(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    const/16 v14, 0x8

    const/4 v15, 0x0

    move-object/from16 v13, p1

    .line 63
    invoke-static/range {v5 .. v15}, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt;->RepoChooser(Ljava/util/List;JJLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    :goto_1
    return-void
.end method
