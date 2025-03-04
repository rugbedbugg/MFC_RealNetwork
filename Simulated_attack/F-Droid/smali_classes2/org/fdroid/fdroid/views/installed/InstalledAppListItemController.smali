.class public Lorg/fdroid/fdroid/views/installed/InstalledAppListItemController;
.super Lorg/fdroid/fdroid/views/apps/AppListItemController;
.source "InstalledAppListItemController.java"


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lorg/fdroid/fdroid/views/apps/AppListItemController;-><init>(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;)V

    return-void
.end method

.method private getIgnoreStatus(Lorg/fdroid/fdroid/data/App;)Ljava/lang/CharSequence;
    .locals 3

    .line 52
    iget-object v0, p1, Lorg/fdroid/fdroid/data/App;->prefs:Lorg/fdroid/database/AppPrefs;

    if-eqz v0, :cond_0

    .line 53
    iget-wide v1, p1, Lorg/fdroid/fdroid/data/App;->autoInstallVersionCode:J

    invoke-virtual {v0, v1, v2}, Lorg/fdroid/database/AppPrefs;->shouldIgnoreUpdate(J)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    sget v0, Lorg/fdroid/fdroid/R$string;->installed_app__updates_ignored:I

    .line 54
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getInstalledVersion(Lorg/fdroid/fdroid/data/App;)Ljava/lang/CharSequence;
    .locals 4

    .line 39
    iget-wide v0, p1, Lorg/fdroid/fdroid/data/App;->autoInstallVersionCode:J

    iget-wide v2, p1, Lorg/fdroid/fdroid/data/App;->installedVersionCode:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    sget v0, Lorg/fdroid/fdroid/R$string;->app_recommended_version_installed:I

    goto :goto_0

    :cond_0
    sget v0, Lorg/fdroid/fdroid/R$string;->app_version_x_installed:I

    :goto_0
    iget-object v1, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 43
    iget-object p1, p1, Lorg/fdroid/fdroid/data/App;->installedVersionName:Ljava/lang/String;

    aput-object p1, v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected getCurrentViewState(Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;)Lorg/fdroid/fdroid/views/apps/AppListItemState;
    .locals 1

    .line 30
    new-instance p2, Lorg/fdroid/fdroid/views/apps/AppListItemState;

    invoke-direct {p2, p1}, Lorg/fdroid/fdroid/views/apps/AppListItemState;-><init>(Lorg/fdroid/fdroid/data/App;)V

    .line 31
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/installed/InstalledAppListItemController;->getInstalledVersion(Lorg/fdroid/fdroid/data/App;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/fdroid/fdroid/views/apps/AppListItemState;->setStatusText(Ljava/lang/CharSequence;)Lorg/fdroid/fdroid/views/apps/AppListItemState;

    move-result-object p2

    .line 32
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/installed/InstalledAppListItemController;->getIgnoreStatus(Lorg/fdroid/fdroid/data/App;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/fdroid/fdroid/views/apps/AppListItemState;->setSecondaryStatusText(Ljava/lang/CharSequence;)Lorg/fdroid/fdroid/views/apps/AppListItemState;

    move-result-object p1

    return-object p1
.end method
