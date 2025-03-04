.class final Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooserPreview$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RepoChooser.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt;->RepoChooserPreview(Landroidx/compose/runtime/Composer;I)V
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
.field final synthetic $repo1:Lorg/fdroid/database/Repository;

.field final synthetic $repo2:Lorg/fdroid/database/Repository;

.field final synthetic $repo3:Lorg/fdroid/database/Repository;


# direct methods
.method constructor <init>(Lorg/fdroid/database/Repository;Lorg/fdroid/database/Repository;Lorg/fdroid/database/Repository;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooserPreview$1;->$repo1:Lorg/fdroid/database/Repository;

    iput-object p2, p0, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooserPreview$1;->$repo2:Lorg/fdroid/database/Repository;

    iput-object p3, p0, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooserPreview$1;->$repo3:Lorg/fdroid/database/Repository;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 208
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooserPreview$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 13

    and-int/lit8 v0, p2, 0xb

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 209
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    const-string v2, "org.fdroid.fdroid.views.appdetails.RepoChooserPreview.<anonymous> (RepoChooser.kt:208)"

    const v3, 0xfc911b1

    invoke-static {v3, p2, v0, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    const/4 p2, 0x3

    new-array p2, p2, [Lorg/fdroid/database/Repository;

    const/4 v0, 0x0

    iget-object v2, p0, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooserPreview$1;->$repo1:Lorg/fdroid/database/Repository;

    aput-object v2, p2, v0

    const/4 v0, 0x1

    iget-object v2, p0, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooserPreview$1;->$repo2:Lorg/fdroid/database/Repository;

    aput-object v2, p2, v0

    iget-object v0, p0, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooserPreview$1;->$repo3:Lorg/fdroid/database/Repository;

    aput-object v0, p2, v1

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-wide/16 v3, 0x1

    const-wide/16 v5, 0x1

    sget-object v7, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooserPreview$1$1;->INSTANCE:Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooserPreview$1$1;

    sget-object v8, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooserPreview$1$2;->INSTANCE:Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooserPreview$1$2;

    const/4 v9, 0x0

    const/16 v11, 0x6db8

    const/16 v12, 0x20

    move-object v10, p1

    invoke-static/range {v2 .. v12}, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt;->RepoChooser(Ljava/util/List;JJLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    :goto_1
    return-void
.end method
