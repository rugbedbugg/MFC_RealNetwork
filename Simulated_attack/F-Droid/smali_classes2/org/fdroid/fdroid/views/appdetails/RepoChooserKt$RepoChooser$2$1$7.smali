.class final Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooser$2$1$7;
.super Lkotlin/jvm/internal/Lambda;
.source "RepoChooser.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt;->RepoChooser(Ljava/util/List;JJLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u000b\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/foundation/layout/ColumnScope;",
        "invoke",
        "(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V"
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
.field final synthetic $expanded$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState;"
        }
    .end annotation
.end field

.field final synthetic $onRepoChanged:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
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
.method constructor <init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/fdroid/database/Repository;",
            ">;",
            "Lkotlin/jvm/functions/Function1;",
            "Landroidx/compose/runtime/MutableState;",
            "J)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooser$2$1$7;->$repos:Ljava/util/List;

    iput-object p2, p0, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooser$2$1$7;->$onRepoChanged:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooser$2$1$7;->$expanded$delegate:Landroidx/compose/runtime/MutableState;

    iput-wide p4, p0, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooser$2$1$7;->$preferredRepoId:J

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 146
    check-cast p1, Landroidx/compose/foundation/layout/ColumnScope;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooser$2$1$7;->invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p3

    const-string v2, "$this$DropdownMenu"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v2, v1, 0x51

    const/16 v3, 0x10

    if-ne v2, v3, :cond_1

    .line 147
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 154
    :cond_0
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_2

    .line 147
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, -0x1

    const-string v3, "org.fdroid.fdroid.views.appdetails.RepoChooser.<anonymous>.<anonymous>.<anonymous> (RepoChooser.kt:146)"

    const v4, -0x6cc01c35

    invoke-static {v4, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    iget-object v1, v0, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooser$2$1$7;->$repos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object v2, v0, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooser$2$1$7;->$onRepoChanged:Lkotlin/jvm/functions/Function1;

    iget-object v3, v0, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooser$2$1$7;->$expanded$delegate:Landroidx/compose/runtime/MutableState;

    iget-wide v4, v0, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooser$2$1$7;->$preferredRepoId:J

    .line 32
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/fdroid/database/Repository;

    .line 148
    new-instance v7, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooser$2$1$7$1$1;

    invoke-direct {v7, v2, v6, v3}, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooser$2$1$7$1$1;-><init>(Lkotlin/jvm/functions/Function1;Lorg/fdroid/database/Repository;Landroidx/compose/runtime/MutableState;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 151
    new-instance v12, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooser$2$1$7$1$2;

    invoke-direct {v12, v6, v4, v5}, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooser$2$1$7$1$2;-><init>(Lorg/fdroid/database/Repository;J)V

    const v6, -0x7fa8809

    const/4 v13, 0x1

    move-object/from16 v15, p2

    invoke-static {v15, v6, v13, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v12

    const/high16 v14, 0x30000

    const/16 v6, 0x1e

    move-object/from16 v13, p2

    move v15, v6

    .line 148
    invoke-static/range {v7 .. v15}, Landroidx/compose/material/AndroidMenu_androidKt;->DropdownMenuItem(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    goto :goto_1

    .line 33
    :cond_3
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4
    :goto_2
    return-void
.end method
