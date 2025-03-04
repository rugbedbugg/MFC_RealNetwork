.class final Lorg/fdroid/fdroid/views/repos/AddRepoActivity$onCreate$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AddRepoActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/fdroid/views/repos/AddRepoActivity$onCreate$2;->invoke(Landroidx/compose/runtime/Composer;I)V
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
.field final synthetic this$0:Lorg/fdroid/fdroid/views/repos/AddRepoActivity;


# direct methods
.method constructor <init>(Lorg/fdroid/fdroid/views/repos/AddRepoActivity;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/fdroid/fdroid/views/repos/AddRepoActivity$onCreate$2$1;->this$0:Lorg/fdroid/fdroid/views/repos/AddRepoActivity;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 57
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lorg/fdroid/fdroid/views/repos/AddRepoActivity$onCreate$2$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 6

    and-int/lit8 v0, p2, 0xb

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 58
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_1

    .line 58
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    const-string v1, "org.fdroid.fdroid.views.repos.AddRepoActivity.onCreate.<anonymous>.<anonymous> (AddRepoActivity.kt:57)"

    const v2, -0x4e1641f5

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    iget-object p2, p0, Lorg/fdroid/fdroid/views/repos/AddRepoActivity$onCreate$2$1;->this$0:Lorg/fdroid/fdroid/views/repos/AddRepoActivity;

    invoke-static {p2}, Lorg/fdroid/fdroid/views/repos/AddRepoActivity;->access$getRepoManager(Lorg/fdroid/fdroid/views/repos/AddRepoActivity;)Lorg/fdroid/index/RepoManager;

    move-result-object p2

    invoke-virtual {p2}, Lorg/fdroid/index/RepoManager;->getAddRepoState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p2

    const/16 v0, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p2, v2, p1, v0, v1}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object p2

    invoke-interface {p2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lorg/fdroid/repo/AddRepoState;

    .line 59
    instance-of p2, v0, Lorg/fdroid/repo/AddRepoError;

    const v1, 0x2ce92fb1

    invoke-interface {p1, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    iget-object v1, p0, Lorg/fdroid/fdroid/views/repos/AddRepoActivity$onCreate$2$1;->this$0:Lorg/fdroid/fdroid/views/repos/AddRepoActivity;

    invoke-interface {p1, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p0, Lorg/fdroid/fdroid/views/repos/AddRepoActivity$onCreate$2$1;->this$0:Lorg/fdroid/fdroid/views/repos/AddRepoActivity;

    .line 1097
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_3

    .line 1098
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v3, v1, :cond_4

    .line 59
    :cond_3
    new-instance v3, Lorg/fdroid/fdroid/views/repos/AddRepoActivity$onCreate$2$1$1$1;

    invoke-direct {v3, v2}, Lorg/fdroid/fdroid/views/repos/AddRepoActivity$onCreate$2$1$1$1;-><init>(Lorg/fdroid/fdroid/views/repos/AddRepoActivity;)V

    .line 1100
    invoke-interface {p1, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 59
    :cond_4
    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const/4 v1, 0x0

    invoke-static {p2, v3, p1, v1, v1}, Landroidx/activity/compose/BackHandlerKt;->BackHandler(ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    iget-object p2, p0, Lorg/fdroid/fdroid/views/repos/AddRepoActivity$onCreate$2$1;->this$0:Lorg/fdroid/fdroid/views/repos/AddRepoActivity;

    const v1, 0x2ce930a9

    .line 65
    invoke-interface {p1, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    .line 1097
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_5

    .line 1098
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v2, v1, :cond_6

    .line 65
    :cond_5
    new-instance v2, Lorg/fdroid/fdroid/views/repos/AddRepoActivity$onCreate$2$1$2$1;

    invoke-direct {v2, p2}, Lorg/fdroid/fdroid/views/repos/AddRepoActivity$onCreate$2$1$2$1;-><init>(Ljava/lang/Object;)V

    .line 1100
    invoke-interface {p1, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 65
    :cond_6
    check-cast v2, Lkotlin/reflect/KFunction;

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    move-object v1, v2

    check-cast v1, Lkotlin/jvm/functions/Function1;

    const p2, 0x2ce930dc

    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    iget-object p2, p0, Lorg/fdroid/fdroid/views/repos/AddRepoActivity$onCreate$2$1;->this$0:Lorg/fdroid/fdroid/views/repos/AddRepoActivity;

    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result p2

    iget-object v2, p0, Lorg/fdroid/fdroid/views/repos/AddRepoActivity$onCreate$2$1;->this$0:Lorg/fdroid/fdroid/views/repos/AddRepoActivity;

    .line 1097
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez p2, :cond_7

    .line 1098
    sget-object p2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p2

    if-ne v3, p2, :cond_8

    .line 66
    :cond_7
    new-instance v3, Lorg/fdroid/fdroid/views/repos/AddRepoActivity$onCreate$2$1$3$1;

    invoke-direct {v3, v2}, Lorg/fdroid/fdroid/views/repos/AddRepoActivity$onCreate$2$1$3$1;-><init>(Lorg/fdroid/fdroid/views/repos/AddRepoActivity;)V

    .line 1100
    invoke-interface {p1, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 66
    :cond_8
    move-object v2, v3

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const p2, 0x2ce93128

    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    iget-object p2, p0, Lorg/fdroid/fdroid/views/repos/AddRepoActivity$onCreate$2$1;->this$0:Lorg/fdroid/fdroid/views/repos/AddRepoActivity;

    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result p2

    iget-object v3, p0, Lorg/fdroid/fdroid/views/repos/AddRepoActivity$onCreate$2$1;->this$0:Lorg/fdroid/fdroid/views/repos/AddRepoActivity;

    .line 1097
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez p2, :cond_9

    .line 1098
    sget-object p2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p2

    if-ne v4, p2, :cond_a

    .line 67
    :cond_9
    new-instance v4, Lorg/fdroid/fdroid/views/repos/AddRepoActivity$onCreate$2$1$4$1;

    invoke-direct {v4, v3}, Lorg/fdroid/fdroid/views/repos/AddRepoActivity$onCreate$2$1$4$1;-><init>(Lorg/fdroid/fdroid/views/repos/AddRepoActivity;)V

    .line 1100
    invoke-interface {p1, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 67
    :cond_a
    move-object v3, v4

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const/16 v5, 0x8

    move-object v4, p1

    .line 63
    invoke-static/range {v0 .. v5}, Lorg/fdroid/fdroid/views/repos/AddRepoIntroScreenKt;->AddRepoIntroScreen(Lorg/fdroid/repo/AddRepoState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_b
    :goto_1
    return-void
.end method
