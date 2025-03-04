.class Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder$1;
.super Landroid/content/BroadcastReceiver;
.source "SwapSuccessView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->setApp(Lorg/fdroid/fdroid/data/App;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;)V
    .locals 0

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder$1;->this$2:Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;

    .line 227
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 230
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "org.fdroid.fdroid.installer.Installer.action.INSTALL_COMPLETE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "org.fdroid.fdroid.installer.Installer.action.INSTALL_STARTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "org.fdroid.fdroid.installer.Installer.action.INSTALL_USER_INTERACTION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v3, v1

    goto :goto_0

    :sswitch_3
    const-string v0, "org.fdroid.fdroid.installer.Installer.action.INSTALL_INTERRUPTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v3, v2

    :goto_0
    const/16 p1, 0x8

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object p2, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder$1;->this$2:Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;

    .line 251
    invoke-static {p2}, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->-$$Nest$fgetlocalBroadcastManager(Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object p2, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder$1;->this$2:Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;

    .line 252
    iget-object p2, p2, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->statusInstalled:Landroid/widget/TextView;

    sget v0, Lorg/fdroid/fdroid/R$string;->app_installed:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p2, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder$1;->this$2:Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;

    .line 253
    iget-object p2, p2, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->statusInstalled:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder$1;->this$2:Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;

    .line 254
    iget-object p2, p2, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->btnInstall:Landroid/widget/Button;

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder$1;->this$2:Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;

    .line 255
    iget-object p1, p1, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->progressView:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->hide()V

    goto/16 :goto_1

    :pswitch_1
    iget-object p2, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder$1;->this$2:Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;

    .line 232
    iget-object p2, p2, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->statusInstalled:Landroid/widget/TextView;

    sget v0, Lorg/fdroid/fdroid/R$string;->installing:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p2, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder$1;->this$2:Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;

    .line 233
    iget-object p2, p2, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->statusInstalled:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder$1;->this$2:Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;

    .line 234
    iget-object p2, p2, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->btnInstall:Landroid/widget/Button;

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder$1;->this$2:Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;

    .line 235
    iget-object p1, p1, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->progressView:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder$1;->this$2:Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;

    .line 236
    iget-object p1, p1, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->progressView:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->hide()V

    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder$1;->this$2:Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;

    .line 237
    iget-object p1, p1, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->progressView:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    invoke-virtual {p1, v1}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setIndeterminate(Z)V

    :cond_4
    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder$1;->this$2:Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;

    .line 239
    iget-object p1, p1, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->progressView:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->show()V

    goto :goto_1

    :pswitch_2
    const-string p1, "org.fdroid.fdroid.installer.Installer.extra.USER_INTERACTION_PI"

    .line 243
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/PendingIntent;

    .line 245
    :try_start_0
    invoke-virtual {p1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "SwapSuccessView"

    const-string v0, "PI canceled"

    .line 247
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder$1;->this$2:Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;

    .line 258
    invoke-static {v0}, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->-$$Nest$fgetlocalBroadcastManager(Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder$1;->this$2:Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;

    .line 259
    iget-object v0, v0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->statusInstalled:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder$1;->this$2:Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;

    .line 260
    iget-object p1, p1, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->btnInstall:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder$1;->this$2:Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;

    .line 261
    iget-object p1, p1, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->progressView:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->hide()V

    const-string p1, "org.fdroid.fdroid.net.installer.Installer.extra.ERROR_MESSAGE"

    .line 262
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p2, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder$1;->this$2:Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;

    .line 264
    iget-object p2, p2, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->this$1:Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter;

    iget-object p2, p2, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter;->this$0:Lorg/fdroid/fdroid/nearby/SwapSuccessView;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_5
    :goto_1
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
