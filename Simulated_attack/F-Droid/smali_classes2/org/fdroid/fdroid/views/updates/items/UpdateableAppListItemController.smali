.class public Lorg/fdroid/fdroid/views/updates/items/UpdateableAppListItemController;
.super Lorg/fdroid/fdroid/views/apps/AppListItemController;
.source "UpdateableAppListItemController.java"


# direct methods
.method public static synthetic $r8$lambda$7Q4Jl-JqoLCQsmSGtVGxYKnt9wg(Lorg/fdroid/fdroid/views/updates/items/UpdateableAppListItemController;Lorg/fdroid/database/AppPrefs;Lorg/fdroid/database/AppPrefsDao;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppListItemController;->lambda$showUndoSnackBar$2(Lorg/fdroid/database/AppPrefs;Lorg/fdroid/database/AppPrefsDao;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PRQQbzYWpj_0vTs_CbeEnV0RZpw(Lorg/fdroid/database/AppPrefs;Lorg/fdroid/database/AppPrefsDao;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppListItemController;->lambda$showUndoSnackBar$0(Lorg/fdroid/database/AppPrefs;Lorg/fdroid/database/AppPrefsDao;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$hn1K_DZUvdJPOAp1YIkFGCs3_gs(Lorg/fdroid/fdroid/views/updates/items/UpdateableAppListItemController;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppListItemController;->lambda$showUndoSnackBar$1(Ljava/lang/Boolean;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowUndoSnackBar(Lorg/fdroid/fdroid/views/updates/items/UpdateableAppListItemController;Lorg/fdroid/database/AppPrefsDao;Lorg/fdroid/database/AppPrefs;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppListItemController;->showUndoSnackBar(Lorg/fdroid/database/AppPrefsDao;Lorg/fdroid/database/AppPrefs;)V

    return-void
.end method

.method constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lorg/fdroid/fdroid/views/apps/AppListItemController;-><init>(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lorg/fdroid/fdroid/views/updates/items/UpdateableAppListItemController;)Landroidx/appcompat/app/AppCompatActivity;
    .locals 0

    .line 30
    iget-object p0, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    return-object p0
.end method

.method private static synthetic lambda$showUndoSnackBar$0(Lorg/fdroid/database/AppPrefs;Lorg/fdroid/database/AppPrefsDao;)Ljava/lang/Boolean;
    .locals 2

    const-wide/16 v0, 0x0

    .line 75
    invoke-virtual {p0, v0, v1}, Lorg/fdroid/database/AppPrefs;->toggleIgnoreVersionCodeUpdate(J)Lorg/fdroid/database/AppPrefs;

    move-result-object p0

    .line 76
    invoke-interface {p1, p0}, Lorg/fdroid/database/AppPrefsDao;->update(Lorg/fdroid/database/AppPrefs;)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private synthetic lambda$showUndoSnackBar$1(Ljava/lang/Boolean;)V
    .locals 0

    iget-object p1, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 78
    invoke-static {p1}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->getInstance(Landroid/content/Context;)Lorg/fdroid/fdroid/AppUpdateStatusManager;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->checkForUpdates()V

    return-void
.end method

.method private synthetic lambda$showUndoSnackBar$2(Lorg/fdroid/database/AppPrefs;Lorg/fdroid/database/AppPrefsDao;Landroid/view/View;)V
    .locals 0

    .line 74
    new-instance p3, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppListItemController$$ExternalSyntheticLambda1;

    invoke-direct {p3, p1, p2}, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppListItemController$$ExternalSyntheticLambda1;-><init>(Lorg/fdroid/database/AppPrefs;Lorg/fdroid/database/AppPrefsDao;)V

    new-instance p1, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppListItemController$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppListItemController$$ExternalSyntheticLambda2;-><init>(Lorg/fdroid/fdroid/views/updates/items/UpdateableAppListItemController;)V

    invoke-static {p3, p1}, Lorg/fdroid/fdroid/Utils;->runOffUiThread(Landroidx/core/util/Supplier;Landroidx/core/util/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method private showUndoSnackBar(Lorg/fdroid/database/AppPrefsDao;Lorg/fdroid/database/AppPrefs;)V
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lorg/fdroid/fdroid/R$string;->app_list__dismiss_app_update:I

    const/4 v2, 0x0

    .line 69
    invoke-static {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    sget v1, Lorg/fdroid/fdroid/R$string;->undo:I

    new-instance v2, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppListItemController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p2, p1}, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppListItemController$$ExternalSyntheticLambda0;-><init>(Lorg/fdroid/fdroid/views/updates/items/UpdateableAppListItemController;Lorg/fdroid/database/AppPrefs;Lorg/fdroid/database/AppPrefsDao;)V

    .line 74
    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    .line 79
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-void
.end method


# virtual methods
.method public canDismiss()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method protected getCurrentViewState(Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;)Lorg/fdroid/fdroid/views/apps/AppListItemState;
    .locals 0

    .line 39
    new-instance p2, Lorg/fdroid/fdroid/views/apps/AppListItemState;

    invoke-direct {p2, p1}, Lorg/fdroid/fdroid/views/apps/AppListItemState;-><init>(Lorg/fdroid/fdroid/data/App;)V

    const/4 p1, 0x1

    .line 40
    invoke-virtual {p2, p1}, Lorg/fdroid/fdroid/views/apps/AppListItemState;->setShowInstallButton(Z)Lorg/fdroid/fdroid/views/apps/AppListItemState;

    move-result-object p1

    return-object p1
.end method

.method protected onDismissApp(Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;)V
    .locals 3

    iget-object p2, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 50
    invoke-static {p2}, Lorg/fdroid/fdroid/data/DBHelper;->getDb(Landroid/content/Context;)Lorg/fdroid/database/FDroidDatabase;

    move-result-object p2

    invoke-interface {p2}, Lorg/fdroid/database/FDroidDatabase;->getAppPrefsDao()Lorg/fdroid/database/AppPrefsDao;

    move-result-object p2

    .line 51
    iget-object v0, p1, Lorg/fdroid/fdroid/data/App;->packageName:Ljava/lang/String;

    invoke-interface {p2, v0}, Lorg/fdroid/database/AppPrefsDao;->getAppPrefs(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 52
    new-instance v2, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppListItemController$1;

    invoke-direct {v2, p0, p1, p2, v0}, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppListItemController$1;-><init>(Lorg/fdroid/fdroid/views/updates/items/UpdateableAppListItemController;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/database/AppPrefsDao;Landroidx/lifecycle/LiveData;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method
