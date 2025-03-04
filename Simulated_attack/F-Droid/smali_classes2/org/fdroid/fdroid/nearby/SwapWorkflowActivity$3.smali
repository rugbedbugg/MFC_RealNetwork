.class Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$3;
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

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$3;->this$0:Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;

    .line 872
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$3;->this$0:Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;

    .line 875
    invoke-static {p1}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->-$$Nest$fgetcontainer(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;)Landroid/view/ViewGroup;

    move-result-object p1

    sget v0, Lorg/fdroid/fdroid/R$id;->switch_bluetooth:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/switchmaterial/SwitchMaterial;

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$3;->this$0:Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;

    .line 876
    invoke-static {v0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->-$$Nest$fgetcontainer(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lorg/fdroid/fdroid/R$id;->bluetooth_visible:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz p1, :cond_4

    if-eqz v0, :cond_4

    .line 878
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BluetoothStatus"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "android.bluetooth.adapter.extra.SCAN_MODE"

    const/4 v2, -0x1

    .line 881
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/16 v1, 0x14

    const/4 v2, 0x1

    if-eq p2, v1, :cond_3

    const/16 v1, 0x15

    if-eq p2, v1, :cond_2

    const/16 v1, 0x17

    if-eq p2, v1, :cond_1

    goto :goto_0

    :cond_1
    sget p2, Lorg/fdroid/fdroid/R$string;->swap_visible_bluetooth:I

    .line 888
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 889
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    sget p2, Lorg/fdroid/fdroid/R$string;->swap_not_visible_bluetooth:I

    .line 893
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 894
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    sget p2, Lorg/fdroid/fdroid/R$string;->disabled:I

    .line 883
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 884
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    :cond_4
    :goto_0
    return-void
.end method
