.class Lorg/fdroid/fdroid/views/AppDetailsActivity$2;
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

    iput-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity$2;->this$0:Lorg/fdroid/fdroid/views/AppDetailsActivity;

    .line 519
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 522
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
    const-string v1, "org.fdroid.fdroid.installer.Installer.action.INSTALL_COMPLETE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_1
    const-string v1, "org.fdroid.fdroid.installer.Installer.action.INSTALL_STARTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_2
    const-string v1, "org.fdroid.fdroid.installer.Installer.action.INSTALL_USER_INTERACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v4, v2

    goto :goto_0

    :sswitch_3
    const-string v1, "org.fdroid.fdroid.installer.Installer.action.INSTALL_INTERRUPTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move v4, v3

    :goto_0
    const-string v0, "AppDetailsActivity"

    packed-switch v4, :pswitch_data_0

    .line 587
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "intent action not handled!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity$2;->this$0:Lorg/fdroid/fdroid/views/AppDetailsActivity;

    .line 527
    invoke-static {p1}, Lorg/fdroid/fdroid/views/AppDetailsActivity;->-$$Nest$fgetadapter(Lorg/fdroid/fdroid/views/AppDetailsActivity;)Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->clearProgress()V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity$2;->this$0:Lorg/fdroid/fdroid/views/AppDetailsActivity;

    .line 528
    invoke-static {p1}, Lorg/fdroid/fdroid/views/AppDetailsActivity;->-$$Nest$munregisterInstallReceiver(Lorg/fdroid/fdroid/views/AppDetailsActivity;)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity$2;->this$0:Lorg/fdroid/fdroid/views/AppDetailsActivity;

    .line 542
    invoke-static {p1}, Lorg/fdroid/fdroid/views/AppDetailsActivity;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsActivity;)Lorg/fdroid/fdroid/data/App;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity$2;->this$0:Lorg/fdroid/fdroid/views/AppDetailsActivity;

    .line 543
    invoke-static {p1}, Lorg/fdroid/fdroid/views/AppDetailsActivity;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsActivity;)Lorg/fdroid/fdroid/data/App;

    move-result-object p2

    iget-object p2, p2, Lorg/fdroid/fdroid/data/App;->packageName:Ljava/lang/String;

    invoke-static {p1, p2}, Lorg/fdroid/fdroid/views/AppDetailsActivity;->-$$Nest$mgetPackageInfo(Lorg/fdroid/fdroid/views/AppDetailsActivity;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p2, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity$2;->this$0:Lorg/fdroid/fdroid/views/AppDetailsActivity;

    .line 544
    invoke-static {p2}, Lorg/fdroid/fdroid/views/AppDetailsActivity;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsActivity;)Lorg/fdroid/fdroid/data/App;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/fdroid/fdroid/data/App;->setInstalled(Landroid/content/pm/PackageInfo;)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity$2;->this$0:Lorg/fdroid/fdroid/views/AppDetailsActivity;

    .line 545
    invoke-static {p1}, Lorg/fdroid/fdroid/views/AppDetailsActivity;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsActivity;)Lorg/fdroid/fdroid/data/App;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/fdroid/fdroid/views/AppDetailsActivity;->-$$Nest$monAppChanged(Lorg/fdroid/fdroid/views/AppDetailsActivity;Lorg/fdroid/fdroid/data/App;)V

    goto/16 :goto_2

    :pswitch_1
    iget-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity$2;->this$0:Lorg/fdroid/fdroid/views/AppDetailsActivity;

    .line 524
    invoke-static {p1}, Lorg/fdroid/fdroid/views/AppDetailsActivity;->-$$Nest$fgetadapter(Lorg/fdroid/fdroid/views/AppDetailsActivity;)Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    move-result-object p1

    sget p2, Lorg/fdroid/fdroid/R$string;->installing:I

    invoke-virtual {p1, p2}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->setIndeterminateProgress(I)V

    goto/16 :goto_2

    :pswitch_2
    const-string p1, "org.fdroid.fdroid.installer.Installer.extra.APK"

    .line 568
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lorg/fdroid/fdroid/data/Apk;

    .line 569
    iget-object v1, p1, Lorg/fdroid/fdroid/data/Apk;->packageName:Ljava/lang/String;

    invoke-static {v1}, Lorg/fdroid/fdroid/views/AppDetailsActivity;->isAppVisible(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 570
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignore request for user interaction from installer, because "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/fdroid/fdroid/data/Apk;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is no longer showing."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 575
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Automatically showing package manager for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/fdroid/fdroid/data/Apk;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " as it is being viewed by the user."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "org.fdroid.fdroid.installer.Installer.extra.USER_INTERACTION_PI"

    .line 577
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/PendingIntent;

    .line 580
    :try_start_0
    invoke-virtual {p1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception p1

    const-string p2, "PI canceled"

    .line 582
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    :pswitch_3
    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity$2;->this$0:Lorg/fdroid/fdroid/views/AppDetailsActivity;

    .line 549
    invoke-static {v1}, Lorg/fdroid/fdroid/views/AppDetailsActivity;->-$$Nest$fgetadapter(Lorg/fdroid/fdroid/views/AppDetailsActivity;)Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fdroid/fdroid/views/AppDetailsRecyclerViewAdapter;->clearProgress()V

    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity$2;->this$0:Lorg/fdroid/fdroid/views/AppDetailsActivity;

    .line 550
    invoke-static {v1}, Lorg/fdroid/fdroid/views/AppDetailsActivity;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsActivity;)Lorg/fdroid/fdroid/data/App;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity$2;->this$0:Lorg/fdroid/fdroid/views/AppDetailsActivity;

    invoke-static {v1}, Lorg/fdroid/fdroid/views/AppDetailsActivity;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsActivity;)Lorg/fdroid/fdroid/data/App;

    move-result-object v4

    invoke-static {v1, v4}, Lorg/fdroid/fdroid/views/AppDetailsActivity;->-$$Nest$monAppChanged(Lorg/fdroid/fdroid/views/AppDetailsActivity;Lorg/fdroid/fdroid/data/App;)V

    :cond_5
    const-string v1, "org.fdroid.fdroid.net.installer.Installer.extra.ERROR_MESSAGE"

    .line 553
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 555
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity$2;->this$0:Lorg/fdroid/fdroid/views/AppDetailsActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_7

    .line 556
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "install aborted with errorMessage: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity$2;->this$0:Lorg/fdroid/fdroid/views/AppDetailsActivity;

    sget v1, Lorg/fdroid/fdroid/R$string;->install_error_notify_title:I

    new-array v2, v2, [Ljava/lang/Object;

    .line 559
    invoke-static {v0}, Lorg/fdroid/fdroid/views/AppDetailsActivity;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsActivity;)Lorg/fdroid/fdroid/data/App;

    move-result-object v4

    if-nez v4, :cond_6

    const-string v4, ""

    goto :goto_1

    :cond_6
    iget-object v4, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity$2;->this$0:Lorg/fdroid/fdroid/views/AppDetailsActivity;

    invoke-static {v4}, Lorg/fdroid/fdroid/views/AppDetailsActivity;->-$$Nest$fgetapp(Lorg/fdroid/fdroid/views/AppDetailsActivity;)Lorg/fdroid/fdroid/data/App;

    move-result-object v4

    iget-object v4, v4, Lorg/fdroid/fdroid/data/App;->name:Ljava/lang/String;

    :goto_1
    aput-object v4, v2, v3

    .line 558
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 560
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lorg/fdroid/fdroid/installer/ErrorDialogActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "title"

    .line 561
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "message"

    .line 562
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object p2, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity$2;->this$0:Lorg/fdroid/fdroid/views/AppDetailsActivity;

    .line 563
    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_7
    iget-object p1, p0, Lorg/fdroid/fdroid/views/AppDetailsActivity$2;->this$0:Lorg/fdroid/fdroid/views/AppDetailsActivity;

    .line 565
    invoke-static {p1}, Lorg/fdroid/fdroid/views/AppDetailsActivity;->-$$Nest$munregisterInstallReceiver(Lorg/fdroid/fdroid/views/AppDetailsActivity;)V

    :cond_8
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x484af1a4 -> :sswitch_3
        -0x15b36c7c -> :sswitch_2
        0x662459b -> :sswitch_1
        0x53aecf3f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
