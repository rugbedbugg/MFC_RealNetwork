.class Lorg/fdroid/fdroid/views/AppDetailsActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "AppDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/fdroid/views/AppDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fdroid/fdroid/views/AppDetailsActivity;


# direct methods
.method constructor <init>(Lorg/fdroid/fdroid/views/AppDetailsActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity$3;->this$0:Lorg/fdroid/fdroid/views/AppDetailsActivity;

    .line 592
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 595
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "org.fdroid.fdroid.installer.Installer.action.UNINSTALL_INTERRUPTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_1
    const-string v1, "org.fdroid.fdroid.installer.Installer.action.UNINSTALL_COMPLETE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_2
    const-string v1, "org.fdroid.fdroid.installer.Installer.action.UNINSTALL_USER_INTERACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v4, v2

    goto :goto_0

    :sswitch_3
    const-string v1, "org.fdroid.fdroid.installer.Installer.action.UNINSTALL_STARTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move v4, v3

    :goto_0
    const-string v0, "AppDetailsActivity"

    const/4 v1, 0x0

    packed-switch v4, :pswitch_data_0

    .line 644
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "intent action not handled!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity$3;->this$0:Lorg/fdroid/fdroid/views/AppDetailsActivity;

    .line 611
    invoke-static {p1}, Lorg/fdroid/fdroid/views/AppDetailsActivity;->-$$Nest$fgetadapter(Lorg/fdroid/fdroid/views/AppDetailsActivity;)Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->clearProgress()V

    const-string p1, "org.fdroid.fdroid.net.installer.Installer.extra.ERROR_MESSAGE"

    .line 613
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 615
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity$3;->this$0:Lorg/fdroid/fdroid/views/AppDetailsActivity;

    invoke-virtual {v4}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_5

    .line 616
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uninstall aborted with errorMessage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v4, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity$3;->this$0:Lorg/fdroid/fdroid/views/AppDetailsActivity;

    invoke-direct {v0, v4}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 619
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity$3;->this$0:Lorg/fdroid/fdroid/views/AppDetailsActivity;

    sget v4, Lorg/fdroid/fdroid/R$string;->uninstall_error_notify_title:I

    new-array v2, v2, [Ljava/lang/Object;

    const-string v5, ""

    aput-object v5, v2, v3

    .line 621
    invoke-virtual {p2, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity$3;->this$0:Lorg/fdroid/fdroid/views/AppDetailsActivity;

    sget v5, Lorg/fdroid/fdroid/R$string;->uninstall_error_notify_title:I

    new-array v2, v2, [Ljava/lang/Object;

    .line 624
    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v3

    .line 623
    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 626
    :goto_1
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    const p1, 0x104000a

    .line 627
    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 628
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_5
    iget-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity$3;->this$0:Lorg/fdroid/fdroid/views/AppDetailsActivity;

    .line 630
    invoke-static {p1}, Lorg/fdroid/fdroid/views/AppDetailsActivity;->-$$Nest$munregisterUninstallReceiver(Lorg/fdroid/fdroid/views/AppDetailsActivity;)V

    goto :goto_2

    :pswitch_1
    iget-object p2, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity$3;->this$0:Lorg/fdroid/fdroid/views/AppDetailsActivity;

    .line 600
    invoke-static {p2}, Lorg/fdroid/fdroid/views/AppDetailsActivity;->-$$Nest$fgetadapter(Lorg/fdroid/fdroid/views/AppDetailsActivity;)Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->clearProgress()V

    iget-object p2, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity$3;->this$0:Lorg/fdroid/fdroid/views/AppDetailsActivity;

    .line 601
    invoke-static {p2}, Lorg/fdroid/fdroid/views/AppDetailsActivity;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsActivity;)Lorg/fdroid/fdroid/data/App;

    move-result-object p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity$3;->this$0:Lorg/fdroid/fdroid/views/AppDetailsActivity;

    .line 602
    invoke-static {p2}, Lorg/fdroid/fdroid/views/AppDetailsActivity;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsActivity;)Lorg/fdroid/fdroid/data/App;

    move-result-object p2

    iput-object v1, p2, Lorg/fdroid/fdroid/data/App;->installedSigner:Ljava/lang/String;

    iget-object p2, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity$3;->this$0:Lorg/fdroid/fdroid/views/AppDetailsActivity;

    .line 603
    invoke-static {p2}, Lorg/fdroid/fdroid/views/AppDetailsActivity;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsActivity;)Lorg/fdroid/fdroid/data/App;

    move-result-object p2

    const-wide/16 v2, 0x0

    iput-wide v2, p2, Lorg/fdroid/fdroid/data/App;->installedVersionCode:J

    iget-object p2, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity$3;->this$0:Lorg/fdroid/fdroid/views/AppDetailsActivity;

    .line 604
    invoke-static {p2}, Lorg/fdroid/fdroid/views/AppDetailsActivity;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsActivity;)Lorg/fdroid/fdroid/data/App;

    move-result-object p2

    iput-object v1, p2, Lorg/fdroid/fdroid/data/App;->installedVersionName:Ljava/lang/String;

    iget-object p2, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity$3;->this$0:Lorg/fdroid/fdroid/views/AppDetailsActivity;

    .line 605
    invoke-static {p2}, Lorg/fdroid/fdroid/views/AppDetailsActivity;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsActivity;)Lorg/fdroid/fdroid/data/App;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/fdroid/fdroid/views/AppDetailsActivity;->-$$Nest$monAppChanged(Lorg/fdroid/fdroid/views/AppDetailsActivity;Lorg/fdroid/fdroid/data/App;)V

    .line 607
    :cond_6
    invoke-static {p1}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->getInstance(Landroid/content/Context;)Lorg/fdroid/fdroid/AppUpdateStatusManager;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fdroid/fdroid/AppUpdateStatusManager;->checkForUpdates()V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity$3;->this$0:Lorg/fdroid/fdroid/views/AppDetailsActivity;

    .line 608
    invoke-static {p1}, Lorg/fdroid/fdroid/views/AppDetailsActivity;->-$$Nest$munregisterUninstallReceiver(Lorg/fdroid/fdroid/views/AppDetailsActivity;)V

    goto :goto_2

    :pswitch_2
    const-string p1, "org.fdroid.fdroid.installer.Installer.extra.USER_INTERACTION_PI"

    .line 634
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/PendingIntent;

    .line 637
    :try_start_0
    invoke-virtual {p1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string p2, "PI canceled"

    .line 639
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :pswitch_3
    iget-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity$3;->this$0:Lorg/fdroid/fdroid/views/AppDetailsActivity;

    .line 597
    invoke-static {p1}, Lorg/fdroid/fdroid/views/AppDetailsActivity;->-$$Nest$fgetadapter(Lorg/fdroid/fdroid/views/AppDetailsActivity;)Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    move-result-object p1

    sget p2, Lorg/fdroid/fdroid/R$string;->uninstalling:I

    invoke-virtual {p1, p2}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->setIndeterminateProgress(I)V

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7008719e -> :sswitch_3
        -0x1ac0c563 -> :sswitch_2
        -0x33d60a8 -> :sswitch_1
        0x705a9ba3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
