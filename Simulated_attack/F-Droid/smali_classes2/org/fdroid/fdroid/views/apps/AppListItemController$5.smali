.class Lorg/fdroid/fdroid/views/apps/AppListItemController$5;
.super Landroid/content/BroadcastReceiver;
.source "AppListItemController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/fdroid/views/apps/AppListItemController;->onActionButtonPressed(Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fdroid/fdroid/views/apps/AppListItemController;

.field final synthetic val$broadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;


# direct methods
.method constructor <init>(Lorg/fdroid/fdroid/views/apps/AppListItemController;Landroidx/localbroadcastmanager/content/LocalBroadcastManager;)V
    .locals 0

    iput-object p1, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController$5;->this$0:Lorg/fdroid/fdroid/views/apps/AppListItemController;

    iput-object p2, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController$5;->val$broadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 525
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 528
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "org.fdroid.fdroid.installer.Installer.action.INSTALL_USER_INTERACTION"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/fdroid/fdroid/views/apps/AppListItemController$5;->val$broadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 529
    invoke-virtual {p1, p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string p1, "org.fdroid.fdroid.installer.Installer.extra.USER_INTERACTION_PI"

    .line 531
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/PendingIntent;

    .line 533
    :try_start_0
    invoke-virtual {p1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "AppListItemController"

    const-string v0, "Error starting pending intent: "

    .line 535
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
