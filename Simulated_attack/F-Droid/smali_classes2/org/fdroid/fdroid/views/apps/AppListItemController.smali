.class public abstract Lorg/fdroid/fdroid/views/apps/AppListItemController;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "AppListItemController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AppListItemController"

.field private static prefs:Lorg/fdroid/fdroid/Preferences;


# instance fields
.field private final actionButton:Landroid/widget/Button;

.field protected final activity:Landroidx/appcompat/app/AppCompatActivity;

.field private final cancelButton:Landroid/widget/ImageButton;

.field private final checkBox:Landroid/widget/CheckBox;

.field private currentApk:Lorg/fdroid/fdroid/data/Apk;

.field private currentApp:Lorg/fdroid/fdroid/data/App;

.field private currentStatus:Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;

.field private disposable:Lio/reactivex/rxjava3/disposables/Disposable;

.field private final icon:Landroid/widget/ImageView;

.field private final installButton:Landroid/widget/ImageView;

.field private final name:Landroid/widget/TextView;

.field private final onAppClicked:Landroid/view/View$OnClickListener;

.field private final onCancelDownload:Landroid/view/View$OnClickListener;

.field private final onSecondaryButtonClicked:Landroid/view/View$OnClickListener;

.field private final onStatusChanged:Landroid/content/BroadcastReceiver;

.field private final progressBar:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

.field private final secondaryButton:Landroid/widget/Button;

.field private final secondaryStatus:Landroid/widget/TextView;

.field private final selectInstalledAppListener:Landroid/view/View$OnClickListener;

.field private final status:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$E2diyceuXnwn-3YopOdUpYoXADw(Lorg/fdroid/fdroid/views/apps/AppListItemController;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/apps/AppListItemController;->lambda$new$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GAvPcjtqONxVSEdh-haJscI73ts(Lorg/fdroid/fdroid/views/apps/AppListItemController;Landroidx/localbroadcastmanager/content/LocalBroadcastManager;Landroid/content/BroadcastReceiver;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/fdroid/fdroid/views/apps/AppListItemController;->lambda$onActionButtonPressed$3(Landroidx/localbroadcastmanager/content/LocalBroadcastManager;Landroid/content/BroadcastReceiver;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Gjpw5tKSZPOVIsOiM9VNb2HVeT4(Lorg/fdroid/fdroid/views/apps/AppListItemController;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/apps/AppListItemController;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$am_kMBnYziynS-fsu964vsLW4g8(Lorg/fdroid/fdroid/views/apps/AppListItemController;Lorg/fdroid/database/DbUpdateChecker;Lorg/fdroid/fdroid/data/App;Ljava/util/List;)Lorg/fdroid/fdroid/data/Apk;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/fdroid/fdroid/views/apps/AppListItemController;->lambda$onActionButtonPressed$2(Lorg/fdroid/database/DbUpdateChecker;Lorg/fdroid/fdroid/data/App;Ljava/util/List;)Lorg/fdroid/fdroid/data/Apk;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$kj5ZYXDPxzMmD6UwEqpLh5CcFGs(Lorg/fdroid/fdroid/views/apps/AppListItemController;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/apps/AppListItemController;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetcheckBox(Lorg/fdroid/fdroid/views/apps/AppListItemController;)Landroid/widget/CheckBox;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->checkBox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentApp(Lorg/fdroid/fdroid/views/apps/AppListItemController;)Lorg/fdroid/fdroid/data/App;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->currentApp:Lorg/fdroid/fdroid/data/App;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgeticon(Lorg/fdroid/fdroid/views/apps/AppListItemController;)Landroid/widget/ImageView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->icon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetinstallButton(Lorg/fdroid/fdroid/views/apps/AppListItemController;)Landroid/widget/ImageView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->installButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetprogressBar(Lorg/fdroid/fdroid/views/apps/AppListItemController;)Lcom/google/android/material/progressindicator/LinearProgressIndicator;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->progressBar:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsecondaryButton(Lorg/fdroid/fdroid/views/apps/AppListItemController;)Landroid/widget/Button;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->secondaryButton:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monSecondaryButtonPressed(Lorg/fdroid/fdroid/views/apps/AppListItemController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/fdroid/fdroid/views/apps/AppListItemController;->onSecondaryButtonPressed()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateAppStatus(Lorg/fdroid/fdroid/views/apps/AppListItemController;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/fdroid/fdroid/views/apps/AppListItemController;->updateAppStatus(Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetprefs()Lorg/fdroid/fdroid/Preferences;
    .locals 1

    .line 0
    sget-object v0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->prefs:Lorg/fdroid/fdroid/Preferences;

    return-object v0
.end method

.method public constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;)V
    .locals 6

    .line 127
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 453
    new-instance v0, Lorg/fdroid/fdroid/views/apps/AppListItemController$2;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/views/apps/AppListItemController$2;-><init>(Lorg/fdroid/fdroid/views/apps/AppListItemController;)V

    iput-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->onAppClicked:Landroid/view/View$OnClickListener;

    .line 473
    new-instance v1, Lorg/fdroid/fdroid/views/apps/AppListItemController$3;

    invoke-direct {v1, p0}, Lorg/fdroid/fdroid/views/apps/AppListItemController$3;-><init>(Lorg/fdroid/fdroid/views/apps/AppListItemController;)V

    iput-object v1, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->onStatusChanged:Landroid/content/BroadcastReceiver;

    .line 488
    new-instance v1, Lorg/fdroid/fdroid/views/apps/AppListItemController$4;

    invoke-direct {v1, p0}, Lorg/fdroid/fdroid/views/apps/AppListItemController$4;-><init>(Lorg/fdroid/fdroid/views/apps/AppListItemController;)V

    iput-object v1, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->onSecondaryButtonClicked:Landroid/view/View$OnClickListener;

    .line 581
    new-instance v2, Lorg/fdroid/fdroid/views/apps/AppListItemController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/fdroid/fdroid/views/apps/AppListItemController$$ExternalSyntheticLambda0;-><init>(Lorg/fdroid/fdroid/views/apps/AppListItemController;)V

    iput-object v2, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->onCancelDownload:Landroid/view/View$OnClickListener;

    .line 592
    new-instance v3, Lorg/fdroid/fdroid/views/apps/AppListItemController$6;

    invoke-direct {v3, p0}, Lorg/fdroid/fdroid/views/apps/AppListItemController$6;-><init>(Lorg/fdroid/fdroid/views/apps/AppListItemController;)V

    iput-object v3, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->selectInstalledAppListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    sget-object v3, Lorg/fdroid/fdroid/views/apps/AppListItemController;->prefs:Lorg/fdroid/fdroid/Preferences;

    if-nez v3, :cond_0

    .line 130
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object v3

    sput-object v3, Lorg/fdroid/fdroid/views/apps/AppListItemController;->prefs:Lorg/fdroid/fdroid/Preferences;

    :cond_0
    sget v3, Lorg/fdroid/fdroid/R$id;->install:I

    .line 133
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->installButton:Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    .line 135
    new-instance v4, Lorg/fdroid/fdroid/views/apps/AppListItemController$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lorg/fdroid/fdroid/views/apps/AppListItemController$$ExternalSyntheticLambda1;-><init>(Lorg/fdroid/fdroid/views/apps/AppListItemController;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    new-instance v4, Lorg/fdroid/fdroid/views/apps/AppListItemController$1;

    invoke-direct {v4, p0, p1}, Lorg/fdroid/fdroid/views/apps/AppListItemController$1;-><init>(Lorg/fdroid/fdroid/views/apps/AppListItemController;Landroidx/appcompat/app/AppCompatActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    :cond_1
    sget p1, Lorg/fdroid/fdroid/R$id;->icon:I

    .line 154
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->icon:Landroid/widget/ImageView;

    sget p1, Lorg/fdroid/fdroid/R$id;->app_name:I

    .line 155
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->name:Landroid/widget/TextView;

    sget p1, Lorg/fdroid/fdroid/R$id;->status:I

    .line 156
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->status:Landroid/widget/TextView;

    sget p1, Lorg/fdroid/fdroid/R$id;->secondary_status:I

    .line 157
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->secondaryStatus:Landroid/widget/TextView;

    sget p1, Lorg/fdroid/fdroid/R$id;->progress_bar:I

    .line 158
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    iput-object p1, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->progressBar:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    sget p1, Lorg/fdroid/fdroid/R$id;->cancel_button:I

    .line 159
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->cancelButton:Landroid/widget/ImageButton;

    sget v3, Lorg/fdroid/fdroid/R$id;->action_button:I

    .line 160
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->actionButton:Landroid/widget/Button;

    sget v4, Lorg/fdroid/fdroid/R$id;->secondary_button:I

    .line 161
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->secondaryButton:Landroid/widget/Button;

    sget v5, Lorg/fdroid/fdroid/R$id;->checkbox:I

    .line 162
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->checkBox:Landroid/widget/CheckBox;

    if-eqz v3, :cond_2

    const/4 v5, 0x1

    .line 165
    invoke-virtual {v3, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 166
    new-instance v5, Lorg/fdroid/fdroid/views/apps/AppListItemController$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0}, Lorg/fdroid/fdroid/views/apps/AppListItemController$$ExternalSyntheticLambda2;-><init>(Lorg/fdroid/fdroid/views/apps/AppListItemController;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    if-eqz v4, :cond_3

    .line 173
    invoke-virtual {v4, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    if-eqz p1, :cond_4

    .line 177
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    :cond_4
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private getViewStateDefault(Lorg/fdroid/fdroid/data/App;)Lorg/fdroid/fdroid/views/apps/AppListItemState;
    .locals 1

    .line 444
    new-instance v0, Lorg/fdroid/fdroid/views/apps/AppListItemState;

    invoke-direct {v0, p1}, Lorg/fdroid/fdroid/views/apps/AppListItemState;-><init>(Lorg/fdroid/fdroid/data/App;)V

    return-object v0
.end method

.method private getViewStateDownloading(Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;)Lorg/fdroid/fdroid/views/apps/AppListItemState;
    .locals 5

    iget-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    sget v1, Lorg/fdroid/fdroid/R$string;->app_list__name__downloading_in_progress:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 423
    iget-object v3, p1, Lorg/fdroid/fdroid/data/App;->name:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 426
    new-instance v1, Lorg/fdroid/fdroid/views/apps/AppListItemState;

    invoke-direct {v1, p1}, Lorg/fdroid/fdroid/views/apps/AppListItemState;-><init>(Lorg/fdroid/fdroid/data/App;)V

    .line 427
    invoke-virtual {v1, v0}, Lorg/fdroid/fdroid/views/apps/AppListItemState;->setMainText(Ljava/lang/CharSequence;)Lorg/fdroid/fdroid/views/apps/AppListItemState;

    move-result-object p1

    iget-wide v0, p2, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->progressCurrent:J

    .line 428
    invoke-static {v0, v1}, Lorg/fdroid/fdroid/Utils;->bytesToKb(J)I

    move-result v0

    iget-wide v1, p2, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->progressMax:J

    .line 429
    invoke-static {v1, v2}, Lorg/fdroid/fdroid/Utils;->bytesToKb(J)I

    move-result p2

    .line 428
    invoke-virtual {p1, v0, p2}, Lorg/fdroid/fdroid/views/apps/AppListItemState;->setProgress(II)Lorg/fdroid/fdroid/views/apps/AppListItemState;

    move-result-object p1

    return-object p1
.end method

.method private getViewStateInstalled(Lorg/fdroid/fdroid/data/App;)Lorg/fdroid/fdroid/views/apps/AppListItemState;
    .locals 5

    iget-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    sget v1, Lorg/fdroid/fdroid/R$string;->app_list__name__successfully_installed:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 407
    iget-object v3, p1, Lorg/fdroid/fdroid/data/App;->name:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 410
    new-instance v1, Lorg/fdroid/fdroid/views/apps/AppListItemState;

    invoke-direct {v1, p1}, Lorg/fdroid/fdroid/views/apps/AppListItemState;-><init>(Lorg/fdroid/fdroid/data/App;)V

    .line 411
    invoke-virtual {v1, v0}, Lorg/fdroid/fdroid/views/apps/AppListItemState;->setMainText(Ljava/lang/CharSequence;)Lorg/fdroid/fdroid/views/apps/AppListItemState;

    move-result-object v0

    iget-object v1, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    sget v2, Lorg/fdroid/fdroid/R$string;->notification_content_single_installed:I

    .line 412
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fdroid/fdroid/views/apps/AppListItemState;->setStatusText(Ljava/lang/CharSequence;)Lorg/fdroid/fdroid/views/apps/AppListItemState;

    move-result-object v0

    iget-object v1, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 414
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p1, Lorg/fdroid/fdroid/data/App;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 415
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not showing \'Open\' button for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/fdroid/fdroid/data/App;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " because no intent."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AppListItemController"

    invoke-static {v1, p1}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    sget v1, Lorg/fdroid/fdroid/R$string;->menu_launch:I

    .line 416
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/fdroid/fdroid/views/apps/AppListItemState;->showActionButton(Ljava/lang/CharSequence;)Lorg/fdroid/fdroid/views/apps/AppListItemState;

    :cond_0
    return-object v0
.end method

.method private getViewStateInstalling(Lorg/fdroid/fdroid/data/App;)Lorg/fdroid/fdroid/views/apps/AppListItemState;
    .locals 6

    iget-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    sget v1, Lorg/fdroid/fdroid/R$string;->app_list__name__downloading_in_progress:I

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 397
    iget-object v4, p1, Lorg/fdroid/fdroid/data/App;->name:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 400
    new-instance v1, Lorg/fdroid/fdroid/views/apps/AppListItemState;

    invoke-direct {v1, p1}, Lorg/fdroid/fdroid/views/apps/AppListItemState;-><init>(Lorg/fdroid/fdroid/data/App;)V

    .line 401
    invoke-virtual {v1, v0}, Lorg/fdroid/fdroid/views/apps/AppListItemState;->setMainText(Ljava/lang/CharSequence;)Lorg/fdroid/fdroid/views/apps/AppListItemState;

    move-result-object v0

    const/4 v1, 0x0

    .line 402
    invoke-virtual {v0, v1}, Lorg/fdroid/fdroid/views/apps/AppListItemState;->showActionButton(Ljava/lang/CharSequence;)Lorg/fdroid/fdroid/views/apps/AppListItemState;

    move-result-object v0

    iget-object v1, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    sget v3, Lorg/fdroid/fdroid/R$string;->notification_content_single_installing:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object p1, p1, Lorg/fdroid/fdroid/data/App;->name:Ljava/lang/String;

    aput-object p1, v2, v5

    .line 403
    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/fdroid/fdroid/views/apps/AppListItemState;->setStatusText(Ljava/lang/CharSequence;)Lorg/fdroid/fdroid/views/apps/AppListItemState;

    move-result-object p1

    return-object p1
.end method

.method private getViewStateReadyToInstall(Lorg/fdroid/fdroid/data/App;)Lorg/fdroid/fdroid/views/apps/AppListItemState;
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 433
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/fdroid/fdroid/data/App;->isInstalled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lorg/fdroid/fdroid/R$string;->app__install_downloaded_update:I

    goto :goto_0

    :cond_0
    sget v0, Lorg/fdroid/fdroid/R$string;->menu_install:I

    .line 437
    :goto_0
    new-instance v1, Lorg/fdroid/fdroid/views/apps/AppListItemState;

    invoke-direct {v1, p1}, Lorg/fdroid/fdroid/views/apps/AppListItemState;-><init>(Lorg/fdroid/fdroid/data/App;)V

    iget-object p1, p1, Lorg/fdroid/fdroid/data/App;->name:Ljava/lang/String;

    .line 438
    invoke-virtual {v1, p1}, Lorg/fdroid/fdroid/views/apps/AppListItemState;->setMainText(Ljava/lang/CharSequence;)Lorg/fdroid/fdroid/views/apps/AppListItemState;

    move-result-object p1

    iget-object v1, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 439
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/fdroid/fdroid/views/apps/AppListItemState;->showActionButton(Ljava/lang/CharSequence;)Lorg/fdroid/fdroid/views/apps/AppListItemState;

    move-result-object p1

    iget-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    sget v1, Lorg/fdroid/fdroid/R$string;->app_list_download_ready:I

    .line 440
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/fdroid/fdroid/views/apps/AppListItemState;->setStatusText(Ljava/lang/CharSequence;)Lorg/fdroid/fdroid/views/apps/AppListItemState;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->currentApp:Lorg/fdroid/fdroid/data/App;

    iget-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->currentApk:Lorg/fdroid/fdroid/data/Apk;

    .line 135
    invoke-virtual {p0, p1, v0}, Lorg/fdroid/fdroid/views/apps/AppListItemController;->onActionButtonPressed(Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;)V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->actionButton:Landroid/widget/Button;

    const/4 v0, 0x0

    .line 167
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->currentApp:Lorg/fdroid/fdroid/data/App;

    iget-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->currentApk:Lorg/fdroid/fdroid/data/Apk;

    .line 168
    invoke-virtual {p0, p1, v0}, Lorg/fdroid/fdroid/views/apps/AppListItemController;->onActionButtonPressed(Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;)V

    return-void
.end method

.method private synthetic lambda$new$4(Landroid/view/View;)V
    .locals 0

    .line 582
    invoke-virtual {p0}, Lorg/fdroid/fdroid/views/apps/AppListItemController;->cancelDownload()V

    return-void
.end method

.method private synthetic lambda$onActionButtonPressed$2(Lorg/fdroid/database/DbUpdateChecker;Lorg/fdroid/fdroid/data/App;Ljava/util/List;)Lorg/fdroid/fdroid/data/Apk;
    .locals 2

    .line 555
    iget-object v0, p2, Lorg/fdroid/fdroid/data/App;->packageName:Ljava/lang/String;

    iget-object p2, p2, Lorg/fdroid/fdroid/data/App;->preferredSigner:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p2, p3, v1}, Lorg/fdroid/database/DbUpdateChecker;->getSuggestedVersion(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)Lorg/fdroid/database/AppVersion;

    move-result-object p1

    if-nez p1, :cond_0

    .line 557
    new-instance p1, Lorg/fdroid/fdroid/data/Apk;

    invoke-direct {p1}, Lorg/fdroid/fdroid/data/Apk;-><init>()V

    return-object p1

    :cond_0
    iget-object p2, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 558
    invoke-static {p2}, Lorg/fdroid/fdroid/FDroidApp;->getRepoManager(Landroid/content/Context;)Lorg/fdroid/index/RepoManager;

    move-result-object p2

    invoke-virtual {p1}, Lorg/fdroid/database/AppVersion;->getRepoId()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lorg/fdroid/index/RepoManager;->getRepository(J)Lorg/fdroid/database/Repository;

    move-result-object p2

    if-nez p2, :cond_1

    .line 559
    new-instance p1, Lorg/fdroid/fdroid/data/Apk;

    invoke-direct {p1}, Lorg/fdroid/fdroid/data/Apk;-><init>()V

    return-object p1

    .line 560
    :cond_1
    new-instance p3, Lorg/fdroid/fdroid/data/Apk;

    invoke-direct {p3, p1, p2}, Lorg/fdroid/fdroid/data/Apk;-><init>(Lorg/fdroid/database/AppVersion;Lorg/fdroid/database/Repository;)V

    return-object p3
.end method

.method private synthetic lambda$onActionButtonPressed$3(Landroidx/localbroadcastmanager/content/LocalBroadcastManager;Landroid/content/BroadcastReceiver;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;)V
    .locals 1

    .line 562
    iget-object v0, p4, Lorg/fdroid/fdroid/data/Apk;->packageName:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object p1, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    sget p2, Lorg/fdroid/fdroid/R$string;->app_list_no_suggested_version:I

    const/4 p3, 0x0

    .line 563
    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 565
    :cond_0
    invoke-virtual {p4}, Lorg/fdroid/fdroid/data/Apk;->getCanonicalUrl()Ljava/lang/String;

    move-result-object v0

    .line 566
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 568
    invoke-static {v0}, Lorg/fdroid/fdroid/installer/Installer;->getInstallInteractionIntentFilter(Landroid/net/Uri;)Landroid/content/IntentFilter;

    move-result-object v0

    .line 567
    invoke-virtual {p1, p2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 569
    invoke-static {p1, p3, p4}, Lorg/fdroid/fdroid/installer/InstallManagerService;->queue(Landroid/content/Context;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;)V

    :goto_0
    return-void
.end method

.method private onSecondaryButtonPressed()V
    .locals 0

    .line 0
    return-void
.end method

.method private updateAppStatus(Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;)V
    .locals 7

    iput-object p2, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->currentStatus:Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;

    .line 268
    invoke-virtual {p0, p1, p2}, Lorg/fdroid/fdroid/views/apps/AppListItemController;->getCurrentViewState(Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;)Lorg/fdroid/fdroid/views/apps/AppListItemState;

    move-result-object p1

    iget-object p2, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->name:Landroid/widget/TextView;

    .line 270
    invoke-virtual {p1}, Lorg/fdroid/fdroid/views/apps/AppListItemState;->getMainText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->actionButton:Landroid/widget/Button;

    const/4 v0, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 273
    invoke-virtual {p1}, Lorg/fdroid/fdroid/views/apps/AppListItemState;->shouldShowActionButton()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->actionButton:Landroid/widget/Button;

    .line 274
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->actionButton:Landroid/widget/Button;

    .line 275
    invoke-virtual {p2, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object p2, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->actionButton:Landroid/widget/Button;

    .line 276
    invoke-virtual {p1}, Lorg/fdroid/fdroid/views/apps/AppListItemState;->getActionButtonText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->actionButton:Landroid/widget/Button;

    .line 278
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    iget-object p2, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->secondaryButton:Landroid/widget/Button;

    if-eqz p2, :cond_3

    .line 283
    invoke-virtual {p1}, Lorg/fdroid/fdroid/views/apps/AppListItemState;->shouldShowSecondaryButton()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->secondaryButton:Landroid/widget/Button;

    .line 284
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->secondaryButton:Landroid/widget/Button;

    .line 285
    invoke-virtual {p2, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object p2, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->secondaryButton:Landroid/widget/Button;

    .line 286
    invoke-virtual {p1}, Lorg/fdroid/fdroid/views/apps/AppListItemState;->getSecondaryButtonText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->secondaryButton:Landroid/widget/Button;

    .line 288
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_1
    iget-object p2, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->progressBar:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    if-eqz p2, :cond_7

    .line 293
    invoke-virtual {p1}, Lorg/fdroid/fdroid/views/apps/AppListItemState;->showProgress()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 294
    invoke-virtual {p1}, Lorg/fdroid/fdroid/views/apps/AppListItemState;->isProgressIndeterminate()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->progressBar:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 295
    invoke-virtual {p2}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->progressBar:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 296
    invoke-virtual {p2}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->hide()V

    iget-object p2, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->progressBar:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 297
    invoke-virtual {p2, v0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setIndeterminate(Z)V

    goto :goto_2

    :cond_4
    iget-object p2, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->progressBar:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 301
    invoke-virtual {p1}, Lorg/fdroid/fdroid/views/apps/AppListItemState;->getProgressCurrent()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p1}, Lorg/fdroid/fdroid/views/apps/AppListItemState;->getProgressMax()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v3, v4, v5, v6}, Lorg/fdroid/fdroid/Utils;->getPercent(JJ)I

    move-result v3

    .line 300
    invoke-virtual {p2, v3, v0}, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->setProgressCompat(IZ)V

    :cond_5
    :goto_2
    iget-object p2, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->progressBar:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 305
    invoke-virtual {p2}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->show()V

    goto :goto_3

    :cond_6
    iget-object p2, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->progressBar:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 307
    invoke-virtual {p2}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->hide()V

    :cond_7
    :goto_3
    iget-object p2, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->cancelButton:Landroid/widget/ImageButton;

    if-eqz p2, :cond_9

    .line 312
    invoke-virtual {p1}, Lorg/fdroid/fdroid/views/apps/AppListItemState;->showProgress()Z

    move-result p2

    if-eqz p2, :cond_8

    iget-object p2, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->cancelButton:Landroid/widget/ImageButton;

    .line 313
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_8
    iget-object p2, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->cancelButton:Landroid/widget/ImageButton;

    .line 315
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    :goto_4
    iget-object p2, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->installButton:Landroid/widget/ImageView;

    if-eqz p2, :cond_e

    .line 320
    invoke-virtual {p1}, Lorg/fdroid/fdroid/views/apps/AppListItemState;->shouldShowActionButton()Z

    move-result p2

    if-eqz p2, :cond_a

    iget-object p2, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->installButton:Landroid/widget/ImageView;

    .line 321
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    .line 322
    :cond_a
    invoke-virtual {p1}, Lorg/fdroid/fdroid/views/apps/AppListItemState;->showProgress()Z

    move-result p2

    if-eqz p2, :cond_c

    iget-object p2, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->installButton:Landroid/widget/ImageView;

    .line 323
    invoke-virtual {p2, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object p2, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->installButton:Landroid/widget/ImageView;

    .line 324
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p2, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->installButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    sget v3, Lorg/fdroid/fdroid/R$drawable;->ic_download_progress:I

    .line 325
    invoke-static {v0, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 326
    invoke-virtual {p1}, Lorg/fdroid/fdroid/views/apps/AppListItemState;->getProgressMax()I

    move-result p2

    if-gtz p2, :cond_b

    move p2, v2

    goto :goto_5

    .line 327
    :cond_b
    invoke-virtual {p1}, Lorg/fdroid/fdroid/views/apps/AppListItemState;->getProgressCurrent()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1}, Lorg/fdroid/fdroid/views/apps/AppListItemState;->getProgressMax()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    const/high16 v0, 0x43b40000    # 360.0f

    mul-float/2addr p2, v0

    float-to-int p2, p2

    :goto_5
    iget-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->installButton:Landroid/widget/ImageView;

    .line 328
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_6

    .line 329
    :cond_c
    invoke-virtual {p1}, Lorg/fdroid/fdroid/views/apps/AppListItemState;->shouldShowInstall()Z

    move-result p2

    if-eqz p2, :cond_d

    iget-object p2, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->installButton:Landroid/widget/ImageView;

    .line 330
    invoke-virtual {p2, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object p2, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->installButton:Landroid/widget/ImageView;

    .line 331
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p2, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->installButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    sget v3, Lorg/fdroid/fdroid/R$drawable;->ic_download:I

    .line 332
    invoke-static {v0, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    :cond_d
    iget-object p2, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->installButton:Landroid/widget/ImageView;

    .line 334
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_e
    :goto_6
    iget-object p2, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->status:Landroid/widget/TextView;

    if-eqz p2, :cond_10

    .line 339
    invoke-virtual {p1}, Lorg/fdroid/fdroid/views/apps/AppListItemState;->getStatusText()Ljava/lang/CharSequence;

    move-result-object p2

    if-nez p2, :cond_f

    iget-object p2, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->status:Landroid/widget/TextView;

    .line 341
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    :cond_f
    iget-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->status:Landroid/widget/TextView;

    .line 343
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->status:Landroid/widget/TextView;

    .line 344
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_10
    :goto_7
    iget-object p2, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->secondaryStatus:Landroid/widget/TextView;

    if-eqz p2, :cond_12

    .line 349
    invoke-virtual {p1}, Lorg/fdroid/fdroid/views/apps/AppListItemState;->getSecondaryStatusText()Ljava/lang/CharSequence;

    move-result-object p2

    if-nez p2, :cond_11

    iget-object p2, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->secondaryStatus:Landroid/widget/TextView;

    .line 351
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8

    :cond_11
    iget-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->secondaryStatus:Landroid/widget/TextView;

    .line 353
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->secondaryStatus:Landroid/widget/TextView;

    .line 354
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_12
    :goto_8
    iget-object p2, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->checkBox:Landroid/widget/CheckBox;

    if-eqz p2, :cond_14

    .line 359
    invoke-virtual {p1}, Lorg/fdroid/fdroid/views/apps/AppListItemState;->shouldShowCheckBox()Z

    move-result p2

    if-eqz p2, :cond_13

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->selectInstalledAppListener:Landroid/view/View$OnClickListener;

    .line 360
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->checkBox:Landroid/widget/CheckBox;

    .line 361
    invoke-virtual {p1}, Lorg/fdroid/fdroid/views/apps/AppListItemState;->isCheckBoxChecked()Z

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->checkBox:Landroid/widget/CheckBox;

    .line 362
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->status:Landroid/widget/TextView;

    .line 363
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->secondaryStatus:Landroid/widget/TextView;

    .line 364
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9

    :cond_13
    iget-object p1, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->checkBox:Landroid/widget/CheckBox;

    .line 366
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_14
    :goto_9
    return-void
.end method


# virtual methods
.method public bindModel(Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;)V
    .locals 1

    iput-object p1, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->currentApp:Lorg/fdroid/fdroid/data/App;

    iput-object p2, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->currentApk:Lorg/fdroid/fdroid/data/Apk;

    iget-object p2, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->actionButton:Landroid/widget/Button;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 192
    invoke-virtual {p2, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    iget-object p2, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->icon:Landroid/widget/ImageView;

    iget-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 194
    invoke-static {p1, p2, v0}, Lorg/fdroid/fdroid/Utils;->setIconFromRepoOrPM(Lorg/fdroid/fdroid/data/App;Landroid/widget/ImageView;Landroid/content/Context;)V

    if-nez p3, :cond_1

    iget-object p2, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 201
    invoke-static {p2}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->getInstance(Landroid/content/Context;)Lorg/fdroid/fdroid/AppUpdateStatusManager;

    move-result-object p2

    iget-object v0, p1, Lorg/fdroid/fdroid/data/App;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->getByPackageName(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 202
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object p3, p2

    check-cast p3, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;

    .line 206
    :cond_1
    invoke-direct {p0, p1, p3}, Lorg/fdroid/fdroid/views/apps/AppListItemController;->updateAppStatus(Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 209
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iget-object p2, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->onStatusChanged:Landroid/content/BroadcastReceiver;

    .line 210
    invoke-virtual {p1, p2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 212
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string p3, "org.fdroid.fdroid.installer.appstatus.appchange.add"

    .line 213
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "org.fdroid.fdroid.installer.appstatus.appchange.remove"

    .line 214
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "org.fdroid.fdroid.installer.appstatus.appchange.change"

    .line 215
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p3, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->onStatusChanged:Landroid/content/BroadcastReceiver;

    .line 216
    invoke-virtual {p1, p3, p2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public canDismiss()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method protected final cancelDownload()V
    .locals 3

    iget-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->currentStatus:Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;

    if-eqz v0, :cond_1

    .line 585
    iget-object v1, v0, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->status:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    sget-object v2, Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;->Downloading:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 589
    invoke-virtual {v0}, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->getCanonicalUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/fdroid/fdroid/installer/InstallManagerService;->cancel(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected final getCurrentStatus()Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->currentStatus:Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;

    return-object v0
.end method

.method protected getCurrentViewState(Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;)Lorg/fdroid/fdroid/views/apps/AppListItemState;
    .locals 2

    if-nez p2, :cond_0

    .line 374
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/apps/AppListItemController;->getViewStateDefault(Lorg/fdroid/fdroid/data/App;)Lorg/fdroid/fdroid/views/apps/AppListItemState;

    move-result-object p1

    return-object p1

    .line 376
    :cond_0
    sget-object v0, Lorg/fdroid/fdroid/views/apps/AppListItemController$7;->$SwitchMap$org$fdroid$fdroid$AppUpdateStatusManager$Status:[I

    iget-object v1, p2, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->status:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 p2, 0x4

    if-eq v0, p2, :cond_2

    const/4 p2, 0x5

    if-eq v0, p2, :cond_1

    .line 391
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/apps/AppListItemController;->getViewStateDefault(Lorg/fdroid/fdroid/data/App;)Lorg/fdroid/fdroid/views/apps/AppListItemState;

    move-result-object p1

    return-object p1

    .line 388
    :cond_1
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/apps/AppListItemController;->getViewStateInstalled(Lorg/fdroid/fdroid/data/App;)Lorg/fdroid/fdroid/views/apps/AppListItemState;

    move-result-object p1

    return-object p1

    .line 385
    :cond_2
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/apps/AppListItemController;->getViewStateInstalling(Lorg/fdroid/fdroid/data/App;)Lorg/fdroid/fdroid/views/apps/AppListItemState;

    move-result-object p1

    return-object p1

    .line 382
    :cond_3
    invoke-direct {p0, p1, p2}, Lorg/fdroid/fdroid/views/apps/AppListItemController;->getViewStateDownloading(Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;)Lorg/fdroid/fdroid/views/apps/AppListItemState;

    move-result-object p1

    return-object p1

    .line 378
    :cond_4
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/views/apps/AppListItemController;->getViewStateReadyToInstall(Lorg/fdroid/fdroid/data/App;)Lorg/fdroid/fdroid/views/apps/AppListItemState;

    move-result-object p1

    return-object p1
.end method

.method hideInstallButton()V
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->installButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 220
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected onActionButtonPressed(Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->currentStatus:Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;

    const-string v0, "AppListItemController"

    if-eqz p2, :cond_2

    .line 506
    iget-object p2, p2, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->status:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    sget-object v1, Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;->Installed:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    if-ne p2, v1, :cond_2

    iget-object p2, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 507
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iget-object p1, p1, Lorg/fdroid/fdroid/data/App;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    :try_start_0
    iget-object p2, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 510
    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Error starting app launch intent: "

    .line 512
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    sget p2, Lorg/fdroid/fdroid/R$string;->app_error_open:I

    const/4 v0, 0x0

    .line 514
    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    iget-object p1, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 520
    invoke-static {p1}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->getInstance(Landroid/content/Context;)Lorg/fdroid/fdroid/AppUpdateStatusManager;

    move-result-object p1

    iget-object p2, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->currentStatus:Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;

    invoke-virtual {p2}, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->getCanonicalUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->removeApk(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    iget-object p2, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 524
    invoke-static {p2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p2

    .line 525
    new-instance v1, Lorg/fdroid/fdroid/views/apps/AppListItemController$5;

    invoke-direct {v1, p0, p2}, Lorg/fdroid/fdroid/views/apps/AppListItemController$5;-><init>(Lorg/fdroid/fdroid/views/apps/AppListItemController;Landroidx/localbroadcastmanager/content/LocalBroadcastManager;)V

    iget-object v2, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->currentStatus:Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;

    if-eqz v2, :cond_3

    .line 540
    iget-object v3, v2, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->status:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    sget-object v4, Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;->ReadyToInstall:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    if-ne v3, v4, :cond_3

    .line 541
    iget-object p1, v2, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->apk:Lorg/fdroid/fdroid/data/Apk;

    invoke-virtual {p1}, Lorg/fdroid/fdroid/data/Apk;->getCanonicalUrl()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 542
    invoke-static {v2, p1}, Lorg/fdroid/fdroid/installer/ApkCache;->getApkDownloadPath(Landroid/content/Context;Ljava/lang/String;)Lorg/fdroid/fdroid/data/SanitizedFile;

    move-result-object v2

    .line 543
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "skip download, we have already downloaded "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->currentStatus:Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;

    iget-object v4, v4, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->apk:Lorg/fdroid/fdroid/data/Apk;

    invoke-virtual {v4}, Lorg/fdroid/fdroid/data/Apk;->getCanonicalUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 546
    invoke-static {p1}, Lorg/fdroid/fdroid/installer/Installer;->getInstallInteractionIntentFilter(Landroid/net/Uri;)Landroid/content/IntentFilter;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iget-object p2, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->currentStatus:Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;

    .line 547
    iget-object v1, v0, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->app:Lorg/fdroid/fdroid/data/App;

    iget-object v0, v0, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->apk:Lorg/fdroid/fdroid/data/Apk;

    invoke-static {p2, v1, v0}, Lorg/fdroid/fdroid/installer/InstallerFactory;->create(Landroid/content/Context;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;)Lorg/fdroid/fdroid/installer/Installer;

    move-result-object p2

    .line 548
    invoke-virtual {v2}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lorg/fdroid/fdroid/installer/Installer;->installPackage(Landroid/net/Uri;Landroid/net/Uri;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 550
    invoke-static {v0}, Lorg/fdroid/fdroid/data/DBHelper;->getDb(Landroid/content/Context;)Lorg/fdroid/database/FDroidDatabase;

    move-result-object v0

    .line 551
    new-instance v2, Lorg/fdroid/database/DbUpdateChecker;

    iget-object v3, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lorg/fdroid/database/DbUpdateChecker;-><init>(Lorg/fdroid/database/FDroidDatabase;Landroid/content/pm/PackageManager;)V

    .line 552
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/fdroid/Preferences;->getBackendReleaseChannels()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->disposable:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v3, :cond_4

    .line 553
    invoke-interface {v3}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    .line 554
    :cond_4
    new-instance v3, Lorg/fdroid/fdroid/views/apps/AppListItemController$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v2, p1, v0}, Lorg/fdroid/fdroid/views/apps/AppListItemController$$ExternalSyntheticLambda3;-><init>(Lorg/fdroid/fdroid/views/apps/AppListItemController;Lorg/fdroid/database/DbUpdateChecker;Lorg/fdroid/fdroid/data/App;Ljava/util/List;)V

    new-instance v0, Lorg/fdroid/fdroid/views/apps/AppListItemController$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p2, v1, p1}, Lorg/fdroid/fdroid/views/apps/AppListItemController$$ExternalSyntheticLambda4;-><init>(Lorg/fdroid/fdroid/views/apps/AppListItemController;Landroidx/localbroadcastmanager/content/LocalBroadcastManager;Landroid/content/BroadcastReceiver;Lorg/fdroid/fdroid/data/App;)V

    invoke-static {v3, v0}, Lorg/fdroid/fdroid/Utils;->runOffUiThread(Landroidx/core/util/Supplier;Landroidx/core/util/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->disposable:Lio/reactivex/rxjava3/disposables/Disposable;

    :goto_1
    return-void
.end method

.method public final onDismiss(Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;)V
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->currentApp:Lorg/fdroid/fdroid/data/App;

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {p0}, Lorg/fdroid/fdroid/views/apps/AppListItemController;->canDismiss()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController;->currentApp:Lorg/fdroid/fdroid/data/App;

    .line 237
    invoke-virtual {p0, v0, p1}, Lorg/fdroid/fdroid/views/apps/AppListItemController;->onDismissApp(Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;)V

    :cond_0
    return-void
.end method

.method protected onDismissApp(Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/views/updates/UpdatesAdapter;)V
    .locals 0

    .line 0
    return-void
.end method
