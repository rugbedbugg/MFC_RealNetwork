.class final Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooser$2$1$7$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "RepoChooser.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooser$2$1$7;->invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V
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
        "Landroidx/compose/foundation/layout/RowScope;",
        "invoke",
        "(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/runtime/Composer;I)V"
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
.field final synthetic $preferredRepoId:J

.field final synthetic $repo:Lorg/fdroid/database/Repository;


# direct methods
.method constructor <init>(Lorg/fdroid/database/Repository;J)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooser$2$1$7$1$2;->$repo:Lorg/fdroid/database/Repository;

    iput-wide p2, p0, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooser$2$1$7$1$2;->$preferredRepoId:J

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 151
    check-cast p1, Landroidx/compose/foundation/layout/RowScope;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooser$2$1$7$1$2;->invoke(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/runtime/Composer;I)V
    .locals 8

    const-string v0, "$this$DropdownMenuItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 p1, p3, 0x51

    const/16 v0, 0x10

    if-ne p1, v0, :cond_1

    .line 152
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_3

    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, -0x1

    const-string v0, "org.fdroid.fdroid.views.appdetails.RepoChooser.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (RepoChooser.kt:151)"

    const v1, -0x7fa8809

    invoke-static {v1, p3, p1, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooser$2$1$7$1$2;->$repo:Lorg/fdroid/database/Repository;

    invoke-virtual {v2}, Lorg/fdroid/database/Repository;->getRepoId()J

    move-result-wide v0

    iget-wide v3, p0, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt$RepoChooser$2$1$7$1$2;->$preferredRepoId:J

    cmp-long p1, v0, v3

    if-nez p1, :cond_3

    const/4 p1, 0x1

    :goto_1
    move v3, p1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    goto :goto_1

    :goto_2
    const/4 v4, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x4

    move-object v5, p2

    invoke-static/range {v2 .. v7}, Lorg/fdroid/fdroid/views/appdetails/RepoChooserKt;->access$RepoItem(Lorg/fdroid/database/Repository;ZLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4
    :goto_3
    return-void
.end method
