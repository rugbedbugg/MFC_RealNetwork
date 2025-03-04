.class final Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreen$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RepoPreviewScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt;->RepoPreviewScreen(Landroidx/compose/foundation/layout/PaddingValues;Lorg/fdroid/repo/Fetching;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/foundation/lazy/LazyListScope;",
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
.field final synthetic $localeList:Landroidx/core/os/LocaleListCompat;

.field final synthetic $onAddRepo:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field final synthetic $state:Lorg/fdroid/repo/Fetching;


# direct methods
.method constructor <init>(Lorg/fdroid/repo/Fetching;Lkotlin/jvm/functions/Function0;Landroidx/core/os/LocaleListCompat;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fdroid/repo/Fetching;",
            "Lkotlin/jvm/functions/Function0;",
            "Landroidx/core/os/LocaleListCompat;",
            ")V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreen$1;->$state:Lorg/fdroid/repo/Fetching;

    iput-object p2, p0, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreen$1;->$onAddRepo:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreen$1;->$localeList:Landroidx/core/os/LocaleListCompat;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 66
    check-cast p1, Landroidx/compose/foundation/lazy/LazyListScope;

    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreen$1;->invoke(Landroidx/compose/foundation/lazy/LazyListScope;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/foundation/lazy/LazyListScope;)V
    .locals 8

    const-string v0, "$this$LazyColumn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 73
    new-instance v0, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreen$1$1;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreen$1;->$state:Lorg/fdroid/repo/Fetching;

    iget-object v4, p0, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreen$1;->$onAddRepo:Lkotlin/jvm/functions/Function0;

    iget-object v5, p0, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreen$1;->$localeList:Landroidx/core/os/LocaleListCompat;

    invoke-direct {v0, v1, v4, v5}, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreen$1$1;-><init>(Lorg/fdroid/repo/Fetching;Lkotlin/jvm/functions/Function0;Landroidx/core/os/LocaleListCompat;)V

    const v1, -0x5bab0d42

    const/4 v7, 0x1

    invoke-static {v1, v7, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v4

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Landroidx/compose/foundation/lazy/LazyListScope$-CC;->item$default(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;ILjava/lang/Object;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreen$1;->$state:Lorg/fdroid/repo/Fetching;

    .line 76
    invoke-virtual {v0}, Lorg/fdroid/repo/Fetching;->getFetchResult()Lorg/fdroid/repo/FetchResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreen$1;->$state:Lorg/fdroid/repo/Fetching;

    .line 77
    invoke-virtual {v0}, Lorg/fdroid/repo/Fetching;->getFetchResult()Lorg/fdroid/repo/FetchResult;

    move-result-object v0

    instance-of v0, v0, Lorg/fdroid/repo/FetchResult$IsNewRepository;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreen$1;->$state:Lorg/fdroid/repo/Fetching;

    .line 78
    invoke-virtual {v0}, Lorg/fdroid/repo/Fetching;->getFetchResult()Lorg/fdroid/repo/FetchResult;

    move-result-object v0

    instance-of v0, v0, Lorg/fdroid/repo/FetchResult$IsNewRepoAndNewMirror;

    if-eqz v0, :cond_2

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 80
    new-instance v0, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreen$1$2;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreen$1;->$state:Lorg/fdroid/repo/Fetching;

    invoke-direct {v0, v1}, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreen$1$2;-><init>(Lorg/fdroid/repo/Fetching;)V

    const v1, -0xc9da4a7

    invoke-static {v1, v7, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v4

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Landroidx/compose/foundation/lazy/LazyListScope$-CC;->item$default(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;ILjava/lang/Object;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreen$1;->$state:Lorg/fdroid/repo/Fetching;

    .line 97
    invoke-virtual {v0}, Lorg/fdroid/repo/Fetching;->getApps()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreen$1$3;->INSTANCE:Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreen$1$3;

    iget-object v2, p0, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreen$1;->$state:Lorg/fdroid/repo/Fetching;

    iget-object v3, p0, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreen$1;->$localeList:Landroidx/core/os/LocaleListCompat;

    .line 139
    sget-object v4, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreen$1$invoke$$inlined$items$default$1;->INSTANCE:Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreen$1$invoke$$inlined$items$default$1;

    .line 142
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v1, :cond_1

    .line 141
    new-instance v6, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreen$1$invoke$$inlined$items$default$2;

    invoke-direct {v6, v1, v0}, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreen$1$invoke$$inlined$items$default$2;-><init>(Lkotlin/jvm/functions/Function1;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    new-instance v1, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreen$1$invoke$$inlined$items$default$3;

    invoke-direct {v1, v4, v0}, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreen$1$invoke$$inlined$items$default$3;-><init>(Lkotlin/jvm/functions/Function1;Ljava/util/List;)V

    .line 145
    new-instance v4, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreen$1$invoke$$inlined$items$default$4;

    invoke-direct {v4, v0, v2, v3}, Lorg/fdroid/fdroid/views/repos/RepoPreviewScreenKt$RepoPreviewScreen$1$invoke$$inlined$items$default$4;-><init>(Ljava/util/List;Lorg/fdroid/repo/Fetching;Landroidx/core/os/LocaleListCompat;)V

    const v0, -0x25b7f321

    invoke-static {v0, v7, v4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    .line 141
    invoke-interface {p1, v5, v6, v1, v0}, Landroidx/compose/foundation/lazy/LazyListScope;->items(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    :cond_2
    return-void
.end method
