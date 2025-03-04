.class public final Lorg/fdroid/fdroid/views/repos/AddRepoActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "AddRepoActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0002J\u0012\u0010\u000b\u001a\u00020\u00082\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0014J\u0008\u0010\u000e\u001a\u00020\u0008H\u0014J\u0010\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\nH\u0002J\u0008\u0010\u0011\u001a\u00020\u0008H\u0014R\u0014\u0010\u0003\u001a\u00020\u00048BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0012"
    }
    d2 = {
        "Lorg/fdroid/fdroid/views/repos/AddRepoActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "()V",
        "repoManager",
        "Lorg/fdroid/index/RepoManager;",
        "getRepoManager",
        "()Lorg/fdroid/index/RepoManager;",
        "fetchIfRepoUri",
        "",
        "str",
        "",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
        "onFetchRepo",
        "uriStr",
        "onResume",
        "app_fullRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I


# direct methods
.method public static synthetic $r8$lambda$Yut3x6V2CMTh77OM6BiG3Xnk1yk(Lorg/fdroid/fdroid/views/repos/AddRepoActivity;Landroid/content/Intent;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/fdroid/fdroid/views/repos/AddRepoActivity;->onCreate$lambda$2(Lorg/fdroid/fdroid/views/repos/AddRepoActivity;Landroid/content/Intent;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static final synthetic access$getRepoManager(Lorg/fdroid/fdroid/views/repos/AddRepoActivity;)Lorg/fdroid/index/RepoManager;
    .locals 0

    .line 33
    invoke-direct {p0}, Lorg/fdroid/fdroid/views/repos/AddRepoActivity;->getRepoManager()Lorg/fdroid/index/RepoManager;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$onFetchRepo(Lorg/fdroid/fdroid/views/repos/AddRepoActivity;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/repos/AddRepoActivity;->onFetchRepo(Ljava/lang/String;)V

    return-void
.end method

.method private final fetchIfRepoUri(Ljava/lang/String;)V
    .locals 10

    .line 121
    new-instance v0, Lkotlin/text/Regex;

    const/4 v1, 0x2

    new-array v2, v1, [Lkotlin/text/RegexOption;

    .line 123
    sget-object v3, Lkotlin/text/RegexOption;->IGNORE_CASE:Lkotlin/text/RegexOption;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v5, Lkotlin/text/RegexOption;->MULTILINE:Lkotlin/text/RegexOption;

    const/4 v6, 0x1

    aput-object v5, v2, v6

    invoke-static {v2}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    const-string v7, "^.*((https|fdroidrepos)://.+/repo(\\?fingerprint=[A-F0-9]+)?) ?.*$"

    .line 121
    invoke-direct {v0, v7, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    const/4 v2, 0x0

    .line 124
    invoke-static {v0, p1, v4, v1, v2}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlin/text/MatchResult;->getGroups()Lkotlin/text/MatchGroupCollection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, v6}, Lkotlin/text/MatchGroupCollection;->get(I)Lkotlin/text/MatchGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lkotlin/text/MatchGroup;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    const-string v7, "Found match: "

    const-class v8, Lorg/fdroid/fdroid/views/repos/AddRepoActivity;

    if-eqz v0, :cond_1

    .line 126
    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-direct {p0, v0}, Lorg/fdroid/fdroid/views/repos/AddRepoActivity;->onFetchRepo(Ljava/lang/String;)V

    return-void

    .line 131
    :cond_1
    new-instance v0, Lkotlin/text/Regex;

    new-array v9, v1, [Lkotlin/text/RegexOption;

    aput-object v3, v9, v4

    aput-object v5, v9, v6

    .line 133
    invoke-static {v9}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    const-string v5, "^.*(https://fdroid.link/.+) ?.*$"

    .line 131
    invoke-direct {v0, v5, v3}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    .line 134
    invoke-static {v0, p1, v4, v1, v2}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lkotlin/text/MatchResult;->getGroups()Lkotlin/text/MatchGroupCollection;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1, v6}, Lkotlin/text/MatchGroupCollection;->get(I)Lkotlin/text/MatchGroup;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lkotlin/text/MatchGroup;->getValue()Ljava/lang/String;

    move-result-object v2

    :cond_2
    if-eqz v2, :cond_3

    .line 136
    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-direct {p0, v2}, Lorg/fdroid/fdroid/views/repos/AddRepoActivity;->onFetchRepo(Ljava/lang/String;)V

    return-void

    :cond_3
    sget p1, Lorg/fdroid/fdroid/R$string;->repo_share_not_found:I

    .line 141
    invoke-static {p0, p1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 142
    invoke-virtual {p0}, Landroid/app/Activity;->finishAfterTransition()V

    return-void
.end method

.method private final getRepoManager()Lorg/fdroid/index/RepoManager;
    .locals 2

    .line 36
    invoke-static {p0}, Lorg/fdroid/fdroid/FDroidApp;->getRepoManager(Landroid/content/Context;)Lorg/fdroid/index/RepoManager;

    move-result-object v0

    const-string v1, "getRepoManager(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private static final onCreate$lambda$2(Lorg/fdroid/fdroid/views/repos/AddRepoActivity;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x45ee9a33

    if-eq v1, v2, :cond_2

    const v2, -0x45ed2f16

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 75
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/repos/AddRepoActivity;->onFetchRepo(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "android.intent.action.SEND"

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const-string v0, "android.intent.extra.TEXT"

    .line 80
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 81
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/repos/AddRepoActivity;->fetchIfRepoUri(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private final onFetchRepo(Ljava/lang/String;)V
    .locals 2

    .line 107
    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 108
    invoke-direct {p0}, Lorg/fdroid/fdroid/views/repos/AddRepoActivity;->getRepoManager()Lorg/fdroid/index/RepoManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/fdroid/index/RepoManager;->isSwapUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/fdroid/fdroid/nearby/SwapService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 110
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 112
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 114
    :cond_0
    invoke-direct {p0}, Lorg/fdroid/fdroid/views/repos/AddRepoActivity;->getRepoManager()Lorg/fdroid/index/RepoManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/index/RepoManager;->abortAddingRepository()V

    .line 115
    invoke-direct {p0}, Lorg/fdroid/fdroid/views/repos/AddRepoActivity;->getRepoManager()Lorg/fdroid/index/RepoManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "toString(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Linfo/guardianproject/netcipher/NetCipher;->getProxy()Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/fdroid/index/RepoManager;->fetchRepositoryPreview(Ljava/lang/String;Ljava/net/Proxy;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 39
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Lorg/fdroid/fdroid/views/repos/AddRepoActivity$onCreate$1;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p1}, Lorg/fdroid/fdroid/views/repos/AddRepoActivity$onCreate$1;-><init>(Lorg/fdroid/fdroid/views/repos/AddRepoActivity;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 56
    new-instance v0, Lorg/fdroid/fdroid/views/repos/AddRepoActivity$onCreate$2;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/views/repos/AddRepoActivity$onCreate$2;-><init>(Lorg/fdroid/fdroid/views/repos/AddRepoActivity;)V

    const v1, -0x56b9d3d

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    invoke-static {p0, p1, v0, v2, p1}, Landroidx/activity/compose/ComponentActivityKt;->setContent$default(Landroidx/activity/ComponentActivity;Landroidx/compose/runtime/CompositionContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    .line 71
    new-instance v0, Lorg/fdroid/fdroid/views/repos/AddRepoActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/views/repos/AddRepoActivity$$ExternalSyntheticLambda0;-><init>(Lorg/fdroid/fdroid/views/repos/AddRepoActivity;)V

    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->addOnNewIntentListener(Landroidx/core/util/Consumer;)V

    .line 88
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 91
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 92
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 102
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 103
    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/fdroid/fdroid/views/repos/AddRepoActivity;->getRepoManager()Lorg/fdroid/index/RepoManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/index/RepoManager;->abortAddingRepository()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 97
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 98
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/fdroid/fdroid/FDroidApp;->checkStartTor(Landroid/content/Context;Lorg/fdroid/fdroid/Preferences;)V

    return-void
.end method
