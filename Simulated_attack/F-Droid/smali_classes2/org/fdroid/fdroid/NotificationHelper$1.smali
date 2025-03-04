.class Lorg/fdroid/fdroid/NotificationHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "NotificationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/fdroid/NotificationHelper;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fdroid/fdroid/NotificationHelper;


# direct methods
.method constructor <init>(Lorg/fdroid/fdroid/NotificationHelper;)V
    .locals 0

    iput-object p1, p0, Lorg/fdroid/fdroid/NotificationHelper$1;->this$0:Lorg/fdroid/fdroid/NotificationHelper;

    .line 96
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    if-nez p2, :cond_0

    return-void

    .line 103
    :cond_0
    invoke-static {p1}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->getInstance(Landroid/content/Context;)Lorg/fdroid/fdroid/AppUpdateStatusManager;

    move-result-object p1

    .line 106
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "org.fdroid.fdroid.installer.appstatus.appchange.remove"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x3

    goto :goto_0

    :sswitch_1
    const-string v1, "org.fdroid.fdroid.installer.appstatus.appchange.change"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v5, v2

    goto :goto_0

    :sswitch_2
    const-string v1, "org.fdroid.fdroid.installer.appstatus.appchange.add"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move v5, v3

    goto :goto_0

    :sswitch_3
    const-string v1, "org.fdroid.fdroid.installer.appstatus.listchange"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    move v5, v4

    :goto_0
    const-string v0, "org.fdroid.fdroid.net.Downloader.extra.CANONICAL_URL"

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_2

    .line 136
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/fdroid/fdroid/NotificationHelper$1;->this$0:Lorg/fdroid/fdroid/NotificationHelper;

    .line 137
    invoke-static {p2}, Lorg/fdroid/fdroid/NotificationHelper;->-$$Nest$fgetnotificationManager(Lorg/fdroid/fdroid/NotificationHelper;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object p2

    invoke-virtual {p2, p1, v2}, Landroidx/core/app/NotificationManagerCompat;->cancel(Ljava/lang/String;I)V

    iget-object p2, p0, Lorg/fdroid/fdroid/NotificationHelper$1;->this$0:Lorg/fdroid/fdroid/NotificationHelper;

    .line 138
    invoke-static {p2}, Lorg/fdroid/fdroid/NotificationHelper;->-$$Nest$fgetnotificationManager(Lorg/fdroid/fdroid/NotificationHelper;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object p2

    invoke-virtual {p2, p1, v3}, Landroidx/core/app/NotificationManagerCompat;->cancel(Ljava/lang/String;I)V

    iget-object p1, p0, Lorg/fdroid/fdroid/NotificationHelper$1;->this$0:Lorg/fdroid/fdroid/NotificationHelper;

    .line 139
    invoke-static {p1}, Lorg/fdroid/fdroid/NotificationHelper;->-$$Nest$mupdateStatusLists(Lorg/fdroid/fdroid/NotificationHelper;)V

    iget-object p1, p0, Lorg/fdroid/fdroid/NotificationHelper$1;->this$0:Lorg/fdroid/fdroid/NotificationHelper;

    .line 140
    invoke-static {p1}, Lorg/fdroid/fdroid/NotificationHelper;->-$$Nest$mcreateSummaryNotifications(Lorg/fdroid/fdroid/NotificationHelper;)V

    goto :goto_2

    .line 125
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-virtual {p1, v0}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->get(Ljava/lang/String;)Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;

    move-result-object p1

    iget-object v0, p0, Lorg/fdroid/fdroid/NotificationHelper$1;->this$0:Lorg/fdroid/fdroid/NotificationHelper;

    .line 127
    invoke-static {v0}, Lorg/fdroid/fdroid/NotificationHelper;->-$$Nest$mupdateStatusLists(Lorg/fdroid/fdroid/NotificationHelper;)V

    if-eqz p1, :cond_5

    iget-object v0, p0, Lorg/fdroid/fdroid/NotificationHelper$1;->this$0:Lorg/fdroid/fdroid/NotificationHelper;

    .line 129
    invoke-static {v0, p1}, Lorg/fdroid/fdroid/NotificationHelper;->-$$Nest$mcreateNotification(Lorg/fdroid/fdroid/NotificationHelper;Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;)V

    :cond_5
    const-string p1, "isstatusupdate"

    .line 131
    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/fdroid/fdroid/NotificationHelper$1;->this$0:Lorg/fdroid/fdroid/NotificationHelper;

    .line 132
    invoke-static {p1}, Lorg/fdroid/fdroid/NotificationHelper;->-$$Nest$mcreateSummaryNotifications(Lorg/fdroid/fdroid/NotificationHelper;)V

    goto :goto_2

    :pswitch_2
    iget-object v1, p0, Lorg/fdroid/fdroid/NotificationHelper$1;->this$0:Lorg/fdroid/fdroid/NotificationHelper;

    .line 116
    invoke-static {v1}, Lorg/fdroid/fdroid/NotificationHelper;->-$$Nest$mupdateStatusLists(Lorg/fdroid/fdroid/NotificationHelper;)V

    iget-object v1, p0, Lorg/fdroid/fdroid/NotificationHelper$1;->this$0:Lorg/fdroid/fdroid/NotificationHelper;

    .line 117
    invoke-static {v1}, Lorg/fdroid/fdroid/NotificationHelper;->-$$Nest$mcreateSummaryNotifications(Lorg/fdroid/fdroid/NotificationHelper;)V

    .line 118
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 119
    invoke-virtual {p1, p2}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->get(Ljava/lang/String;)Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p2, p0, Lorg/fdroid/fdroid/NotificationHelper$1;->this$0:Lorg/fdroid/fdroid/NotificationHelper;

    .line 121
    invoke-static {p2, p1}, Lorg/fdroid/fdroid/NotificationHelper;->-$$Nest$mcreateNotification(Lorg/fdroid/fdroid/NotificationHelper;Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;)V

    goto :goto_2

    :pswitch_3
    iget-object p2, p0, Lorg/fdroid/fdroid/NotificationHelper$1;->this$0:Lorg/fdroid/fdroid/NotificationHelper;

    .line 108
    invoke-static {p2}, Lorg/fdroid/fdroid/NotificationHelper;->-$$Nest$fgetnotificationManager(Lorg/fdroid/fdroid/NotificationHelper;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/core/app/NotificationManagerCompat;->cancelAll()V

    iget-object p2, p0, Lorg/fdroid/fdroid/NotificationHelper$1;->this$0:Lorg/fdroid/fdroid/NotificationHelper;

    .line 109
    invoke-static {p2}, Lorg/fdroid/fdroid/NotificationHelper;->-$$Nest$mupdateStatusLists(Lorg/fdroid/fdroid/NotificationHelper;)V

    iget-object p2, p0, Lorg/fdroid/fdroid/NotificationHelper$1;->this$0:Lorg/fdroid/fdroid/NotificationHelper;

    .line 110
    invoke-static {p2}, Lorg/fdroid/fdroid/NotificationHelper;->-$$Nest$mcreateSummaryNotifications(Lorg/fdroid/fdroid/NotificationHelper;)V

    .line 111
    invoke-virtual {p1}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->getAll()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;

    iget-object v0, p0, Lorg/fdroid/fdroid/NotificationHelper$1;->this$0:Lorg/fdroid/fdroid/NotificationHelper;

    .line 112
    invoke-static {v0, p2}, Lorg/fdroid/fdroid/NotificationHelper;->-$$Nest$mcreateNotification(Lorg/fdroid/fdroid/NotificationHelper;Lorg/fdroid/fdroid/AppUpdateStatusManager$AppUpdateStatus;)V

    goto :goto_1

    :cond_6
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e531447 -> :sswitch_3
        0x2a604079 -> :sswitch_2
        0x5a911cd8 -> :sswitch_1
        0x740501ac -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
