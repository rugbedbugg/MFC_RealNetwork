.class Lorg/fdroid/fdroid/views/updates/items/UpdateableAppListItemController$1;
.super Ljava/lang/Object;
.source "UpdateableAppListItemController.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/fdroid/views/updates/items/UpdateableAppListItemController;->onDismissApp(Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fdroid/fdroid/views/updates/items/UpdateableAppListItemController;

.field final synthetic val$app:Lorg/fdroid/fdroid/data/App;

.field final synthetic val$appPrefsDao:Lorg/fdroid/database/AppPrefsDao;

.field final synthetic val$liveData:Landroidx/lifecycle/LiveData;


# direct methods
.method public static synthetic $r8$lambda$KlCBY4zoC_m2Qt8SwZDod5naam4(Lorg/fdroid/database/AppPrefs;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/database/AppPrefsDao;)Lorg/fdroid/database/AppPrefs;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppListItemController$1;->lambda$onChanged$0(Lorg/fdroid/database/AppPrefs;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/database/AppPrefsDao;)Lorg/fdroid/database/AppPrefs;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_CZ8Pe3CtOHeJHvTbmEwlNAIRpw(Lorg/fdroid/fdroid/views/updates/items/UpdateableAppListItemController$1;Lorg/fdroid/database/AppPrefsDao;Lorg/fdroid/database/AppPrefs;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppListItemController$1;->lambda$onChanged$1(Lorg/fdroid/database/AppPrefsDao;Lorg/fdroid/database/AppPrefs;)V

    return-void
.end method

.method constructor <init>(Lorg/fdroid/fdroid/views/updates/items/UpdateableAppListItemController;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/database/AppPrefsDao;Landroidx/lifecycle/LiveData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppListItemController$1;->this$0:Lorg/fdroid/fdroid/views/updates/items/UpdateableAppListItemController;

    iput-object p2, p0, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppListItemController$1;->val$app:Lorg/fdroid/fdroid/data/App;

    iput-object p3, p0, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppListItemController$1;->val$appPrefsDao:Lorg/fdroid/database/AppPrefsDao;

    iput-object p4, p0, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppListItemController$1;->val$liveData:Landroidx/lifecycle/LiveData;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic lambda$onChanged$0(Lorg/fdroid/database/AppPrefs;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/database/AppPrefsDao;)Lorg/fdroid/database/AppPrefs;
    .locals 2

    .line 56
    iget-wide v0, p1, Lorg/fdroid/fdroid/data/App;->autoInstallVersionCode:J

    invoke-virtual {p0, v0, v1}, Lorg/fdroid/database/AppPrefs;->toggleIgnoreVersionCodeUpdate(J)Lorg/fdroid/database/AppPrefs;

    move-result-object p0

    .line 57
    invoke-interface {p2, p0}, Lorg/fdroid/database/AppPrefsDao;->update(Lorg/fdroid/database/AppPrefs;)V

    return-object p0
.end method

.method private synthetic lambda$onChanged$1(Lorg/fdroid/database/AppPrefsDao;Lorg/fdroid/database/AppPrefs;)V
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppListItemController$1;->this$0:Lorg/fdroid/fdroid/views/updates/items/UpdateableAppListItemController;

    .line 60
    invoke-static {v0, p1, p2}, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppListItemController;->-$$Nest$mshowUndoSnackBar(Lorg/fdroid/fdroid/views/updates/items/UpdateableAppListItemController;Lorg/fdroid/database/AppPrefsDao;Lorg/fdroid/database/AppPrefs;)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppListItemController$1;->this$0:Lorg/fdroid/fdroid/views/updates/items/UpdateableAppListItemController;

    .line 61
    invoke-static {p1}, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppListItemController;->access$000(Lorg/fdroid/fdroid/views/updates/items/UpdateableAppListItemController;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-static {p1}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->getInstance(Landroid/content/Context;)Lorg/fdroid/fdroid/AppUpdateStatusManager;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->checkForUpdates()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 52
    check-cast p1, Lorg/fdroid/database/AppPrefs;

    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppListItemController$1;->onChanged(Lorg/fdroid/database/AppPrefs;)V

    return-void
.end method

.method public onChanged(Lorg/fdroid/database/AppPrefs;)V
    .locals 3

    iget-object v0, p0, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppListItemController$1;->val$app:Lorg/fdroid/fdroid/data/App;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppListItemController$1;->val$appPrefsDao:Lorg/fdroid/database/AppPrefsDao;

    .line 55
    new-instance v2, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppListItemController$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, v0, v1}, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppListItemController$1$$ExternalSyntheticLambda0;-><init>(Lorg/fdroid/database/AppPrefs;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/database/AppPrefsDao;)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppListItemController$1;->val$appPrefsDao:Lorg/fdroid/database/AppPrefsDao;

    new-instance v0, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppListItemController$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppListItemController$1$$ExternalSyntheticLambda1;-><init>(Lorg/fdroid/fdroid/views/updates/items/UpdateableAppListItemController$1;Lorg/fdroid/database/AppPrefsDao;)V

    invoke-static {v2, v0}, Lorg/fdroid/fdroid/Utils;->runOffUiThread(Landroidx/core/util/Supplier;Landroidx/core/util/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    iget-object p1, p0, Lorg/fdroid/fdroid/views/updates/items/UpdateableAppListItemController$1;->val$liveData:Landroidx/lifecycle/LiveData;

    .line 63
    invoke-virtual {p1, p0}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    return-void
.end method
