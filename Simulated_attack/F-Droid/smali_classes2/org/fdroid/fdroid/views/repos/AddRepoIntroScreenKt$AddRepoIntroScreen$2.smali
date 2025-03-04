.class final Lorg/fdroid/fdroid/views/repos/AddRepoIntroScreenKt$AddRepoIntroScreen$2;
.super Lkotlin/jvm/internal/Lambda;
.source "AddRepoIntroScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/fdroid/views/repos/AddRepoIntroScreenKt;->AddRepoIntroScreen(Lorg/fdroid/repo/AddRepoState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u000b\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "paddingValues",
        "Landroidx/compose/foundation/layout/PaddingValues;",
        "invoke",
        "(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)V"
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
.field final synthetic $onAddRepo:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field final synthetic $onFetchRepo:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field final synthetic $state:Lorg/fdroid/repo/AddRepoState;


# direct methods
.method constructor <init>(Lorg/fdroid/repo/AddRepoState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fdroid/repo/AddRepoState;",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lorg/fdroid/fdroid/views/repos/AddRepoIntroScreenKt$AddRepoIntroScreen$2;->$state:Lorg/fdroid/repo/AddRepoState;

    iput-object p2, p0, Lorg/fdroid/fdroid/views/repos/AddRepoIntroScreenKt$AddRepoIntroScreen$2;->$onFetchRepo:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lorg/fdroid/fdroid/views/repos/AddRepoIntroScreenKt$AddRepoIntroScreen$2;->$onAddRepo:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 109
    check-cast p1, Landroidx/compose/foundation/layout/PaddingValues;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/fdroid/fdroid/views/repos/AddRepoIntroScreenKt$AddRepoIntroScreen$2;->invoke(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)V
    .locals 3

    const-string v0, "paddingValues"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v0, p3, 0xe

    if-nez v0, :cond_1

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr p3, v0

    :cond_1
    and-int/lit8 v0, p3, 0x5b

    const/16 v1, 0x12

    if-ne v0, v1, :cond_3

    .line 110
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 123
    :cond_2
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_4

    .line 110
    :cond_3
    :goto_1
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, -0x1

    const-string v1, "org.fdroid.fdroid.views.repos.AddRepoIntroScreen.<anonymous> (AddRepoIntroScreen.kt:109)"

    const v2, -0x198cb44e

    invoke-static {v2, p3, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/AddRepoIntroScreenKt$AddRepoIntroScreen$2;->$state:Lorg/fdroid/repo/AddRepoState;

    .line 111
    sget-object v1, Lorg/fdroid/repo/None;->INSTANCE:Lorg/fdroid/repo/None;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const v0, -0x436245d4

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/AddRepoIntroScreenKt$AddRepoIntroScreen$2;->$onFetchRepo:Lkotlin/jvm/functions/Function1;

    and-int/lit8 p3, p3, 0xe

    invoke-static {p1, v0, p2, p3}, Lorg/fdroid/fdroid/views/repos/AddRepoIntroScreenKt;->AddRepoIntroContent(Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    goto/16 :goto_3

    .line 112
    :cond_5
    instance-of v1, v0, Lorg/fdroid/repo/Fetching;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    const v0, -0x43624577

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/AddRepoIntroScreenKt$AddRepoIntroScreen$2;->$state:Lorg/fdroid/repo/AddRepoState;

    .line 113
    check-cast v0, Lorg/fdroid/repo/Fetching;

    invoke-virtual {v0}, Lorg/fdroid/repo/Fetching;->getReceivedRepo()Lorg/fdroid/database/Repository;

    move-result-object v0

    if-nez v0, :cond_6

    const v0, -0x43624541

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    sget v0, Lorg/fdroid/fdroid/R$string;->repo_state_fetching:I

    .line 114
    invoke-static {v0, p2, v2}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v0

    and-int/lit8 p3, p3, 0xe

    invoke-static {p1, v0, p2, p3}, Lorg/fdroid/fdroid/views/repos/RepoProgressScreenKt;->RepoProgressScreen(Landroidx/compose/foundation/layout/PaddingValues;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    .line 113
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    goto :goto_2

    :cond_6
    const v0, -0x436244c4

    .line 115
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/AddRepoIntroScreenKt$AddRepoIntroScreen$2;->$state:Lorg/fdroid/repo/AddRepoState;

    .line 116
    check-cast v0, Lorg/fdroid/repo/Fetching;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/repos/AddRepoIntroScreenKt$AddRepoIntroScreen$2;->$onAddRepo:Lkotlin/jvm/functions/Function0;

    and-int/lit8 p3, p3, 0xe

    or-int/lit8 p3, p3, 0x40

    invoke-static {p1, v0, v1, p2, p3}, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt;->RepoPreviewScreen(Landroidx/compose/foundation/layout/PaddingValues;Lorg/fdroid/repo/Fetching;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 115
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 112
    :goto_2
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    goto :goto_3

    .line 120
    :cond_7
    sget-object v1, Lorg/fdroid/repo/Adding;->INSTANCE:Lorg/fdroid/repo/Adding;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const v0, -0x4362445a

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    sget v0, Lorg/fdroid/fdroid/R$string;->repo_state_adding:I

    invoke-static {v0, p2, v2}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v0

    and-int/lit8 p3, p3, 0xe

    invoke-static {p1, v0, p2, p3}, Lorg/fdroid/fdroid/views/repos/RepoProgressScreenKt;->RepoProgressScreen(Landroidx/compose/foundation/layout/PaddingValues;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    goto :goto_3

    .line 121
    :cond_8
    instance-of v1, v0, Lorg/fdroid/repo/Added;

    if-eqz v1, :cond_9

    const p3, -0x436243f4

    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    sget-object p3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    invoke-static {p3, p1}, Landroidx/compose/foundation/layout/PaddingKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    invoke-static {p1, p2, v2}, Landroidx/compose/foundation/layout/BoxKt;->Box(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    goto :goto_3

    .line 122
    :cond_9
    instance-of v0, v0, Lorg/fdroid/repo/AddRepoError;

    if-eqz v0, :cond_a

    const v0, -0x43624399

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/AddRepoIntroScreenKt$AddRepoIntroScreen$2;->$state:Lorg/fdroid/repo/AddRepoState;

    check-cast v0, Lorg/fdroid/repo/AddRepoError;

    and-int/lit8 p3, p3, 0xe

    or-int/lit8 p3, p3, 0x40

    invoke-static {p1, v0, p2, p3}, Lorg/fdroid/fdroid/views/repos/AddRepoErrorScreenKt;->AddRepoErrorScreen(Landroidx/compose/foundation/layout/PaddingValues;Lorg/fdroid/repo/AddRepoError;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    goto :goto_3

    :cond_a
    const p1, -0x43624367

    .line 123
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    :goto_3
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_b
    :goto_4
    return-void
.end method
