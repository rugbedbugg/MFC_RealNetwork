.class public Lorg/fdroid/fdroid/views/updates/items/AppStatusListItemController;
.super Lorg/fdroid/fdroid/views/apps/AppListItemController;
.source "AppStatusListItemController.java"


# direct methods
.method public static synthetic $r8$lambda$iv8xZsfBcyopfTcGbvy8VVaASRU(Lorg/fdroid/fdroid/AppUpdateStatusManager;Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/fdroid/fdroid/views/updates/items/AppStatusListItemController;->lambda$onDismissApp$0(Lorg/fdroid/fdroid/AppUpdateStatusManager;Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lorg/fdroid/fdroid/views/apps/AppListItemController;-><init>(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;)V

    return-void
.end method

.method private getStatusText(Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;)Ljava/lang/CharSequence;
    .locals 1

    if-eqz p1, :cond_2

    .line 41
    sget-object v0, Lorg/fdroid/fdroid/views/updates/items/AppStatusListItemController$1;->$SwitchMap$org$fdroid$fdroid$AppUpdateStatusManager$Status:[I

    iget-object p1, p1, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->status:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    sget v0, Lorg/fdroid/fdroid/R$string;->notification_content_single_installed:I

    .line 46
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p1, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    sget v0, Lorg/fdroid/fdroid/R$string;->app_list_download_ready:I

    .line 43
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private static synthetic lambda$onDismissApp$0(Lorg/fdroid/fdroid/AppUpdateStatusManager;Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;Landroid/view/View;)V
    .locals 2

    .line 79
    iget-object p3, p1, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->app:Lorg/fdroid/fdroid/data/App;

    iget-object v0, p1, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->apk:Lorg/fdroid/fdroid/data/Apk;

    iget-object v1, p1, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->status:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    iget-object p1, p1, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->intent:Landroid/app/PendingIntent;

    invoke-virtual {p0, p3, v0, v1, p1}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->addApk(Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;Landroid/app/PendingIntent;)V

    .line 81
    invoke-virtual {p2}, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->refreshItems()V

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

    .line 34
    invoke-super {p0, p1, p2}, Lorg/fdroid/fdroid/views/apps/AppListItemController;->getCurrentViewState(Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;)Lorg/fdroid/fdroid/views/apps/AppListItemState;

    move-result-object p1

    .line 35
    invoke-direct {p0, p2}, Lorg/fdroid/fdroid/views/updates/items/AppStatusListItemController;->getStatusText(Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/fdroid/fdroid/views/apps/AppListItemState;->setStatusText(Ljava/lang/CharSequence;)Lorg/fdroid/fdroid/views/apps/AppListItemState;

    move-result-object p1

    return-object p1
.end method

.method protected onDismissApp(Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;)V
    .locals 4

    .line 60
    invoke-virtual {p0}, Lorg/fdroid/fdroid/views/apps/AppListItemController;->getCurrentStatus()Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 62
    invoke-static {v0}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->getInstance(Landroid/content/Context;)Lorg/fdroid/fdroid/AppUpdateStatusManager;

    move-result-object v0

    .line 63
    invoke-virtual {p1}, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->getCanonicalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->get(Ljava/lang/String;)Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;

    move-result-object v1

    .line 64
    invoke-virtual {p1}, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->getCanonicalUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->removeApk(Ljava/lang/String;)V

    .line 66
    sget-object v2, Lorg/fdroid/fdroid/views/updates/items/AppStatusListItemController$1;->$SwitchMap$org$fdroid$fdroid$AppUpdateStatusManager$Status:[I

    iget-object p1, p1, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->status:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v2, p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p0}, Lorg/fdroid/fdroid/views/apps/AppListItemController;->cancelDownload()V

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v0, Lorg/fdroid/fdroid/R$string;->app_list__dismiss_downloading_app:I

    const/4 v1, -0x1

    .line 69
    invoke-static {p1, v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v2, Lorg/fdroid/fdroid/R$string;->app_list__dismiss_installing_app:I

    const/4 v3, 0x0

    .line 74
    invoke-static {p1, v2, v3}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    sget v2, Lorg/fdroid/fdroid/R$string;->undo:I

    new-instance v3, Lorg/fdroid/fdroid/views/updates/items/AppStatusListItemController$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, v1, p2}, Lorg/fdroid/fdroid/views/updates/items/AppStatusListItemController$$ExternalSyntheticLambda0;-><init>(Lorg/fdroid/fdroid/AppUpdateStatusManager;Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;)V

    .line 78
    invoke-virtual {p1, v2, v3}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    .line 82
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 88
    :cond_2
    :goto_0
    invoke-virtual {p2}, Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;->refreshItems()V

    return-void
.end method
