.class Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$4;
.super Landroid/content/BroadcastReceiver;
.source "SwapWorkflowActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;


# direct methods
.method constructor <init>(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$4;->this$0:Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;

    .line 952
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$4;->this$0:Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;

    .line 955
    invoke-static {p1}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->-$$Nest$msetUpFromWifi(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;)V

    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$4;->this$0:Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;

    .line 957
    invoke-static {p1}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->-$$Nest$fgetcontainer(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;)Landroid/view/ViewGroup;

    move-result-object p1

    sget v0, Lorg/fdroid/fdroid/R$id;->wifi_visible:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "wifiStateChangeStatus"

    const/4 v1, -0x1

    .line 961
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    goto :goto_0

    :cond_1
    sget p2, Lorg/fdroid/fdroid/R$string;->swap_not_visible_wifi:I

    .line 966
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    sget p2, Lorg/fdroid/fdroid/R$string;->swap_setting_up_wifi:I

    .line 963
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_3
    sget p2, Lorg/fdroid/fdroid/R$string;->swap_stopping_wifi:I

    .line 970
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$4;->this$0:Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;

    .line 976
    invoke-static {p1}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->-$$Nest$mupdateWifiBannerVisibility(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;)V

    return-void
.end method
