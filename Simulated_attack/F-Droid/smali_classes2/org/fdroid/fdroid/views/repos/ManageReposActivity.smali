.class public Lorg/fdroid/fdroid/views/repos/ManageReposActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ManageReposActivity.java"

# interfaces
.implements Lorg/fdroid/fdroid/views/repos/RepoAdapter$RepoItemListener;


# instance fields
.field private final compositeDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field private isItemReorderingEnabled:Z

.field private final itemTouchCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

.field private final repoAdapter:Lorg/fdroid/fdroid/views/repos/RepoAdapter;

.field private repoManager:Lorg/fdroid/index/RepoManager;


# direct methods
.method public static synthetic $r8$lambda$4mBwyW_M6rsb_w8kD5EDqX_QQR8(Lorg/fdroid/fdroid/views/repos/ManageReposActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/repos/ManageReposActivity;->lambda$onCreate$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6fjA13mzk3ZbeORV_IFW56yM0yM(Lorg/fdroid/fdroid/views/repos/ManageReposActivity;Lorg/fdroid/database/Repository;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/repos/ManageReposActivity;->lambda$onToggleEnabled$6(Lorg/fdroid/database/Repository;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$LID2WE1TbhlnqSuKnoW6ZW34vzk(Lorg/fdroid/fdroid/views/repos/ManageReposActivity;Lorg/fdroid/database/Repository;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/repos/ManageReposActivity;->lambda$disableRepo$9(Lorg/fdroid/database/Repository;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RP6mpg1ipdfUEjTUiaB6u3LbyAY(Lorg/fdroid/fdroid/views/repos/ManageReposActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/repos/ManageReposActivity;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$S37VIL4kfgPczxdFBeOio3AiVK8(Lorg/fdroid/fdroid/views/repos/ManageReposActivity;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/repos/ManageReposActivity;->lambda$onCreate$2(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iA4MD3DIeKvxVbFPxcsOKnjWEeE(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/fdroid/fdroid/views/repos/ManageReposActivity;->lambda$onOptionsItemSelected$8(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$j8mxQveHfVjw4bzmB9woOst5F5M(Lorg/fdroid/fdroid/views/repos/ManageReposActivity;Lorg/fdroid/database/Repository;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/fdroid/fdroid/views/repos/ManageReposActivity;->lambda$onToggleEnabled$5(Lorg/fdroid/database/Repository;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kYtIJUfGWhyJnYXfp4EoJx3EhTE(Lorg/fdroid/fdroid/views/repos/ManageReposActivity;Lorg/fdroid/database/Repository;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/fdroid/fdroid/views/repos/ManageReposActivity;->lambda$onToggleEnabled$3(Lorg/fdroid/database/Repository;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$rJ_-DYRd_bAlTtYe-ObJVCbUDRA(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/fdroid/fdroid/views/repos/ManageReposActivity;->lambda$onToggleEnabled$4(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$z1djYJzjSPby9258IKVLjWm4Wzw(Lorg/fdroid/fdroid/views/repos/ManageReposActivity;Lorg/fdroid/database/Repository;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/fdroid/fdroid/views/repos/ManageReposActivity;->lambda$onToggleEnabled$7(Lorg/fdroid/database/Repository;Ljava/lang/Boolean;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetisItemReorderingEnabled(Lorg/fdroid/fdroid/views/repos/ManageReposActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/fdroid/fdroid/views/repos/ManageReposActivity;->isItemReorderingEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetrepoAdapter(Lorg/fdroid/fdroid/views/repos/ManageReposActivity;)Lorg/fdroid/fdroid/views/repos/RepoAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/fdroid/fdroid/views/repos/ManageReposActivity;->repoAdapter:Lorg/fdroid/fdroid/views/repos/RepoAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrepoManager(Lorg/fdroid/fdroid/views/repos/ManageReposActivity;)Lorg/fdroid/index/RepoManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/fdroid/fdroid/views/repos/ManageReposActivity;->repoManager:Lorg/fdroid/index/RepoManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputisItemReorderingEnabled(Lorg/fdroid/fdroid/views/repos/ManageReposActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/fdroid/fdroid/views/repos/ManageReposActivity;->isItemReorderingEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 60
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 64
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lorg/fdroid/fdroid/views/repos/ManageReposActivity;->compositeDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 65
    new-instance v0, Lorg/fdroid/fdroid/views/repos/RepoAdapter;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/views/repos/RepoAdapter;-><init>(Lorg/fdroid/fdroid/views/repos/RepoAdapter$RepoItemListener;)V

    iput-object v0, p0, Lorg/fdroid/fdroid/views/repos/ManageReposActivity;->repoAdapter:Lorg/fdroid/fdroid/views/repos/RepoAdapter;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/fdroid/fdroid/views/repos/ManageReposActivity;->isItemReorderingEnabled:Z

    .line 67
    new-instance v1, Lorg/fdroid/fdroid/views/repos/ManageReposActivity$1;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2, v0}, Lorg/fdroid/fdroid/views/repos/ManageReposActivity$1;-><init>(Lorg/fdroid/fdroid/views/repos/ManageReposActivity;II)V

    iput-object v1, p0, Lorg/fdroid/fdroid/views/repos/ManageReposActivity;->itemTouchCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    return-void
.end method

.method private disableRepo(Lorg/fdroid/database/Repository;)V
    .locals 3

    .line 234
    new-instance v0, Lorg/fdroid/fdroid/views/repos/ManageReposActivity$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1}, Lorg/fdroid/fdroid/views/repos/ManageReposActivity$$ExternalSyntheticLambda9;-><init>(Lorg/fdroid/fdroid/views/repos/ManageReposActivity;Lorg/fdroid/database/Repository;)V

    invoke-static {v0}, Lorg/fdroid/fdroid/Utils;->runOffUiThread(Ljava/lang/Runnable;)Lio/reactivex/rxjava3/disposables/Disposable;

    .line 235
    invoke-static {p0}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->getInstance(Landroid/content/Context;)Lorg/fdroid/fdroid/AppUpdateStatusManager;

    move-result-object v0

    invoke-virtual {p1}, Lorg/fdroid/database/Repository;->getRepoId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->removeAllByRepo(J)V

    sget v0, Lorg/fdroid/fdroid/R$string;->repo_disabled_notification:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 236
    invoke-static {}, Lorg/fdroid/fdroid/data/App;->getLocales()Landroidx/core/os/LocaleListCompat;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/fdroid/database/Repository;->getName(Landroidx/core/os/LocaleListCompat;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget v0, Lorg/fdroid/fdroid/R$id;->list:I

    .line 237
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p1, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/google/android/material/snackbar/Snackbar;->setTextMaxLines(I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-void
.end method

.method public static getDisallowInstallUnknownSourcesErrorMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "user"

    .line 241
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    const-string v1, "no_install_unknown_sources_globally"

    .line 243
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lorg/fdroid/fdroid/R$string;->has_disallow_install_unknown_sources_globally:I

    .line 244
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    sget v0, Lorg/fdroid/fdroid/R$string;->has_disallow_install_unknown_sources:I

    .line 246
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$disableRepo$9(Lorg/fdroid/database/Repository;)V
    .locals 3

    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/ManageReposActivity;->repoManager:Lorg/fdroid/index/RepoManager;

    .line 234
    invoke-virtual {p1}, Lorg/fdroid/database/Repository;->getRepoId()J

    move-result-wide v1

    const/4 p1, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/fdroid/index/RepoManager;->setRepositoryEnabled(JZ)V

    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .locals 1

    .line 138
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lorg/fdroid/fdroid/views/repos/AddRepoActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 139
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$onCreate$1(Landroid/view/View;)V
    .locals 1

    .line 142
    invoke-static {p0}, Landroidx/core/app/NavUtils;->getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object p1

    .line 143
    invoke-static {p0, p1}, Landroidx/core/app/NavUtils;->shouldUpRecreateTask(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 147
    :cond_0
    invoke-static {p0, p1}, Landroidx/core/app/NavUtils;->navigateUpTo(Landroid/app/Activity;Landroid/content/Intent;)V

    goto :goto_1

    .line 144
    :cond_1
    :goto_0
    invoke-static {p0}, Landroidx/core/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroidx/core/app/TaskStackBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/core/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroidx/core/app/TaskStackBuilder;

    move-result-object p1

    .line 145
    invoke-virtual {p1}, Landroidx/core/app/TaskStackBuilder;->startActivities()V

    :goto_1
    return-void
.end method

.method private synthetic lambda$onCreate$2(Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/ManageReposActivity;->repoAdapter:Lorg/fdroid/fdroid/views/repos/RepoAdapter;

    .line 156
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lorg/fdroid/fdroid/views/repos/RepoAdapter;->updateItems(Ljava/util/List;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/fdroid/fdroid/views/repos/ManageReposActivity;->isItemReorderingEnabled:Z

    return-void
.end method

.method private static synthetic lambda$onOptionsItemSelected$8(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 226
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private synthetic lambda$onToggleEnabled$3(Lorg/fdroid/database/Repository;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 199
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/repos/ManageReposActivity;->disableRepo(Lorg/fdroid/database/Repository;)V

    .line 200
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private static synthetic lambda$onToggleEnabled$4(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 202
    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method private synthetic lambda$onToggleEnabled$5(Lorg/fdroid/database/Repository;Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p2, p0, Lorg/fdroid/fdroid/views/repos/ManageReposActivity;->repoAdapter:Lorg/fdroid/fdroid/views/repos/RepoAdapter;

    .line 203
    invoke-virtual {p2, p1}, Lorg/fdroid/fdroid/views/repos/RepoAdapter;->updateRepoItem(Lorg/fdroid/database/Repository;)V

    return-void
.end method

.method private synthetic lambda$onToggleEnabled$6(Lorg/fdroid/database/Repository;)Ljava/lang/Boolean;
    .locals 3

    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/ManageReposActivity;->repoManager:Lorg/fdroid/index/RepoManager;

    .line 207
    invoke-virtual {p1}, Lorg/fdroid/database/Repository;->getRepoId()J

    move-result-wide v1

    const/4 p1, 0x1

    invoke-virtual {v0, v1, v2, p1}, Lorg/fdroid/index/RepoManager;->setRepositoryEnabled(JZ)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method private synthetic lambda$onToggleEnabled$7(Lorg/fdroid/database/Repository;Ljava/lang/Boolean;)V
    .locals 2

    .line 209
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p2

    invoke-virtual {p1}, Lorg/fdroid/database/Repository;->getRepoId()J

    move-result-wide v0

    invoke-static {p2, v0, v1}, Lorg/fdroid/fdroid/work/RepoUpdateWorker;->updateNow(Landroid/content/Context;J)V

    return-void
.end method


# virtual methods
.method public onClicked(Lorg/fdroid/database/Repository;)V
    .locals 2

    .line 175
    invoke-virtual {p1}, Lorg/fdroid/database/Repository;->getRepoId()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lorg/fdroid/fdroid/views/repos/RepoDetailsActivity;->launch(Landroid/content/Context;J)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 118
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lorg/fdroid/fdroid/FDroidApp;

    .line 119
    invoke-virtual {v0, p0}, Lorg/fdroid/fdroid/FDroidApp;->setSecureWindow(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 121
    invoke-virtual {v0, p0}, Lorg/fdroid/fdroid/FDroidApp;->applyPureBlackBackgroundInDarkTheme(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 122
    invoke-static {p0}, Lorg/fdroid/fdroid/FDroidApp;->getRepoManager(Landroid/content/Context;)Lorg/fdroid/index/RepoManager;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/views/repos/ManageReposActivity;->repoManager:Lorg/fdroid/index/RepoManager;

    .line 124
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lorg/fdroid/fdroid/R$layout;->repo_list_activity:I

    .line 126
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    sget p1, Lorg/fdroid/fdroid/R$id;->toolbar:I

    .line 128
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 129
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 130
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 131
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/fdroid/Preferences;->getLastUpdateCheck()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    sget v0, Lorg/fdroid/fdroid/R$string;->repositories_last_update_never:I

    .line 133
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 134
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0xea60

    const/high16 v8, 0x80000

    invoke-static/range {v2 .. v8}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v0

    .line 136
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    sget v3, Lorg/fdroid/fdroid/R$string;->repositories_last_update:I

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v1, v4

    invoke-virtual {p0, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/appcompat/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    sget v0, Lorg/fdroid/fdroid/R$id;->fab:I

    .line 137
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lorg/fdroid/fdroid/views/repos/ManageReposActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lorg/fdroid/fdroid/views/repos/ManageReposActivity$$ExternalSyntheticLambda5;-><init>(Lorg/fdroid/fdroid/views/repos/ManageReposActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    new-instance v0, Lorg/fdroid/fdroid/views/repos/ManageReposActivity$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/views/repos/ManageReposActivity$$ExternalSyntheticLambda6;-><init>(Lorg/fdroid/fdroid/views/repos/ManageReposActivity;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lorg/fdroid/fdroid/R$id;->list:I

    .line 151
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 152
    new-instance v0, Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/repos/ManageReposActivity;->itemTouchCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    .line 153
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/ManageReposActivity;->repoAdapter:Lorg/fdroid/fdroid/views/repos/RepoAdapter;

    .line 154
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 155
    invoke-static {p0}, Lorg/fdroid/fdroid/FDroidApp;->getRepoManager(Landroid/content/Context;)Lorg/fdroid/index/RepoManager;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fdroid/index/RepoManager;->getLiveRepositories()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lorg/fdroid/fdroid/views/repos/ManageReposActivity$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/views/repos/ManageReposActivity$$ExternalSyntheticLambda7;-><init>(Lorg/fdroid/fdroid/views/repos/ManageReposActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 215
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lorg/fdroid/fdroid/R$menu;->repo_list:I

    .line 216
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/views/repos/ManageReposActivity;->compositeDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 163
    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->dispose()V

    .line 164
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 169
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 170
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 222
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lorg/fdroid/fdroid/R$id;->action_info:I

    if-ne v0, v1, :cond_0

    .line 223
    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-direct {p1, p0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    sget v0, Lorg/fdroid/fdroid/R$string;->repo_list_info_title:I

    .line 224
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    sget v0, Lorg/fdroid/fdroid/R$string;->repo_list_info_text:I

    .line 225
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    sget v0, Lorg/fdroid/fdroid/R$string;->ok:I

    .line 226
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/fdroid/fdroid/views/repos/ManageReposActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lorg/fdroid/fdroid/views/repos/ManageReposActivity$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    .line 227
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    const/4 p1, 0x1

    return p1

    .line 230
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onToggleEnabled(Lorg/fdroid/database/Repository;)V
    .locals 3

    .line 195
    invoke-virtual {p1}, Lorg/fdroid/database/Repository;->getEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lorg/fdroid/fdroid/R$string;->repo_disable_warning:I

    .line 197
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/fdroid/fdroid/R$string;->repo_disable_warning_button:I

    new-instance v2, Lorg/fdroid/fdroid/views/repos/ManageReposActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lorg/fdroid/fdroid/views/repos/ManageReposActivity$$ExternalSyntheticLambda0;-><init>(Lorg/fdroid/fdroid/views/repos/ManageReposActivity;Lorg/fdroid/database/Repository;)V

    .line 198
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/fdroid/fdroid/R$string;->cancel:I

    new-instance v2, Lorg/fdroid/fdroid/views/repos/ManageReposActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lorg/fdroid/fdroid/views/repos/ManageReposActivity$$ExternalSyntheticLambda1;-><init>()V

    .line 202
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lorg/fdroid/fdroid/views/repos/ManageReposActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lorg/fdroid/fdroid/views/repos/ManageReposActivity$$ExternalSyntheticLambda2;-><init>(Lorg/fdroid/fdroid/views/repos/ManageReposActivity;Lorg/fdroid/database/Repository;)V

    .line 203
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 204
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    goto :goto_0

    .line 206
    :cond_0
    new-instance v0, Lorg/fdroid/fdroid/views/repos/ManageReposActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lorg/fdroid/fdroid/views/repos/ManageReposActivity$$ExternalSyntheticLambda3;-><init>(Lorg/fdroid/fdroid/views/repos/ManageReposActivity;Lorg/fdroid/database/Repository;)V

    new-instance v1, Lorg/fdroid/fdroid/views/repos/ManageReposActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lorg/fdroid/fdroid/views/repos/ManageReposActivity$$ExternalSyntheticLambda4;-><init>(Lorg/fdroid/fdroid/views/repos/ManageReposActivity;Lorg/fdroid/database/Repository;)V

    invoke-static {v0, v1}, Lorg/fdroid/fdroid/Utils;->runOffUiThread(Landroidx/core/util/Supplier;Landroidx/core/util/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    :goto_0
    return-void
.end method
