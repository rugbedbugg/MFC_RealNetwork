.class Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder$DownloadReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SwapSuccessView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadReceiver"
.end annotation


# instance fields
.field final synthetic this$2:Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;


# direct methods
.method private constructor <init>(Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;)V
    .locals 0

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder$DownloadReceiver;->this$2:Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;

    .line 159
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder$DownloadReceiver-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder$DownloadReceiver;-><init>(Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 162
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "org.fdroid.fdroid.net.Downloader.action.INTERRUPTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x4

    goto :goto_0

    :sswitch_1
    const-string v1, "org.fdroid.fdroid.net.Downloader.action.COMPLETE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_2
    const-string v1, "org.fdroid.fdroid.net.Downloader.action.PROGRESS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "org.fdroid.fdroid.net.Downloader.action.CONNECTION_FAILED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move v4, v3

    goto :goto_0

    :sswitch_4
    const-string v1, "org.fdroid.fdroid.net.Downloader.action.STARTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    move v4, v2

    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 203
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "intent action not handled!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder$DownloadReceiver;->this$2:Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;

    .line 183
    invoke-static {p1}, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->-$$Nest$fgetlocalBroadcastManager(Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder$DownloadReceiver;->this$2:Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;

    .line 184
    invoke-static {p1}, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->-$$Nest$mresetView(Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;)V

    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder$DownloadReceiver;->this$2:Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;

    .line 185
    iget-object p1, p1, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->statusInstalled:Landroid/widget/TextView;

    sget p2, Lorg/fdroid/fdroid/R$string;->installing:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder$DownloadReceiver;->this$2:Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;

    .line 186
    iget-object p1, p1, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->statusInstalled:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder$DownloadReceiver;->this$2:Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;

    .line 187
    iget-object p1, p1, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->btnInstall:Landroid/widget/Button;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    :pswitch_1
    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder$DownloadReceiver;->this$2:Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;

    .line 167
    iget-object p1, p1, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->progressView:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder$DownloadReceiver;->this$2:Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;

    .line 168
    invoke-static {p1}, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->-$$Nest$mshowProgress(Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;)V

    :cond_5
    const-string p1, "org.fdroid.fdroid.net.Downloader.extra.BYTES_READ"

    const-wide/16 v0, 0x0

    .line 170
    invoke-virtual {p2, p1, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    const-string p1, "org.fdroid.fdroid.net.Downloader.extra.TOTAL_BYTES"

    .line 171
    invoke-virtual {p2, p1, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p1

    cmp-long v0, p1, v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder$DownloadReceiver;->this$2:Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;

    .line 173
    iget-object v0, v0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->progressView:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    invoke-static {v4, v5, p1, p2}, Lorg/fdroid/fdroid/Utils;->getPercent(JJ)I

    move-result p1

    invoke-virtual {v0, p1, v3}, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->setProgressCompat(IZ)V

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder$DownloadReceiver;->this$2:Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;

    .line 175
    iget-object p1, p1, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->progressView:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder$DownloadReceiver;->this$2:Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;

    .line 176
    iget-object p1, p1, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->progressView:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->hide()V

    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder$DownloadReceiver;->this$2:Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;

    .line 177
    iget-object p1, p1, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->progressView:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    invoke-virtual {p1, v3}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setIndeterminate(Z)V

    :cond_7
    :goto_1
    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder$DownloadReceiver;->this$2:Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;

    .line 180
    iget-object p1, p1, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->progressView:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->show()V

    goto :goto_3

    :pswitch_2
    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder$DownloadReceiver;->this$2:Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;

    .line 191
    invoke-static {v0}, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->-$$Nest$fgetlocalBroadcastManager(Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string v0, "org.fdroid.fdroid.net.Downloader.extra.ERROR_MESSAGE"

    .line 192
    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/fdroid/fdroid/R$string;->download_error:I

    .line 195
    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 196
    invoke-static {p1, p2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_8
    sget p2, Lorg/fdroid/fdroid/R$string;->details_notinstalled:I

    .line 198
    invoke-static {p1, p2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_2
    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder$DownloadReceiver;->this$2:Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;

    .line 200
    invoke-static {p1}, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->-$$Nest$mresetView(Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;)V

    goto :goto_3

    :pswitch_3
    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder$DownloadReceiver;->this$2:Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;

    .line 164
    invoke-static {p1}, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->-$$Nest$mresetView(Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;)V

    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x2cef05b9 -> :sswitch_4
        -0x163cb4dc -> :sswitch_3
        0x4e64107 -> :sswitch_2
        0x1cd6b013 -> :sswitch_1
        0x6f618d08 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
