.class public Lorg/fdroid/fdroid/views/apps/StandardAppListItemController;
.super Lorg/fdroid/fdroid/views/apps/AppListItemController;
.source "StandardAppListItemController.java"


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lorg/fdroid/fdroid/views/apps/AppListItemController;-><init>(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;)V

    return-void
.end method

.method private getStatusText(Lorg/fdroid/fdroid/data/App;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3

    .line 40
    iget-boolean v0, p1, Lorg/fdroid/fdroid/data/App;->compatible:Z

    if-nez v0, :cond_0

    iget-object p1, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    sget p2, Lorg/fdroid/fdroid/R$string;->app_incompatible:I

    .line 41
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 42
    :cond_0
    iget-object v0, p1, Lorg/fdroid/fdroid/data/App;->antiFeatures:[Ljava/lang/String;

    if-eqz v0, :cond_1

    array-length v0, v0

    if-lez v0, :cond_1

    iget-object p1, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    sget p2, Lorg/fdroid/fdroid/R$string;->antifeatures:I

    .line 43
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 44
    :cond_1
    iget-object p1, p1, Lorg/fdroid/fdroid/data/App;->installedVersionName:Ljava/lang/String;

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    iget-object p1, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    sget v2, Lorg/fdroid/fdroid/R$string;->app_version_x_available:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    .line 46
    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object p2, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    sget v2, Lorg/fdroid/fdroid/R$string;->app_version_x_installed:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 48
    invoke-virtual {p2, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private shouldShowInstall(Lorg/fdroid/fdroid/data/App;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_1

    .line 56
    iget-object p2, p1, Lorg/fdroid/fdroid/data/App;->installedVersionName:Ljava/lang/String;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move p2, v1

    goto :goto_1

    :cond_1
    :goto_0
    move p2, v0

    .line 57
    :goto_1
    iget-boolean v2, p1, Lorg/fdroid/fdroid/data/App;->compatible:Z

    if-eqz v2, :cond_3

    iget-object p1, p1, Lorg/fdroid/fdroid/data/App;->antiFeatures:[Ljava/lang/String;

    if-eqz p1, :cond_2

    array-length p1, p1

    if-nez p1, :cond_3

    :cond_2
    move p1, v0

    goto :goto_2

    :cond_3
    move p1, v1

    :goto_2
    if-eqz p2, :cond_4

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    move v0, v1

    :goto_3
    return v0
.end method


# virtual methods
.method protected getCurrentViewState(Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;)Lorg/fdroid/fdroid/views/apps/AppListItemState;
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 31
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->getInstance(Landroid/content/Context;)Lorg/fdroid/fdroid/AppUpdateStatusManager;

    move-result-object v0

    .line 32
    iget-object v1, p1, Lorg/fdroid/fdroid/data/App;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->getInstallableVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-super {p0, p1, p2}, Lorg/fdroid/fdroid/views/apps/AppListItemController;->getCurrentViewState(Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;)Lorg/fdroid/fdroid/views/apps/AppListItemState;

    move-result-object p2

    .line 34
    invoke-direct {p0, p1, v0}, Lorg/fdroid/fdroid/views/apps/StandardAppListItemController;->getStatusText(Lorg/fdroid/fdroid/data/App;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/fdroid/fdroid/views/apps/AppListItemState;->setStatusText(Ljava/lang/CharSequence;)Lorg/fdroid/fdroid/views/apps/AppListItemState;

    move-result-object p2

    .line 35
    invoke-direct {p0, p1, v0}, Lorg/fdroid/fdroid/views/apps/StandardAppListItemController;->shouldShowInstall(Lorg/fdroid/fdroid/data/App;Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p2, p1}, Lorg/fdroid/fdroid/views/apps/AppListItemState;->setShowInstallButton(Z)Lorg/fdroid/fdroid/views/apps/AppListItemState;

    move-result-object p1

    return-object p1
.end method
