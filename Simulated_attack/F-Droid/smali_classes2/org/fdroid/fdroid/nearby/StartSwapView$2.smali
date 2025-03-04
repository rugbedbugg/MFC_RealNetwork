.class Lorg/fdroid/fdroid/nearby/StartSwapView$2;
.super Ljava/lang/Object;
.source "StartSwapView.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/fdroid/nearby/StartSwapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fdroid/fdroid/nearby/StartSwapView;


# direct methods
.method constructor <init>(Lorg/fdroid/fdroid/nearby/StartSwapView;)V
    .locals 0

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/StartSwapView$2;->this$0:Lorg/fdroid/fdroid/nearby/StartSwapView;

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    const-string p1, "StartSwapView"

    if-eqz p2, :cond_2

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/StartSwapView$2;->this$0:Lorg/fdroid/fdroid/nearby/StartSwapView;

    .line 190
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/StartSwapView$2;->this$0:Lorg/fdroid/fdroid/nearby/StartSwapView;

    .line 192
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.BLUETOOTH_SCAN"

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Received onCheckChanged(true) for Bluetooth swap, prompting user as to whether they want to enable Bluetooth."

    .line 198
    invoke-static {p1, v0}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/StartSwapView$2;->this$0:Lorg/fdroid/fdroid/nearby/StartSwapView;

    .line 199
    invoke-virtual {v0}, Lorg/fdroid/fdroid/nearby/SwapView;->getActivity()Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->startBluetoothSwap()V

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/StartSwapView$2;->this$0:Lorg/fdroid/fdroid/nearby/StartSwapView;

    .line 200
    invoke-static {v0}, Lorg/fdroid/fdroid/nearby/StartSwapView;->-$$Nest$fgettextBluetoothVisible(Lorg/fdroid/fdroid/nearby/StartSwapView;)Landroid/widget/TextView;

    move-result-object v0

    sget v2, Lorg/fdroid/fdroid/R$string;->swap_visible_bluetooth:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/StartSwapView$2;->this$0:Lorg/fdroid/fdroid/nearby/StartSwapView;

    .line 201
    invoke-static {v0}, Lorg/fdroid/fdroid/nearby/StartSwapView;->-$$Nest$fgetviewBluetoothId(Lorg/fdroid/fdroid/nearby/StartSwapView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lorg/fdroid/fdroid/nearby/StartSwapView$2;->this$0:Lorg/fdroid/fdroid/nearby/StartSwapView;

    invoke-static {v2}, Lorg/fdroid/fdroid/nearby/StartSwapView;->-$$Nest$fgetbluetooth(Lorg/fdroid/fdroid/nearby/StartSwapView;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/StartSwapView$2;->this$0:Lorg/fdroid/fdroid/nearby/StartSwapView;

    .line 202
    invoke-static {v0}, Lorg/fdroid/fdroid/nearby/StartSwapView;->-$$Nest$fgetviewBluetoothId(Lorg/fdroid/fdroid/nearby/StartSwapView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const-string v0, "Received onCheckChanged(true) for Bluetooth swap (prompting user or setup Bluetooth complete)"

    .line 203
    invoke-static {p1, v0}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/StartSwapView$2;->this$0:Lorg/fdroid/fdroid/nearby/StartSwapView;

    .line 194
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lorg/fdroid/fdroid/R$string;->swap_bluetooth_permissions:I

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/StartSwapView$2;->this$0:Lorg/fdroid/fdroid/nearby/StartSwapView;

    .line 195
    invoke-static {p1}, Lorg/fdroid/fdroid/nearby/StartSwapView;->-$$Nest$fgetbluetoothSwitch(Lorg/fdroid/fdroid/nearby/StartSwapView;)Lcom/google/android/material/switchmaterial/SwitchMaterial;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    return-void

    :cond_2
    const-string v0, "Received onCheckChanged(false) for Bluetooth swap, disabling Bluetooth swap."

    .line 206
    invoke-static {p1, v0}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/StartSwapView$2;->this$0:Lorg/fdroid/fdroid/nearby/StartSwapView;

    .line 207
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/fdroid/fdroid/nearby/BluetoothManager;->stop(Landroid/content/Context;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/StartSwapView$2;->this$0:Lorg/fdroid/fdroid/nearby/StartSwapView;

    .line 208
    invoke-static {v0}, Lorg/fdroid/fdroid/nearby/StartSwapView;->-$$Nest$fgettextBluetoothVisible(Lorg/fdroid/fdroid/nearby/StartSwapView;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lorg/fdroid/fdroid/R$string;->swap_not_visible_bluetooth:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/StartSwapView$2;->this$0:Lorg/fdroid/fdroid/nearby/StartSwapView;

    .line 209
    invoke-static {v0}, Lorg/fdroid/fdroid/nearby/StartSwapView;->-$$Nest$fgetviewBluetoothId(Lorg/fdroid/fdroid/nearby/StartSwapView;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const-string v0, "Received onCheckChanged(false) for Bluetooth swap, Bluetooth swap disabled successfully."

    .line 210
    invoke-static {p1, v0}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :goto_1
    invoke-static {p2}, Lorg/fdroid/fdroid/nearby/SwapService;->putBluetoothVisibleUserPreference(Z)V

    return-void
.end method
