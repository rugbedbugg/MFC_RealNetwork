.class public Lorg/fdroid/fdroid/nearby/StartSwapView;
.super Lorg/fdroid/fdroid/nearby/SwapView;
.source "StartSwapView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fdroid/fdroid/nearby/StartSwapView$PeopleNearbyAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StartSwapView"


# instance fields
.field private final bluetooth:Landroid/bluetooth/BluetoothAdapter;

.field private bluetoothSwitch:Lcom/google/android/material/switchmaterial/SwitchMaterial;

.field private final onBluetoothSwitchToggled:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private final onWifiNetworkChanged:Landroid/content/BroadcastReceiver;

.field private peopleNearbyAdapter:Lorg/fdroid/fdroid/nearby/StartSwapView$PeopleNearbyAdapter;

.field private peopleNearbyList:Landroid/widget/ListView;

.field private peopleNearbyProgress:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

.field private peopleNearbyText:Landroid/widget/TextView;

.field private textBluetoothVisible:Landroid/widget/TextView;

.field private viewBluetoothId:Landroid/widget/TextView;

.field private viewWifiId:Landroid/widget/TextView;

.field private viewWifiNetwork:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$LEPJf6PNHDxtKPVqzHhf3q7xPJc(Lorg/fdroid/fdroid/nearby/StartSwapView;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/fdroid/fdroid/nearby/StartSwapView;->lambda$uiInitPeers$1(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$LzM8r2PPofe_8NZLHpcpuGsthfg(Lorg/fdroid/fdroid/nearby/StartSwapView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/nearby/StartSwapView;->lambda$uiInitButtons$0(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetbluetooth(Lorg/fdroid/fdroid/nearby/StartSwapView;)Landroid/bluetooth/BluetoothAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/fdroid/fdroid/nearby/StartSwapView;->bluetooth:Landroid/bluetooth/BluetoothAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbluetoothSwitch(Lorg/fdroid/fdroid/nearby/StartSwapView;)Lcom/google/android/material/switchmaterial/SwitchMaterial;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/fdroid/fdroid/nearby/StartSwapView;->bluetoothSwitch:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettextBluetoothVisible(Lorg/fdroid/fdroid/nearby/StartSwapView;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/fdroid/fdroid/nearby/StartSwapView;->textBluetoothVisible:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetviewBluetoothId(Lorg/fdroid/fdroid/nearby/StartSwapView;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/fdroid/fdroid/nearby/StartSwapView;->viewBluetoothId:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$muiUpdateWifiNetwork(Lorg/fdroid/fdroid/nearby/StartSwapView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/fdroid/fdroid/nearby/StartSwapView;->uiUpdateWifiNetwork()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/nearby/SwapView;-><init>(Landroid/content/Context;)V

    .line 83
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/StartSwapView;->bluetooth:Landroid/bluetooth/BluetoothAdapter;

    .line 124
    new-instance p1, Lorg/fdroid/fdroid/nearby/StartSwapView$1;

    invoke-direct {p1, p0}, Lorg/fdroid/fdroid/nearby/StartSwapView$1;-><init>(Lorg/fdroid/fdroid/nearby/StartSwapView;)V

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/StartSwapView;->onWifiNetworkChanged:Landroid/content/BroadcastReceiver;

    .line 186
    new-instance p1, Lorg/fdroid/fdroid/nearby/StartSwapView$2;

    invoke-direct {p1, p0}, Lorg/fdroid/fdroid/nearby/StartSwapView$2;-><init>(Lorg/fdroid/fdroid/nearby/StartSwapView;)V

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/StartSwapView;->onBluetoothSwitchToggled:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lorg/fdroid/fdroid/nearby/SwapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/StartSwapView;->bluetooth:Landroid/bluetooth/BluetoothAdapter;

    .line 124
    new-instance p1, Lorg/fdroid/fdroid/nearby/StartSwapView$1;

    invoke-direct {p1, p0}, Lorg/fdroid/fdroid/nearby/StartSwapView$1;-><init>(Lorg/fdroid/fdroid/nearby/StartSwapView;)V

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/StartSwapView;->onWifiNetworkChanged:Landroid/content/BroadcastReceiver;

    .line 186
    new-instance p1, Lorg/fdroid/fdroid/nearby/StartSwapView$2;

    invoke-direct {p1, p0}, Lorg/fdroid/fdroid/nearby/StartSwapView$2;-><init>(Lorg/fdroid/fdroid/nearby/StartSwapView;)V

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/StartSwapView;->onBluetoothSwitchToggled:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lorg/fdroid/fdroid/nearby/SwapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/StartSwapView;->bluetooth:Landroid/bluetooth/BluetoothAdapter;

    .line 124
    new-instance p1, Lorg/fdroid/fdroid/nearby/StartSwapView$1;

    invoke-direct {p1, p0}, Lorg/fdroid/fdroid/nearby/StartSwapView$1;-><init>(Lorg/fdroid/fdroid/nearby/StartSwapView;)V

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/StartSwapView;->onWifiNetworkChanged:Landroid/content/BroadcastReceiver;

    .line 186
    new-instance p1, Lorg/fdroid/fdroid/nearby/StartSwapView$2;

    invoke-direct {p1, p0}, Lorg/fdroid/fdroid/nearby/StartSwapView$2;-><init>(Lorg/fdroid/fdroid/nearby/StartSwapView;)V

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/StartSwapView;->onBluetoothSwitchToggled:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/fdroid/fdroid/nearby/SwapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 83
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/StartSwapView;->bluetooth:Landroid/bluetooth/BluetoothAdapter;

    .line 124
    new-instance p1, Lorg/fdroid/fdroid/nearby/StartSwapView$1;

    invoke-direct {p1, p0}, Lorg/fdroid/fdroid/nearby/StartSwapView$1;-><init>(Lorg/fdroid/fdroid/nearby/StartSwapView;)V

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/StartSwapView;->onWifiNetworkChanged:Landroid/content/BroadcastReceiver;

    .line 186
    new-instance p1, Lorg/fdroid/fdroid/nearby/StartSwapView$2;

    invoke-direct {p1, p0}, Lorg/fdroid/fdroid/nearby/StartSwapView$2;-><init>(Lorg/fdroid/fdroid/nearby/StartSwapView;)V

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/StartSwapView;->onBluetoothSwitchToggled:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method private synthetic lambda$uiInitButtons$0(Landroid/view/View;)V
    .locals 0

    .line 134
    invoke-virtual {p0}, Lorg/fdroid/fdroid/nearby/SwapView;->getActivity()Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->sendFDroid()V

    return-void
.end method

.method private synthetic lambda$uiInitPeers$1(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/StartSwapView;->peopleNearbyAdapter:Lorg/fdroid/fdroid/nearby/StartSwapView$PeopleNearbyAdapter;

    .line 159
    invoke-interface {p1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fdroid/fdroid/nearby/peers/Peer;

    .line 160
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/nearby/StartSwapView;->onPeerSelected(Lorg/fdroid/fdroid/nearby/peers/Peer;)V

    return-void
.end method

.method private onPeerSelected(Lorg/fdroid/fdroid/nearby/peers/Peer;)V
    .locals 1

    .line 253
    invoke-virtual {p0}, Lorg/fdroid/fdroid/nearby/SwapView;->getActivity()Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->swapWith(Lorg/fdroid/fdroid/nearby/peers/Peer;)V

    return-void
.end method

.method private uiInitBluetooth()V
    .locals 3

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/StartSwapView;->bluetooth:Landroid/bluetooth/BluetoothAdapter;

    const/16 v1, 0x8

    if-eqz v0, :cond_2

    sget v0, Lorg/fdroid/fdroid/R$id;->device_id_bluetooth:I

    .line 167
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/fdroid/fdroid/nearby/StartSwapView;->viewBluetoothId:Landroid/widget/TextView;

    .line 168
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/StartSwapView;->viewBluetoothId:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/fdroid/fdroid/nearby/StartSwapView;->bluetooth:Landroid/bluetooth/BluetoothAdapter;

    .line 170
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/StartSwapView;->viewBluetoothId:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/fdroid/fdroid/nearby/StartSwapView;->bluetooth:Landroid/bluetooth/BluetoothAdapter;

    .line 172
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lorg/fdroid/fdroid/R$id;->bluetooth_visible:I

    .line 174
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/fdroid/fdroid/nearby/StartSwapView;->textBluetoothVisible:Landroid/widget/TextView;

    sget v0, Lorg/fdroid/fdroid/R$id;->switch_bluetooth:I

    .line 176
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/switchmaterial/SwitchMaterial;

    iput-object v0, p0, Lorg/fdroid/fdroid/nearby/StartSwapView;->bluetoothSwitch:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/StartSwapView;->onBluetoothSwitchToggled:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 177
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/StartSwapView;->bluetoothSwitch:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    .line 178
    invoke-static {}, Lorg/fdroid/fdroid/nearby/SwapService;->getBluetoothVisibleUserPreference()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/StartSwapView;->bluetoothSwitch:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    const/4 v1, 0x1

    .line 179
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/StartSwapView;->bluetoothSwitch:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/StartSwapView;->onBluetoothSwitchToggled:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 180
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    :cond_2
    sget v0, Lorg/fdroid/fdroid/R$id;->bluetooth_info:I

    .line 182
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private uiInitButtons()V
    .locals 2

    sget v0, Lorg/fdroid/fdroid/R$id;->btn_send_fdroid:I

    .line 132
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    .line 133
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    sget v0, Lorg/fdroid/fdroid/R$id;->btn_send_fdroid:I

    .line 134
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lorg/fdroid/fdroid/nearby/StartSwapView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/fdroid/fdroid/nearby/StartSwapView$$ExternalSyntheticLambda1;-><init>(Lorg/fdroid/fdroid/nearby/StartSwapView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private uiInitPeers()V
    .locals 4

    sget v0, Lorg/fdroid/fdroid/R$id;->text_people_nearby:I

    .line 146
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/fdroid/fdroid/nearby/StartSwapView;->peopleNearbyText:Landroid/widget/TextView;

    sget v0, Lorg/fdroid/fdroid/R$id;->list_people_nearby:I

    .line 147
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lorg/fdroid/fdroid/nearby/StartSwapView;->peopleNearbyList:Landroid/widget/ListView;

    sget v0, Lorg/fdroid/fdroid/R$id;->searching_people_nearby:I

    .line 148
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    iput-object v0, p0, Lorg/fdroid/fdroid/nearby/StartSwapView;->peopleNearbyProgress:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 150
    new-instance v0, Lorg/fdroid/fdroid/nearby/StartSwapView$PeopleNearbyAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/fdroid/fdroid/nearby/StartSwapView$PeopleNearbyAdapter;-><init>(Lorg/fdroid/fdroid/nearby/StartSwapView;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/fdroid/fdroid/nearby/StartSwapView;->peopleNearbyAdapter:Lorg/fdroid/fdroid/nearby/StartSwapView$PeopleNearbyAdapter;

    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/StartSwapView;->peopleNearbyList:Landroid/widget/ListView;

    .line 151
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 152
    invoke-virtual {p0}, Lorg/fdroid/fdroid/nearby/SwapView;->getActivity()Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->getSwapService()Lorg/fdroid/fdroid/nearby/SwapService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/fdroid/nearby/SwapService;->getActivePeers()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fdroid/fdroid/nearby/peers/Peer;

    iget-object v2, p0, Lorg/fdroid/fdroid/nearby/StartSwapView;->peopleNearbyAdapter:Lorg/fdroid/fdroid/nearby/StartSwapView$PeopleNearbyAdapter;

    .line 153
    invoke-virtual {v2, v1}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lorg/fdroid/fdroid/nearby/StartSwapView;->peopleNearbyAdapter:Lorg/fdroid/fdroid/nearby/StartSwapView$PeopleNearbyAdapter;

    .line 154
    invoke-virtual {v2, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/StartSwapView;->peopleNearbyList:Landroid/widget/ListView;

    .line 158
    new-instance v1, Lorg/fdroid/fdroid/nearby/StartSwapView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/fdroid/fdroid/nearby/StartSwapView$$ExternalSyntheticLambda0;-><init>(Lorg/fdroid/fdroid/nearby/StartSwapView;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private uiInitWifi()V
    .locals 1

    sget v0, Lorg/fdroid/fdroid/R$id;->device_id_wifi:I

    .line 218
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/fdroid/fdroid/nearby/StartSwapView;->viewWifiId:Landroid/widget/TextView;

    sget v0, Lorg/fdroid/fdroid/R$id;->wifi_network:I

    .line 219
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/fdroid/fdroid/nearby/StartSwapView;->viewWifiNetwork:Landroid/widget/TextView;

    .line 221
    invoke-direct {p0}, Lorg/fdroid/fdroid/nearby/StartSwapView;->uiUpdateWifiNetwork()V

    return-void
.end method

.method private uiUpdateWifiNetwork()V
    .locals 6

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/StartSwapView;->viewWifiId:Landroid/widget/TextView;

    .line 226
    sget-object v1, Lorg/fdroid/fdroid/FDroidApp;->ipAddressString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/StartSwapView;->viewWifiId:Landroid/widget/TextView;

    .line 227
    sget-object v1, Lorg/fdroid/fdroid/FDroidApp;->ipAddressString:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 229
    invoke-virtual {p0}, Lorg/fdroid/fdroid/nearby/SwapView;->getActivity()Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;

    move-result-object v0

    invoke-static {v0}, Lcc/mvdan/accesspoint/WifiApControl;->getInstance(Landroid/content/Context;)Lcc/mvdan/accesspoint/WifiApControl;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 230
    invoke-virtual {v0}, Lcc/mvdan/accesspoint/WifiApControl;->isWifiApEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 231
    invoke-virtual {v0}, Lcc/mvdan/accesspoint/WifiApControl;->getConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    sget v1, Lorg/fdroid/fdroid/R$id;->wifi_visible:I

    .line 232
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    sget v3, Lorg/fdroid/fdroid/R$string;->swap_visible_hotspot:I

    .line 234
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 236
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/StartSwapView;->viewWifiNetwork:Landroid/widget/TextView;

    sget v4, Lorg/fdroid/fdroid/R$string;->swap_active_hotspot:I

    new-array v3, v3, [Ljava/lang/Object;

    sget v5, Lorg/fdroid/fdroid/R$string;->swap_blank_wifi_ssid:I

    .line 239
    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    .line 238
    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lorg/fdroid/fdroid/nearby/StartSwapView;->viewWifiNetwork:Landroid/widget/TextView;

    sget v5, Lorg/fdroid/fdroid/R$string;->swap_active_hotspot:I

    new-array v3, v3, [Ljava/lang/Object;

    .line 241
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v0, v3, v2

    invoke-virtual {v1, v5, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 243
    :cond_3
    sget-object v0, Lorg/fdroid/fdroid/FDroidApp;->ssid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/StartSwapView;->viewWifiNetwork:Landroid/widget/TextView;

    sget v1, Lorg/fdroid/fdroid/R$string;->swap_no_wifi_network:I

    .line 245
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/StartSwapView;->viewWifiNetwork:Landroid/widget/TextView;

    .line 248
    sget-object v1, Lorg/fdroid/fdroid/FDroidApp;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 2

    .line 103
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/StartSwapView;->bluetoothSwitch:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 105
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 108
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/StartSwapView;->onWifiNetworkChanged:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 113
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 115
    invoke-direct {p0}, Lorg/fdroid/fdroid/nearby/StartSwapView;->uiInitPeers()V

    .line 116
    invoke-direct {p0}, Lorg/fdroid/fdroid/nearby/StartSwapView;->uiInitBluetooth()V

    .line 117
    invoke-direct {p0}, Lorg/fdroid/fdroid/nearby/StartSwapView;->uiInitWifi()V

    .line 118
    invoke-direct {p0}, Lorg/fdroid/fdroid/nearby/StartSwapView;->uiInitButtons()V

    .line 120
    invoke-virtual {p0}, Lorg/fdroid/fdroid/nearby/SwapView;->getActivity()Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/StartSwapView;->onWifiNetworkChanged:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "org.fdroid.fdroid.action.WIFI_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method
