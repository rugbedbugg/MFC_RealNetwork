.class Lorg/fdroid/fdroid/views/updates/items/KnownVulnAppListItemController$1;
.super Landroid/content/BroadcastReceiver;
.source "KnownVulnAppListItemController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/fdroid/views/updates/items/KnownVulnAppListItemController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fdroid/fdroid/views/updates/items/KnownVulnAppListItemController;


# direct methods
.method constructor <init>(Lorg/fdroid/fdroid/views/updates/items/KnownVulnAppListItemController;)V
    .locals 0

    iput-object p1, p0, Lorg/fdroid/fdroid/views/updates/items/KnownVulnAppListItemController$1;->this$0:Lorg/fdroid/fdroid/views/updates/items/KnownVulnAppListItemController;

    .line 97
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 100
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "org.fdroid.fdroid.installer.Installer.action.UNINSTALL_INTERRUPTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_1
    const-string v1, "org.fdroid.fdroid.installer.Installer.action.INSTALL_COMPLETE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_2
    const-string v1, "org.fdroid.fdroid.installer.Installer.action.UNINSTALL_COMPLETE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_3
    const-string v1, "org.fdroid.fdroid.installer.Installer.action.INSTALL_USER_INTERACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_4
    const-string v1, "org.fdroid.fdroid.installer.Installer.action.UNINSTALL_USER_INTERACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_5
    const-string v1, "org.fdroid.fdroid.installer.Installer.action.INSTALL_INTERRUPTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p2, p0, Lorg/fdroid/fdroid/views/updates/items/KnownVulnAppListItemController$1;->this$0:Lorg/fdroid/fdroid/views/updates/items/KnownVulnAppListItemController;

    .line 103
    invoke-static {p2}, Lorg/fdroid/fdroid/views/updates/items/KnownVulnAppListItemController;->-$$Nest$mrefreshUpdatesList(Lorg/fdroid/fdroid/views/updates/items/KnownVulnAppListItemController;)V

    .line 104
    invoke-static {p1}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->getInstance(Landroid/content/Context;)Lorg/fdroid/fdroid/AppUpdateStatusManager;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->checkForUpdates()V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/updates/items/KnownVulnAppListItemController$1;->this$0:Lorg/fdroid/fdroid/views/updates/items/KnownVulnAppListItemController;

    .line 105
    invoke-static {p1}, Lorg/fdroid/fdroid/views/updates/items/KnownVulnAppListItemController;->-$$Nest$munregisterInstallReceiver(Lorg/fdroid/fdroid/views/updates/items/KnownVulnAppListItemController;)V

    goto :goto_1

    :pswitch_1
    const-string p1, "org.fdroid.fdroid.installer.Installer.extra.USER_INTERACTION_PI"

    .line 116
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/PendingIntent;

    .line 119
    :try_start_0
    invoke-virtual {p1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :pswitch_2
    iget-object p1, p0, Lorg/fdroid/fdroid/views/updates/items/KnownVulnAppListItemController$1;->this$0:Lorg/fdroid/fdroid/views/updates/items/KnownVulnAppListItemController;

    .line 110
    invoke-static {p1}, Lorg/fdroid/fdroid/views/updates/items/KnownVulnAppListItemController;->-$$Nest$munregisterInstallReceiver(Lorg/fdroid/fdroid/views/updates/items/KnownVulnAppListItemController;)V

    :catch_0
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x484af1a4 -> :sswitch_5
        -0x1ac0c563 -> :sswitch_4
        -0x15b36c7c -> :sswitch_3
        -0x33d60a8 -> :sswitch_2
        0x53aecf3f -> :sswitch_1
        0x705a9ba3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
