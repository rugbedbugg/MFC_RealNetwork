.class Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$5;
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
.field private volatile bonjourStatus:I

.field final synthetic this$0:Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;


# direct methods
.method constructor <init>(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$5;->this$0:Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;

    .line 1121
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 p1, 0x3

    iput p1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$5;->bonjourStatus:I

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 1127
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BonjourStatus"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "BonjourStatusExtra"

    iget v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$5;->bonjourStatus:I

    .line 1130
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$5;->bonjourStatus:I

    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$5;->this$0:Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;

    .line 1131
    invoke-static {p1}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->-$$Nest$fgetcontainer(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;)Landroid/view/ViewGroup;

    move-result-object p1

    sget v0, Lorg/fdroid/fdroid/R$id;->wifi_visible:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$5;->this$0:Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;

    .line 1132
    invoke-static {v0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->-$$Nest$fgetcontainer(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lorg/fdroid/fdroid/R$id;->text_people_nearby:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$5;->this$0:Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;

    .line 1133
    invoke-static {v1}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->-$$Nest$fgetcontainer(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;)Landroid/view/ViewGroup;

    move-result-object v1

    sget v2, Lorg/fdroid/fdroid/R$id;->searching_people_nearby:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    if-eqz p1, :cond_4

    if-eqz v0, :cond_4

    if-nez v1, :cond_1

    goto/16 :goto_1

    :cond_1
    iget v2, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$5;->bonjourStatus:I

    const v3, 0xffff

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eq v2, v3, :cond_3

    packed-switch v2, :pswitch_data_0

    .line 1191
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bad intent: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$5;->bonjourStatus:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SwapWorkflowActivity"

    .line 1192
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_0
    sget p2, Lorg/fdroid/fdroid/R$string;->swap_wifi_vpn_conflict:I

    .line 1151
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    :pswitch_1
    sget p2, Lorg/fdroid/fdroid/R$string;->swap_not_visible_wifi:I

    .line 1154
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    sget p1, Lorg/fdroid/fdroid/R$string;->swap_scanning_for_peers:I

    .line 1155
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 1156
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1157
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :pswitch_2
    iget-object p2, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$5;->this$0:Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;

    .line 1160
    invoke-static {p2}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->-$$Nest$fgetwifiApControl(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;)Lcc/mvdan/accesspoint/WifiApControl;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$5;->this$0:Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;

    invoke-static {p2}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->-$$Nest$fgetwifiApControl(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;)Lcc/mvdan/accesspoint/WifiApControl;

    move-result-object p2

    invoke-virtual {p2}, Lcc/mvdan/accesspoint/WifiApControl;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_2

    sget p2, Lorg/fdroid/fdroid/R$string;->swap_visible_hotspot:I

    .line 1161
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    sget p2, Lorg/fdroid/fdroid/R$string;->swap_visible_wifi:I

    .line 1163
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    sget p1, Lorg/fdroid/fdroid/R$string;->swap_scanning_for_peers:I

    .line 1165
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 1166
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1167
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :pswitch_3
    sget p2, Lorg/fdroid/fdroid/R$string;->swap_not_visible_wifi:I

    .line 1178
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 1179
    invoke-static {}, Lorg/fdroid/fdroid/nearby/BluetoothManager;->isAlive()Z

    move-result p1

    if-nez p1, :cond_4

    .line 1180
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1181
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :pswitch_4
    sget p2, Lorg/fdroid/fdroid/R$string;->swap_stopping_wifi:I

    .line 1170
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 1171
    invoke-static {}, Lorg/fdroid/fdroid/nearby/BluetoothManager;->isAlive()Z

    move-result p1

    if-nez p1, :cond_4

    sget p1, Lorg/fdroid/fdroid/R$string;->swap_stopping:I

    .line 1172
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 1173
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1174
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :pswitch_5
    sget p2, Lorg/fdroid/fdroid/R$string;->swap_not_visible_wifi:I

    .line 1145
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    sget p1, Lorg/fdroid/fdroid/R$string;->swap_scanning_for_peers:I

    .line 1146
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 1147
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1148
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :pswitch_6
    sget p2, Lorg/fdroid/fdroid/R$string;->swap_setting_up_wifi:I

    .line 1139
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    sget p1, Lorg/fdroid/fdroid/R$string;->swap_starting:I

    .line 1140
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 1141
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1142
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    sget v2, Lorg/fdroid/fdroid/R$string;->swap_not_visible_wifi:I

    .line 1185
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    const-string p1, "android.intent.extra.TEXT"

    .line 1186
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1187
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1188
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
