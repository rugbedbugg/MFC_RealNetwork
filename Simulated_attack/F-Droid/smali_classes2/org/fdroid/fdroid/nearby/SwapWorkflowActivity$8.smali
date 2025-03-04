.class Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$8;
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
.field private volatile bluetoothStatus:I

.field final synthetic this$0:Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;


# direct methods
.method constructor <init>(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$8;->this$0:Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;

    .line 1233
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 p1, 0x3

    iput p1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$8;->bluetoothStatus:I

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .line 1239
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothStatus"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "BluetoothStatusExtra"

    iget v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$8;->bluetoothStatus:I

    .line 1242
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$8;->bluetoothStatus:I

    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$8;->this$0:Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;

    .line 1243
    invoke-static {p1}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->-$$Nest$fgetcontainer(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;)Landroid/view/ViewGroup;

    move-result-object p1

    sget v0, Lorg/fdroid/fdroid/R$id;->switch_bluetooth:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/switchmaterial/SwitchMaterial;

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$8;->this$0:Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;

    .line 1244
    invoke-static {v0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->-$$Nest$fgetcontainer(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lorg/fdroid/fdroid/R$id;->bluetooth_visible:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$8;->this$0:Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;

    .line 1245
    invoke-static {v1}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->-$$Nest$fgetcontainer(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;)Landroid/view/ViewGroup;

    move-result-object v1

    sget v2, Lorg/fdroid/fdroid/R$id;->device_id_bluetooth:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$8;->this$0:Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;

    .line 1246
    invoke-static {v2}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->-$$Nest$fgetcontainer(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;)Landroid/view/ViewGroup;

    move-result-object v2

    sget v3, Lorg/fdroid/fdroid/R$id;->text_people_nearby:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$8;->this$0:Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;

    .line 1247
    invoke-static {v3}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->-$$Nest$fgetcontainer(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;)Landroid/view/ViewGroup;

    move-result-object v3

    sget v4, Lorg/fdroid/fdroid/R$id;->searching_people_nearby:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    if-eqz p1, :cond_a

    if-eqz v0, :cond_a

    if-eqz v1, :cond_a

    if-eqz v2, :cond_a

    if-nez v3, :cond_1

    goto/16 :goto_1

    :cond_1
    iget v4, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$8;->bluetoothStatus:I

    const/4 v5, 0x0

    if-eqz v4, :cond_9

    const/4 v6, 0x1

    if-eq v4, v6, :cond_8

    const/4 v7, 0x2

    const/16 v8, 0x8

    if-eq v4, v7, :cond_7

    const/4 v7, 0x3

    if-eq v4, v7, :cond_3

    const v2, 0xffff

    if-ne v4, v2, :cond_2

    .line 1302
    invoke-virtual {p1, v6}, Landroid/view/View;->setEnabled(Z)V

    const-string p1, "android.intent.extra.TEXT"

    .line 1303
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1304
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 1307
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1280
    :cond_3
    invoke-virtual {p1, v6}, Landroid/view/View;->setEnabled(Z)V

    sget p1, Lorg/fdroid/fdroid/R$string;->swap_not_visible_bluetooth:I

    .line 1281
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 1282
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1283
    invoke-static {}, Lorg/fdroid/fdroid/nearby/BonjourManager;->isAlive()Z

    move-result p1

    if-nez p1, :cond_4

    .line 1284
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1285
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$8;->this$0:Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;

    .line 1288
    invoke-static {p1}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->-$$Nest$fgetcontainer(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;)Landroid/view/ViewGroup;

    move-result-object p1

    sget p2, Lorg/fdroid/fdroid/R$id;->list_people_nearby:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    if-nez p1, :cond_5

    goto/16 :goto_1

    .line 1292
    :cond_5
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Landroid/widget/ArrayAdapter;

    .line 1293
    :goto_0
    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result p2

    if-ge v5, p2, :cond_a

    .line 1294
    invoke-virtual {p1, v5}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/fdroid/fdroid/nearby/peers/Peer;

    .line 1295
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/fdroid/fdroid/nearby/peers/BluetoothPeer;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing bluetooth peer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/fdroid/fdroid/nearby/peers/Peer;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SwapWorkflowActivity"

    invoke-static {v1, v0}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    invoke-virtual {p1, p2}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1270
    :cond_7
    invoke-virtual {p1, v5}, Landroid/view/View;->setEnabled(Z)V

    sget p1, Lorg/fdroid/fdroid/R$string;->swap_stopping:I

    .line 1271
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 1272
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1273
    invoke-static {}, Lorg/fdroid/fdroid/nearby/BonjourManager;->isAlive()Z

    move-result p1

    if-nez p1, :cond_a

    sget p1, Lorg/fdroid/fdroid/R$string;->swap_stopping:I

    .line 1274
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(I)V

    .line 1275
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1276
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1262
    :cond_8
    invoke-virtual {p1, v6}, Landroid/view/View;->setEnabled(Z)V

    sget p1, Lorg/fdroid/fdroid/R$string;->swap_visible_bluetooth:I

    .line 1263
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 1264
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    sget p1, Lorg/fdroid/fdroid/R$string;->swap_scanning_for_peers:I

    .line 1265
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(I)V

    .line 1266
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1267
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1254
    :cond_9
    invoke-virtual {p1, v5}, Landroid/view/View;->setEnabled(Z)V

    sget p1, Lorg/fdroid/fdroid/R$string;->swap_setting_up_bluetooth:I

    .line 1255
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 1256
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    sget p1, Lorg/fdroid/fdroid/R$string;->swap_scanning_for_peers:I

    .line 1257
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(I)V

    .line 1258
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1259
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    :goto_1
    return-void
.end method
