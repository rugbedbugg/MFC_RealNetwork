.class public Lorg/fdroid/fdroid/NotificationBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NotificationBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 18
    invoke-static {p1}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->getInstance(Landroid/content/Context;)Lorg/fdroid/fdroid/AppUpdateStatusManager;

    move-result-object p1

    const-string v0, "org.fdroid.fdroid.net.Downloader.extra.CANONICAL_URL"

    .line 19
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "org.fdroid.fdroid.installer.notifications.update.cleared"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v1, "org.fdroid.fdroid.installer.notifications.allupdates.cleared"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v1, "org.fdroid.fdroid.installer.notifications.installed.cleared"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_3
    const-string v1, "org.fdroid.fdroid.installer.notifications.allinstalled.cleared"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 30
    :pswitch_0
    invoke-virtual {p1, v0}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->get(Ljava/lang/String;)Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 31
    iget-object p2, p2, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;->status:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    sget-object v1, Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;->InstallError:Lorg/fdroid/fdroid/AppUpdateStatusManager$Status;

    if-ne p2, v1, :cond_4

    .line 32
    invoke-virtual {p1, v0}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->removeApk(Ljava/lang/String;)V

    goto :goto_1

    .line 22
    :pswitch_1
    invoke-virtual {p1}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->clearAllUpdates()V

    goto :goto_1

    .line 36
    :pswitch_2
    invoke-virtual {p1, v0}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->removeApk(Ljava/lang/String;)V

    goto :goto_1

    .line 25
    :pswitch_3
    invoke-virtual {p1}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->clearAllInstalled()V

    :cond_4
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x11ac0693 -> :sswitch_3
        -0x81f6ebe -> :sswitch_2
        0x32ffdbfd -> :sswitch_1
        0x49cfdfbd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
