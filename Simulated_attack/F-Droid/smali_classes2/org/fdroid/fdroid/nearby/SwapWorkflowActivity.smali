.class public Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SwapWorkflowActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$SwapDebug;
    }
.end annotation


# static fields
.field public static final EXTRA_PREVENT_FURTHER_SWAP_REQUESTS:Ljava/lang/String; = "preventFurtherSwap"

.field private static final REQUEST_BLUETOOTH_DISCOVERABLE:I = 0x3

.field private static final REQUEST_BLUETOOTH_ENABLE_FOR_SEND:I = 0x4

.field private static final REQUEST_BLUETOOTH_ENABLE_FOR_SWAP:I = 0x2

.field private static final REQUEST_WRITE_SETTINGS_PERMISSION:I = 0x5

.field private static final TAG:Ljava/lang/String; = "SwapWorkflowActivity"


# instance fields
.field private final backstack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final bluetoothFound:Landroid/content/BroadcastReceiver;

.field private final bluetoothScanModeChanged:Landroid/content/BroadcastReceiver;

.field private final bluetoothStatusReceiver:Landroid/content/BroadcastReceiver;

.field private final bonjourFound:Landroid/content/BroadcastReceiver;

.field private final bonjourRemoved:Landroid/content/BroadcastReceiver;

.field private final bonjourStatusReceiver:Landroid/content/BroadcastReceiver;

.field private final compositeDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field private confirmSwapConfig:Lorg/fdroid/fdroid/nearby/NewRepoConfig;

.field private container:Landroid/view/ViewGroup;

.field private currentSwapViewLayoutRes:I

.field private currentView:Lorg/fdroid/fdroid/nearby/SwapView;

.field private hasPreparedLocalRepo:Z

.field private localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

.field private final localRepoStatus:Landroid/content/BroadcastReceiver;

.field private newIntent:Z

.field private final onWifiStateChanged:Landroid/content/BroadcastReceiver;

.field private final requestPermissionLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher;"
        }
    .end annotation
.end field

.field private service:Lorg/fdroid/fdroid/nearby/SwapService;

.field private final serviceConnection:Landroid/content/ServiceConnection;

.field private toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

.field private wifiApControl:Lcc/mvdan/accesspoint/WifiApControl;

.field private wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public static synthetic $r8$lambda$0iuEytnuuVEyTYVKBZwj_XllcBs(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->lambda$inflateSwapView$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6SO5aQOsnXIxQh5cJC6ZiP2SgJE(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->lambda$setUpUseBluetoothButton$15(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6pTkkqyAoLPwXp596ykA4ZCh8AA(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->lambda$setUpJoinWifi$10(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7zkDj2onsuOoclmzu2lF5JNcDxQ(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->lambda$setUpConfirmReceive$17(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8vw0BOGa5wZnnzSP6KN1WUkfP-I(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->lambda$setUpStartVisibility$14(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CNv-UhbowcNWuCbkzedtjXY9B-8(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->lambda$setUpStartVisibility$11(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ih8uCdItFWiW30s8moX4BMnmIUw(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->lambda$promptToSelectWifiNetwork$3(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$MfcA6b8Lk6hyLtjJNXNmsN0JC3I(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->lambda$promptToSelectWifiNetwork$4(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$RlhNF3DSLi7GfpyAGyC2jl2Tktc(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->lambda$updateWifiBannerVisibility$6(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iqTWdIBiblve1wBzLiOQb2nNfpc(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;Landroid/view/MenuItem;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->lambda$setUpSearchView$2(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$nwqRiCv_bcCJN9mWFdY_eumJKHA(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->lambda$setUpQrScannerButton$16(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oBwVrK7ZbxyLzX51_he4kFyc3LQ(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->lambda$setUpStartVisibility$13(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$q35m2QQzjNbqnTBbcSYzFpalfWE(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->lambda$new$0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$t3vfUTSVYHZNLg3VBD8Xl0xxaDQ(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->lambda$setUpFromWifi$9(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tlo2AE7wMnVsIPT09nZHRH_Tb0k(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->lambda$setUpConnectingView$18(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uDJf_7qVTjC4hWmHK9HHIiqu9fw(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->lambda$setUpStartVisibility$12(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$ve7-pC8jwBN3IFEsaXx0xGUd0-k(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;Landroid/view/MenuItem;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->lambda$setUpNextButton$1(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$wG4hONGshHXJxA4-xiLS-WIBRiE(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->lambda$promptToSelectWifiNetwork$5(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$zNYRrBOHEIzn7-0h9WlNoqS08rw(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->lambda$inflateSwapView$8(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetconfirmSwapConfig(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;)Lorg/fdroid/fdroid/nearby/NewRepoConfig;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->confirmSwapConfig:Lorg/fdroid/fdroid/nearby/NewRepoConfig;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcontainer(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;)Landroid/view/ViewGroup;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->container:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentView(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;)Lorg/fdroid/fdroid/nearby/SwapView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->currentView:Lorg/fdroid/fdroid/nearby/SwapView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetservice(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;)Lorg/fdroid/fdroid/nearby/SwapService;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->service:Lorg/fdroid/fdroid/nearby/SwapService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetwifiApControl(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;)Lcc/mvdan/accesspoint/WifiApControl;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->wifiApControl:Lcc/mvdan/accesspoint/WifiApControl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputservice(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;Lorg/fdroid/fdroid/nearby/SwapService;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->service:Lorg/fdroid/fdroid/nearby/SwapService;

    return-void
.end method

.method static bridge synthetic -$$Nest$monRepoUpdateError(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;Ljava/lang/Exception;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->onRepoUpdateError(Ljava/lang/Exception;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monRepoUpdateSuccess(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->onRepoUpdateSuccess()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetUpConnectingProgressText(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->setUpConnectingProgressText(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetUpFromWifi(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->setUpFromWifi()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowRelevantView(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->showRelevantView()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateWifiBannerVisibility(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->updateWifiBannerVisibility()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 103
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    sget v0, Lorg/fdroid/fdroid/R$layout;->swap_start_swap:I

    iput v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->currentSwapViewLayoutRes:I

    .line 134
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->backstack:Ljava/util/Stack;

    .line 136
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->compositeDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 138
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;-><init>()V

    new-instance v1, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$$ExternalSyntheticLambda17;-><init>(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;)V

    .line 139
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->requestPermissionLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 154
    new-instance v0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$1;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$1;-><init>(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;)V

    iput-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->serviceConnection:Landroid/content/ServiceConnection;

    .line 872
    new-instance v0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$3;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$3;-><init>(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;)V

    iput-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->bluetoothScanModeChanged:Landroid/content/BroadcastReceiver;

    .line 952
    new-instance v0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$4;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$4;-><init>(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;)V

    iput-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->onWifiStateChanged:Landroid/content/BroadcastReceiver;

    .line 1121
    new-instance v0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$5;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$5;-><init>(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;)V

    iput-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->bonjourStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 1208
    new-instance v0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$6;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$6;-><init>(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;)V

    iput-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->bonjourFound:Landroid/content/BroadcastReceiver;

    .line 1222
    new-instance v0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$7;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$7;-><init>(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;)V

    iput-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->bonjourRemoved:Landroid/content/BroadcastReceiver;

    .line 1233
    new-instance v0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$8;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$8;-><init>(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;)V

    iput-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->bluetoothStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 1320
    new-instance v0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$9;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$9;-><init>(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;)V

    iput-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->bluetoothFound:Landroid/content/BroadcastReceiver;

    .line 1395
    new-instance v0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$11;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$11;-><init>(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;)V

    iput-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->localRepoStatus:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private checkIfNewRepoOnSameWifi(Lorg/fdroid/fdroid/nearby/NewRepoConfig;)V
    .locals 4

    .line 817
    invoke-virtual {p1}, Lorg/fdroid/fdroid/nearby/NewRepoConfig;->getBssid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 818
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/net/wifi/WifiManager;

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 820
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 821
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    .line 822
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 825
    :cond_0
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 826
    invoke-virtual {p1}, Lorg/fdroid/fdroid/nearby/NewRepoConfig;->getBssid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 827
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lorg/fdroid/fdroid/R$string;->not_on_same_wifi:I

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 828
    invoke-virtual {p1}, Lorg/fdroid/fdroid/nearby/NewRepoConfig;->getSsid()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 829
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void
.end method

.method private checkIncomingIntent()V
    .locals 5

    .line 434
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 435
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "requestSwap"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 438
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 439
    invoke-static {v1}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->isSwapUrl(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Lorg/fdroid/fdroid/net/BluetoothDownloader;->isBluetoothUri(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_1

    sget v0, Lorg/fdroid/fdroid/R$string;->swap_toast_invalid_url:I

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    .line 440
    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 441
    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 444
    :cond_1
    new-instance v1, Lorg/fdroid/fdroid/nearby/NewRepoConfig;

    invoke-direct {v1, p0, v0}, Lorg/fdroid/fdroid/nearby/NewRepoConfig;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    iput-object v1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->confirmSwapConfig:Lorg/fdroid/fdroid/nearby/NewRepoConfig;

    .line 445
    invoke-direct {p0, v1}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->checkIfNewRepoOnSameWifi(Lorg/fdroid/fdroid/nearby/NewRepoConfig;)V

    return-void
.end method

.method private ensureBluetoothDiscoverableThenStart()V
    .locals 3

    const-string v0, "Ensuring Bluetooth is in discoverable mode."

    const-string v1, "SwapWorkflowActivity"

    .line 862
    invoke-static {v1, v0}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 863
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v0

    const/16 v2, 0x17

    if-eq v0, v2, :cond_0

    const-string v0, "Not currently in discoverable mode, so prompting user to enable."

    .line 864
    invoke-static {v1, v0}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.REQUEST_DISCOVERABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.extra.DISCOVERABLE_DURATION"

    const/16 v2, 0xe10

    .line 866
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x3

    .line 867
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 869
    :cond_0
    invoke-static {p0}, Lorg/fdroid/fdroid/nearby/BluetoothManager;->start(Landroid/content/Context;)V

    return-void
.end method

.method private static isSwapUrl(Landroid/net/Uri;)Z
    .locals 1

    .line 449
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/Uri;->getPort()I

    move-result p0

    invoke-static {v0, p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->isSwapUrl(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method private static isSwapUrl(Ljava/lang/String;I)Z
    .locals 1

    const/16 v0, 0x3ff

    if-le p1, v0, :cond_0

    const-string p1, "[0-9.]+"

    .line 454
    invoke-virtual {p0, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lorg/fdroid/fdroid/FDroidApp;->subnetInfo:Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;

    .line 455
    invoke-virtual {p1, p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->isInRange(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$inflateSwapView$7(Landroid/view/View;)V
    .locals 0

    .line 594
    invoke-virtual {p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->onToolbarBackPressed()V

    return-void
.end method

.method private synthetic lambda$inflateSwapView$8(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->currentView:Lorg/fdroid/fdroid/nearby/SwapView;

    .line 596
    invoke-virtual {p1}, Lorg/fdroid/fdroid/nearby/SwapView;->getLayoutResId()I

    move-result p1

    sget v0, Lorg/fdroid/fdroid/R$layout;->swap_start_swap:I

    if-ne p1, v0, :cond_0

    .line 597
    invoke-static {p0}, Lorg/fdroid/fdroid/nearby/SwapService;->stop(Landroid/content/Context;)V

    .line 598
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    iput v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->currentSwapViewLayoutRes:I

    .line 603
    invoke-virtual {p0, v0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->inflateSwapView(I)V

    return-void
.end method

.method private synthetic lambda$new$0(Ljava/lang/Boolean;)V
    .locals 0

    .line 140
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->sendFDroidBluetooth()V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$promptToSelectWifiNetwork$3(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    return-void
.end method

.method private synthetic lambda$promptToSelectWifiNetwork$4(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 466
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p1

    invoke-static {p1}, Lorg/fdroid/fdroid/nearby/SwapService;->putWifiEnabledBeforeSwap(Z)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1c

    if-gt p1, p2, :cond_0

    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->wifiManager:Landroid/net/wifi/WifiManager;

    const/4 p2, 0x1

    .line 468
    invoke-virtual {p1, p2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 470
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.net.wifi.PICK_WIFI_NETWORK"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p2, 0x10000000

    .line 471
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 472
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$promptToSelectWifiNetwork$5(Landroid/content/DialogInterface;I)V
    .locals 0

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1a

    if-lt p1, p2, :cond_0

    .line 476
    invoke-virtual {p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->showTetheringSettings()V

    goto :goto_0

    .line 477
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 478
    invoke-virtual {p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->requestWriteSettingsPermission()V

    goto :goto_0

    .line 480
    :cond_1
    invoke-direct {p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->setupWifiAP()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$setUpConfirmReceive$17(Landroid/view/View;)V
    .locals 0

    .line 1364
    invoke-virtual {p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->denySwap()V

    return-void
.end method

.method private synthetic lambda$setUpConnectingView$18(Landroid/view/View;)V
    .locals 0

    .line 1454
    invoke-virtual {p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->onAppsSelected()V

    return-void
.end method

.method private synthetic lambda$setUpFromWifi$9(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1030
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1033
    new-instance p2, Landroid/graphics/LightingColorFilter;

    sget v0, Lorg/fdroid/fdroid/R$color;->swap_blue:I

    .line 1034
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    const/4 v1, -0x1

    invoke-direct {p2, v1, v0}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    .line 1033
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->container:Landroid/view/ViewGroup;

    sget p2, Lorg/fdroid/fdroid/R$id;->warning_qr_scanner:I

    .line 1036
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1038
    invoke-static {p0}, Lorg/fdroid/fdroid/qr/CameraCharacteristicsChecker;->getInstance(Landroid/content/Context;)Lorg/fdroid/fdroid/qr/CameraCharacteristicsChecker;

    move-result-object p2

    invoke-virtual {p2}, Lorg/fdroid/fdroid/qr/CameraCharacteristicsChecker;->hasAutofocus()Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0x8

    .line 1039
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 1041
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$setUpJoinWifi$10(Landroid/view/View;)V
    .locals 1

    .line 1051
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.net.wifi.PICK_WIFI_NETWORK"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$setUpNextButton$1(Landroid/view/MenuItem;)Z
    .locals 0

    .line 326
    invoke-direct {p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->sendNext()V

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic lambda$setUpQrScannerButton$16(Landroid/view/View;)V
    .locals 0

    .line 1352
    invoke-virtual {p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->initiateQrScan()V

    return-void
.end method

.method private synthetic lambda$setUpSearchView$2(Landroid/view/MenuItem;)Z
    .locals 0

    sget p1, Lorg/fdroid/fdroid/R$layout;->swap_select_apps:I

    .line 344
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->inflateSwapView(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic lambda$setUpStartVisibility$11(Landroid/view/View;)V
    .locals 0

    .line 1091
    invoke-direct {p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->promptToSelectWifiNetwork()V

    return-void
.end method

.method private synthetic lambda$setUpStartVisibility$12(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 1094
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p2, :cond_2

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->wifiApControl:Lcc/mvdan/accesspoint/WifiApControl;

    if-eqz v0, :cond_0

    .line 1096
    invoke-virtual {v0}, Lcc/mvdan/accesspoint/WifiApControl;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1097
    invoke-direct {p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->setupWifiAP()V

    goto :goto_0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->wifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    .line 1100
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 1103
    :cond_1
    :goto_0
    invoke-static {p1}, Lorg/fdroid/fdroid/nearby/BonjourManager;->start(Landroid/content/Context;)V

    .line 1105
    :cond_2
    invoke-static {p1, p2}, Lorg/fdroid/fdroid/nearby/BonjourManager;->setVisible(Landroid/content/Context;Z)V

    .line 1106
    invoke-static {p2}, Lorg/fdroid/fdroid/nearby/SwapService;->putWifiVisibleUserPreference(Z)V

    return-void
.end method

.method private synthetic lambda$setUpStartVisibility$13(Landroid/view/View;)V
    .locals 0

    sget p1, Lorg/fdroid/fdroid/R$layout;->swap_wifi_qr:I

    .line 1109
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->inflateSwapView(I)V

    return-void
.end method

.method private synthetic lambda$setUpStartVisibility$14(Landroid/view/View;)V
    .locals 0

    sget p1, Lorg/fdroid/fdroid/R$layout;->swap_select_apps:I

    .line 1111
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->inflateSwapView(I)V

    return-void
.end method

.method private synthetic lambda$setUpUseBluetoothButton$15(Landroid/view/View;)V
    .locals 0

    .line 1343
    invoke-virtual {p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->showIntro()V

    .line 1344
    invoke-virtual {p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->sendFDroidBluetooth()V

    return-void
.end method

.method private synthetic lambda$updateWifiBannerVisibility$6(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    const/16 p2, 0x8

    .line 550
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 551
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.panel.action.WIFI"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private onRepoUpdateError(Ljava/lang/Exception;)V
    .locals 3

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->container:Landroid/view/ViewGroup;

    sget v1, Lorg/fdroid/fdroid/R$id;->progress_bar:I

    .line 1438
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->container:Landroid/view/ViewGroup;

    sget v2, Lorg/fdroid/fdroid/R$id;->try_again:I

    .line 1439
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 1441
    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->hide()V

    const/4 v0, 0x0

    .line 1442
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1444
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error updating repo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 1445
    :goto_0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->setUpConnectingProgressText(Ljava/lang/String;)V

    .line 1446
    invoke-virtual {p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->getSwapService()Lorg/fdroid/fdroid/nearby/SwapService;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fdroid/fdroid/nearby/SwapService;->removeCurrentPeerFromActive()V

    return-void
.end method

.method private onRepoUpdateSuccess()V
    .locals 3

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->container:Landroid/view/ViewGroup;

    sget v1, Lorg/fdroid/fdroid/R$id;->progress_bar:I

    .line 1427
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->container:Landroid/view/ViewGroup;

    sget v2, Lorg/fdroid/fdroid/R$id;->try_again:I

    .line 1428
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 1430
    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->show()V

    const/16 v0, 0x8

    .line 1431
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1433
    :cond_0
    invoke-virtual {p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->getSwapService()Lorg/fdroid/fdroid/nearby/SwapService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/fdroid/nearby/SwapService;->addCurrentPeerToActive()V

    sget v0, Lorg/fdroid/fdroid/R$layout;->swap_success:I

    .line 1434
    invoke-virtual {p0, v0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->inflateSwapView(I)V

    return-void
.end method

.method private promptToSelectWifiNetwork()V
    .locals 3

    .line 459
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lorg/fdroid/fdroid/R$string;->swap_join_same_wifi:I

    .line 460
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/fdroid/fdroid/R$string;->swap_join_same_wifi_desc:I

    .line 461
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/fdroid/fdroid/R$string;->cancel:I

    new-instance v2, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$$ExternalSyntheticLambda1;-><init>()V

    .line 462
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/fdroid/fdroid/R$string;->wifi:I

    new-instance v2, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$$ExternalSyntheticLambda2;-><init>(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;)V

    .line 465
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/fdroid/fdroid/R$string;->wifi_ap:I

    new-instance v2, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$$ExternalSyntheticLambda3;-><init>(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;)V

    .line 474
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 483
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static requestSwap(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 3

    .line 148
    new-instance v0, Landroid/content/Intent;

    const-string v1, "requestSwap"

    const-class v2, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;

    invoke-direct {v0, v1, p1, p0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "preventFurtherSwap"

    const/4 v1, 0x1

    .line 149
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 150
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 151
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static requestSwap(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 144
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->requestSwap(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method private sendFDroidApk()V
    .locals 3

    .line 689
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lorg/fdroid/fdroid/FDroidApp;

    const/4 v1, -0x1

    const-string v2, "org.fdroid.fdroid"

    invoke-virtual {v0, p0, v1, v2}, Lorg/fdroid/fdroid/FDroidApp;->sendViaBluetooth(Landroidx/appcompat/app/AppCompatActivity;ILjava/lang/String;)V

    return-void
.end method

.method private sendNext()V
    .locals 3

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->currentView:Lorg/fdroid/fdroid/nearby/SwapView;

    .line 332
    invoke-virtual {v0}, Lorg/fdroid/fdroid/nearby/SwapView;->getLayoutResId()I

    move-result v0

    sget v1, Lorg/fdroid/fdroid/R$layout;->swap_select_apps:I

    if-ne v0, v1, :cond_0

    .line 334
    invoke-virtual {p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->onAppsSelected()V

    goto :goto_0

    :cond_0
    sget v2, Lorg/fdroid/fdroid/R$layout;->swap_join_wifi:I

    if-ne v0, v2, :cond_1

    .line 336
    invoke-virtual {p0, v1}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->inflateSwapView(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setUpConfirmReceive()V
    .locals 5

    sget v0, Lorg/fdroid/fdroid/R$id;->text_description:I

    .line 1357
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    sget v1, Lorg/fdroid/fdroid/R$string;->swap_confirm_connect:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->confirmSwapConfig:Lorg/fdroid/fdroid/nearby/NewRepoConfig;

    .line 1359
    invoke-virtual {v3}, Lorg/fdroid/fdroid/nearby/NewRepoConfig;->getHost()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->container:Landroid/view/ViewGroup;

    sget v1, Lorg/fdroid/fdroid/R$id;->confirm_receive_yes:I

    .line 1362
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 1364
    new-instance v1, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$$ExternalSyntheticLambda14;-><init>(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->container:Landroid/view/ViewGroup;

    sget v1, Lorg/fdroid/fdroid/R$id;->confirm_receive_no:I

    .line 1367
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 1369
    new-instance v1, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$10;

    invoke-direct {v1, p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$10;-><init>(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method private setUpConnectingProgressText(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->container:Landroid/view/ViewGroup;

    sget v1, Lorg/fdroid/fdroid/R$id;->progress_text:I

    .line 1382
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 1384
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1385
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setUpConnectingView()V
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->container:Landroid/view/ViewGroup;

    sget v1, Lorg/fdroid/fdroid/R$id;->progress_text:I

    .line 1450
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lorg/fdroid/fdroid/R$string;->swap_connecting:I

    .line 1451
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->container:Landroid/view/ViewGroup;

    sget v1, Lorg/fdroid/fdroid/R$id;->try_again:I

    .line 1452
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 1454
    new-instance v1, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$$ExternalSyntheticLambda18;-><init>(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private setUpFromWifi()V
    .locals 6

    .line 981
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/fdroid/Preferences;->isLocalRepoHttpsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "https://"

    goto :goto_0

    :cond_0
    const-string v0, "http://"

    .line 984
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lorg/fdroid/fdroid/FDroidApp;->ipAddressString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lorg/fdroid/fdroid/FDroidApp;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->container:Landroid/view/ViewGroup;

    sget v3, Lorg/fdroid/fdroid/R$id;->device_ip_address:I

    .line 985
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 987
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v2, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->currentView:Lorg/fdroid/fdroid/nearby/SwapView;

    .line 991
    invoke-virtual {v2}, Lorg/fdroid/fdroid/nearby/SwapView;->getLayoutResId()I

    move-result v2

    sget v3, Lorg/fdroid/fdroid/R$layout;->swap_join_wifi:I

    if-ne v2, v3, :cond_2

    .line 992
    invoke-direct {p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->setUpJoinWifi()V

    return-void

    :cond_2
    iget-object v2, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->currentView:Lorg/fdroid/fdroid/nearby/SwapView;

    .line 994
    invoke-virtual {v2}, Lorg/fdroid/fdroid/nearby/SwapView;->getLayoutResId()I

    move-result v2

    sget v3, Lorg/fdroid/fdroid/R$layout;->swap_send_fdroid:I

    if-ne v2, v3, :cond_3

    goto/16 :goto_3

    :cond_3
    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->currentView:Lorg/fdroid/fdroid/nearby/SwapView;

    .line 996
    invoke-virtual {v1}, Lorg/fdroid/fdroid/nearby/SwapView;->getLayoutResId()I

    move-result v1

    sget v2, Lorg/fdroid/fdroid/R$layout;->swap_wifi_qr:I

    if-ne v1, v2, :cond_8

    .line 997
    sget-object v1, Lorg/fdroid/fdroid/FDroidApp;->repo:Lorg/fdroid/database/Repository;

    invoke-static {v1}, Lorg/fdroid/fdroid/Utils;->getSharingUri(Lorg/fdroid/database/Repository;)Landroid/net/Uri;

    move-result-object v1

    .line 998
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 999
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1000
    invoke-virtual {v1}, Landroid/net/Uri;->getPort()I

    move-result v0

    const/16 v3, 0x50

    if-eq v0, v3, :cond_4

    const/16 v0, 0x3a

    .line 1001
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1002
    invoke-virtual {v1}, Landroid/net/Uri;->getPort()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1004
    :cond_4
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1007
    invoke-virtual {v1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v0

    .line 1008
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x1

    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "ssid"

    .line 1009
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    if-eqz v3, :cond_6

    const/16 v3, 0x3f

    .line 1011
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    goto :goto_2

    :cond_6
    const/16 v5, 0x26

    .line 1014
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1016
    :goto_2
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x3d

    .line 1017
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1018
    invoke-virtual {v1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1021
    :cond_7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_8
    const/4 v1, 0x0

    :goto_3
    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->container:Landroid/view/ViewGroup;

    sget v2, Lorg/fdroid/fdroid/R$id;->wifi_qr_code:I

    .line 1024
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_9

    if-eqz v0, :cond_9

    .line 1026
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encoded swap URI in QR Code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SwapWorkflowActivity"

    invoke-static {v3, v2}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->compositeDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 1028
    invoke-static {p0, v1}, Lorg/fdroid/fdroid/Utils;->generateQrBitmap(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v1

    new-instance v3, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$$ExternalSyntheticLambda13;

    invoke-direct {v3, p0, v0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$$ExternalSyntheticLambda13;-><init>(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;Landroid/widget/ImageView;)V

    .line 1029
    invoke-virtual {v1, v3}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    .line 1028
    invoke-virtual {v2, v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    :cond_9
    return-void
.end method

.method private setUpJoinWifi()V
    .locals 5

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->currentView:Lorg/fdroid/fdroid/nearby/SwapView;

    .line 1051
    new-instance v1, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$$ExternalSyntheticLambda8;-><init>(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->container:Landroid/view/ViewGroup;

    sget v1, Lorg/fdroid/fdroid/R$id;->text_description:I

    .line 1052
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->container:Landroid/view/ViewGroup;

    sget v2, Lorg/fdroid/fdroid/R$id;->wifi_icon:I

    .line 1053
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->container:Landroid/view/ViewGroup;

    sget v3, Lorg/fdroid/fdroid/R$id;->wifi_ssid:I

    .line 1054
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->container:Landroid/view/ViewGroup;

    sget v4, Lorg/fdroid/fdroid/R$id;->wifi_available_networks_prompt:I

    .line 1055
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    if-nez v3, :cond_0

    goto :goto_0

    .line 1059
    :cond_0
    sget-object v4, Lorg/fdroid/fdroid/FDroidApp;->bssid:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lorg/fdroid/fdroid/FDroidApp;->ipAddressString:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    sget v4, Lorg/fdroid/fdroid/R$string;->swap_join_this_hotspot:I

    .line 1061
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    sget v0, Lorg/fdroid/fdroid/R$drawable;->ic_wifi_tethering:I

    .line 1062
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v0, Lorg/fdroid/fdroid/R$string;->swap_active_hotspot:I

    .line 1063
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    sget v0, Lorg/fdroid/fdroid/R$string;->swap_switch_to_wifi:I

    .line 1064
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1065
    :cond_1
    sget-object v4, Lorg/fdroid/fdroid/FDroidApp;->ssid:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget v4, Lorg/fdroid/fdroid/R$string;->swap_join_same_wifi:I

    .line 1067
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    sget v0, Lorg/fdroid/fdroid/R$drawable;->ic_wifi:I

    .line 1068
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v0, Lorg/fdroid/fdroid/R$string;->swap_no_wifi_network:I

    .line 1069
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    sget v0, Lorg/fdroid/fdroid/R$string;->swap_view_available_networks:I

    .line 1070
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    sget v4, Lorg/fdroid/fdroid/R$string;->swap_join_same_wifi:I

    .line 1073
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    sget v0, Lorg/fdroid/fdroid/R$drawable;->ic_wifi:I

    .line 1074
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1075
    sget-object v0, Lorg/fdroid/fdroid/FDroidApp;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lorg/fdroid/fdroid/R$string;->swap_view_available_networks:I

    .line 1076
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private setUpNextButton(Landroid/view/Menu;ILjava/lang/Integer;)V
    .locals 1

    sget v0, Lorg/fdroid/fdroid/R$id;->action_next:I

    .line 314
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 315
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 316
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 317
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    if-nez p3, :cond_0

    const/4 p2, 0x0

    .line 319
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 321
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 322
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :goto_0
    const/4 p2, 0x6

    .line 324
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 325
    new-instance p2, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$$ExternalSyntheticLambda6;-><init>(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;)V

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void
.end method

.method private setUpQrScannerButton()V
    .locals 2

    sget v0, Lorg/fdroid/fdroid/R$id;->btn_qr_scanner:I

    .line 1350
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 1352
    new-instance v1, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$$ExternalSyntheticLambda4;-><init>(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private setUpSearchView(Landroid/view/Menu;)V
    .locals 2

    sget v0, Lorg/fdroid/fdroid/R$id;->action_apps:I

    .line 341
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 343
    new-instance v1, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$$ExternalSyntheticLambda7;-><init>(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 349
    :cond_0
    new-instance v0, Landroidx/appcompat/widget/SearchView;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/SearchView;-><init>(Landroid/content/Context;)V

    sget v1, Lorg/fdroid/fdroid/R$id;->action_search:I

    .line 350
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 351
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    const/4 v1, 0x1

    .line 352
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 354
    new-instance p1, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$2;

    invoke-direct {p1, p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$2;-><init>(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;)V

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    return-void
.end method

.method private setUpStartVisibility()V
    .locals 5

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->bluetoothStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 1081
    new-instance v1, Landroid/content/Intent;

    const-string v2, "BluetoothStatus"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->bonjourStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 1082
    new-instance v1, Landroid/content/Intent;

    const-string v2, "BonjourStatus"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    sget v0, Lorg/fdroid/fdroid/R$id;->wifi_network:I

    .line 1084
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lorg/fdroid/fdroid/R$id;->switch_wifi:I

    .line 1085
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/switchmaterial/SwitchMaterial;

    sget v2, Lorg/fdroid/fdroid/R$id;->btn_scan_qr:I

    .line 1086
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/button/MaterialButton;

    sget v3, Lorg/fdroid/fdroid/R$id;->btn_apps:I

    .line 1087
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/button/MaterialButton;

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    if-nez v3, :cond_0

    goto :goto_0

    .line 1091
    :cond_0
    new-instance v4, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$$ExternalSyntheticLambda9;

    invoke-direct {v4, p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$$ExternalSyntheticLambda9;-><init>(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1093
    new-instance v0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$$ExternalSyntheticLambda10;-><init>(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;)V

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1109
    new-instance v0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$$ExternalSyntheticLambda11;-><init>(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1111
    new-instance v0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$$ExternalSyntheticLambda12;-><init>(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1112
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1114
    invoke-static {}, Lorg/fdroid/fdroid/nearby/SwapService;->getWifiVisibleUserPreference()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 1115
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1117
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setUpUseBluetoothButton()V
    .locals 2

    sget v0, Lorg/fdroid/fdroid/R$id;->btn_use_bluetooth:I

    .line 1335
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_0

    const/16 v1, 0x8

    .line 1338
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1340
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1342
    :goto_0
    new-instance v1, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$$ExternalSyntheticLambda5;-><init>(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method private setupWifiAP()V
    .locals 5

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->wifiApControl:Lcc/mvdan/accesspoint/WifiApControl;

    const/4 v1, 0x1

    const-string v2, "SwapWorkflowActivity"

    if-nez v0, :cond_0

    const-string v0, "WiFi AP is null"

    .line 488
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lorg/fdroid/fdroid/R$string;->swap_toast_could_not_enable_hotspot:I

    .line 489
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 492
    :cond_0
    invoke-virtual {v0}, Lcc/mvdan/accesspoint/WifiApControl;->isEnabled()Z

    move-result v0

    invoke-static {v0}, Lorg/fdroid/fdroid/nearby/SwapService;->putHotspotEnabledBeforeSwap(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    const/4 v4, 0x0

    if-gt v0, v3, :cond_1

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 494
    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->wifiApControl:Lcc/mvdan/accesspoint/WifiApControl;

    .line 498
    invoke-virtual {v0}, Lcc/mvdan/accesspoint/WifiApControl;->enable()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    sget v0, Lorg/fdroid/fdroid/R$string;->swap_toast_hotspot_enabled:I

    .line 503
    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 504
    invoke-static {v1}, Lorg/fdroid/fdroid/nearby/SwapService;->putHotspotActivatedUserPreference(Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "Error enabling WiFi: "

    .line 500
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    sget v0, Lorg/fdroid/fdroid/R$string;->swap_toast_could_not_enable_hotspot:I

    .line 506
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 507
    invoke-static {v4}, Lorg/fdroid/fdroid/nearby/SwapService;->putHotspotActivatedUserPreference(Z)V

    const-string v0, "Could not enable WiFi AP."

    .line 508
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private showRelevantView()V
    .locals 3

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->confirmSwapConfig:Lorg/fdroid/fdroid/nearby/NewRepoConfig;

    if-eqz v0, :cond_0

    sget v0, Lorg/fdroid/fdroid/R$layout;->swap_confirm_receive:I

    .line 518
    invoke-virtual {p0, v0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->inflateSwapView(I)V

    .line 519
    invoke-direct {p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->setUpConfirmReceive()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->confirmSwapConfig:Lorg/fdroid/fdroid/nearby/NewRepoConfig;

    return-void

    :cond_0
    iget v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->currentSwapViewLayoutRes:I

    sget v1, Lorg/fdroid/fdroid/R$layout;->swap_start_swap:I

    if-ne v0, v1, :cond_1

    .line 525
    invoke-virtual {p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->showIntro()V

    return-void

    :cond_1
    sget v2, Lorg/fdroid/fdroid/R$layout;->swap_connecting:I

    if-ne v0, v2, :cond_2

    .line 529
    invoke-virtual {p0, v1}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->inflateSwapView(I)V

    return-void

    .line 532
    :cond_2
    invoke-virtual {p0, v0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->inflateSwapView(I)V

    return-void
.end method

.method private startSwappingWithPeer()V
    .locals 1

    .line 729
    invoke-virtual {p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->getSwapService()Lorg/fdroid/fdroid/nearby/SwapService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/fdroid/nearby/SwapService;->connectToPeer()V

    sget v0, Lorg/fdroid/fdroid/R$layout;->swap_connecting:I

    .line 730
    invoke-virtual {p0, v0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->inflateSwapView(I)V

    return-void
.end method

.method private updateWifiBannerVisibility()V
    .locals 3

    sget v0, Lorg/fdroid/fdroid/R$id;->wifi_banner:I

    .line 544
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->wifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_1

    .line 546
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    sget v1, Lorg/fdroid/fdroid/R$id;->turn_on_wifi:I

    .line 547
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 549
    new-instance v2, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$$ExternalSyntheticLambda0;-><init>(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const/4 v1, 0x0

    .line 554
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    .line 556
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public denySwap()V
    .locals 0

    .line 759
    invoke-virtual {p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->showIntro()V

    return-void
.end method

.method public getSwapService()Lorg/fdroid/fdroid/nearby/SwapService;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->service:Lorg/fdroid/fdroid/nearby/SwapService;

    return-object v0
.end method

.method public inflateSwapView(I)V
    .locals 1

    const/4 v0, 0x0

    .line 536
    invoke-virtual {p0, p1, v0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->inflateSwapView(IZ)V

    sget v0, Lorg/fdroid/fdroid/R$layout;->swap_start_swap:I

    if-ne p1, v0, :cond_0

    .line 539
    invoke-direct {p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->updateWifiBannerVisibility()V

    :cond_0
    return-void
.end method

.method public inflateSwapView(IZ)V
    .locals 2

    .line 567
    invoke-virtual {p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->getSwapService()Lorg/fdroid/fdroid/nearby/SwapService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/fdroid/nearby/SwapService;->initTimer()V

    if-nez p2, :cond_2

    iget p2, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->currentSwapViewLayoutRes:I

    sget v0, Lorg/fdroid/fdroid/R$layout;->swap_connecting:I

    if-eq p2, v0, :cond_2

    sget v0, Lorg/fdroid/fdroid/R$layout;->swap_confirm_receive:I

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->backstack:Ljava/util/Stack;

    .line 574
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    sget p2, Lorg/fdroid/fdroid/R$layout;->swap_start_swap:I

    if-eq p1, p2, :cond_2

    iget-object p2, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->backstack:Ljava/util/Stack;

    iget v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->currentSwapViewLayoutRes:I

    .line 576
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->backstack:Ljava/util/Stack;

    .line 579
    invoke-virtual {p2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->currentSwapViewLayoutRes:I

    if-eq p2, v0, :cond_2

    iget-object p2, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->backstack:Ljava/util/Stack;

    .line 580
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    iget-object p2, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->container:Landroid/view/ViewGroup;

    .line 586
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    const-class p2, Landroid/view/LayoutInflater;

    .line 587
    invoke-static {p0, p2}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->container:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 588
    invoke-virtual {p2, p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 589
    move-object v0, p2

    check-cast v0, Lorg/fdroid/fdroid/nearby/SwapView;

    iput-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->currentView:Lorg/fdroid/fdroid/nearby/SwapView;

    .line 590
    invoke-virtual {v0, p1}, Lorg/fdroid/fdroid/nearby/SwapView;->setLayoutResId(I)V

    iput p1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->currentSwapViewLayoutRes:I

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->currentView:Lorg/fdroid/fdroid/nearby/SwapView;

    .line 593
    invoke-virtual {v1}, Lorg/fdroid/fdroid/nearby/SwapView;->getToolbarTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    .line 594
    new-instance v1, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$$ExternalSyntheticLambda15;-><init>(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    .line 595
    new-instance v1, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$$ExternalSyntheticLambda16;-><init>(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lorg/fdroid/fdroid/R$layout;->swap_start_swap:I

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    sget v0, Lorg/fdroid/fdroid/R$drawable;->ic_close:I

    .line 606
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(I)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    sget v0, Lorg/fdroid/fdroid/R$drawable;->ic_arrow_back:I

    .line 608
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(I)V

    :goto_1
    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->container:Landroid/view/ViewGroup;

    .line 610
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 611
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->supportInvalidateOptionsMenu()V

    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->currentView:Lorg/fdroid/fdroid/nearby/SwapView;

    .line 613
    invoke-virtual {p1}, Lorg/fdroid/fdroid/nearby/SwapView;->getLayoutResId()I

    move-result p1

    sget p2, Lorg/fdroid/fdroid/R$layout;->swap_send_fdroid:I

    if-ne p1, p2, :cond_4

    .line 614
    invoke-direct {p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->setUpFromWifi()V

    .line 615
    invoke-direct {p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->setUpUseBluetoothButton()V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->currentView:Lorg/fdroid/fdroid/nearby/SwapView;

    .line 616
    invoke-virtual {p1}, Lorg/fdroid/fdroid/nearby/SwapView;->getLayoutResId()I

    move-result p1

    sget p2, Lorg/fdroid/fdroid/R$layout;->swap_wifi_qr:I

    if-ne p1, p2, :cond_5

    .line 617
    invoke-direct {p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->setUpFromWifi()V

    .line 618
    invoke-direct {p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->setUpQrScannerButton()V

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->currentView:Lorg/fdroid/fdroid/nearby/SwapView;

    .line 619
    invoke-virtual {p1}, Lorg/fdroid/fdroid/nearby/SwapView;->getLayoutResId()I

    move-result p1

    sget p2, Lorg/fdroid/fdroid/R$layout;->swap_select_apps:I

    if-ne p1, p2, :cond_6

    .line 620
    invoke-virtual {p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->getSwapService()Lorg/fdroid/fdroid/nearby/SwapService;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fdroid/fdroid/nearby/SwapService;->getAppsToSwap()Ljava/util/Set;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/fdroid/fdroid/nearby/LocalRepoService;->create(Landroid/content/Context;Ljava/util/Set;)V

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->currentView:Lorg/fdroid/fdroid/nearby/SwapView;

    .line 621
    invoke-virtual {p1}, Lorg/fdroid/fdroid/nearby/SwapView;->getLayoutResId()I

    move-result p1

    sget p2, Lorg/fdroid/fdroid/R$layout;->swap_connecting:I

    if-ne p1, p2, :cond_7

    .line 622
    invoke-direct {p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->setUpConnectingView()V

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->currentView:Lorg/fdroid/fdroid/nearby/SwapView;

    .line 623
    invoke-virtual {p1}, Lorg/fdroid/fdroid/nearby/SwapView;->getLayoutResId()I

    move-result p1

    sget p2, Lorg/fdroid/fdroid/R$layout;->swap_start_swap:I

    if-ne p1, p2, :cond_8

    .line 624
    invoke-direct {p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->setUpStartVisibility()V

    :cond_8
    :goto_2
    return-void
.end method

.method public initiateQrScan()V
    .locals 1

    .line 767
    new-instance v0, Lcom/google/zxing/integration/android/IntentIntegrator;

    invoke-direct {v0, p0}, Lcom/google/zxing/integration/android/IntentIntegrator;-><init>(Landroid/app/Activity;)V

    .line 768
    invoke-virtual {v0}, Lcom/google/zxing/integration/android/IntentIntegrator;->initiateScan()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 773
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 774
    invoke-static {p1, p2, p3}, Lcom/google/zxing/integration/android/IntentIntegrator;->parseActivityResult(IILandroid/content/Intent;)Lcom/google/zxing/integration/android/IntentResult;

    move-result-object p3

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 776
    invoke-virtual {p3}, Lcom/google/zxing/integration/android/IntentResult;->getContents()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 777
    new-instance p1, Lorg/fdroid/fdroid/nearby/NewRepoConfig;

    invoke-virtual {p3}, Lcom/google/zxing/integration/android/IntentResult;->getContents()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lorg/fdroid/fdroid/nearby/NewRepoConfig;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 778
    invoke-virtual {p1}, Lorg/fdroid/fdroid/nearby/NewRepoConfig;->isValidRepo()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 779
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->checkIfNewRepoOnSameWifi(Lorg/fdroid/fdroid/nearby/NewRepoConfig;)V

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->confirmSwapConfig:Lorg/fdroid/fdroid/nearby/NewRepoConfig;

    .line 781
    invoke-direct {p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->showRelevantView()V

    goto :goto_0

    :cond_0
    sget p1, Lorg/fdroid/fdroid/R$string;->swap_qr_isnt_for_swap:I

    .line 783
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    const/4 p3, 0x5

    if-ne p1, p3, :cond_2

    .line 787
    invoke-static {p0}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 788
    invoke-direct {p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->setupWifiAP()V

    goto :goto_0

    :cond_2
    const/4 p3, 0x2

    const-string v1, "SwapWorkflowActivity"

    if-ne p1, p3, :cond_4

    const/4 p1, -0x1

    if-ne p2, p1, :cond_3

    const-string p1, "User enabled Bluetooth, will make sure we are discoverable."

    .line 793
    invoke-static {v1, p1}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    invoke-direct {p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->ensureBluetoothDiscoverableThenStart()V

    goto :goto_0

    :cond_3
    const-string p1, "User chose not to enable Bluetooth, so doing nothing"

    .line 796
    invoke-static {v1, p1}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    invoke-static {v0}, Lorg/fdroid/fdroid/nearby/SwapService;->putBluetoothVisibleUserPreference(Z)V

    goto :goto_0

    :cond_4
    const/4 p3, 0x3

    if-ne p1, p3, :cond_6

    if-eqz p2, :cond_5

    const-string p1, "User made Bluetooth discoverable, will proceed to start bluetooth server."

    .line 803
    invoke-static {v1, p1}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    invoke-static {p0}, Lorg/fdroid/fdroid/nearby/BluetoothManager;->start(Landroid/content/Context;)V

    goto :goto_0

    :cond_5
    const-string p1, "User chose not to make Bluetooth discoverable, so doing nothing"

    .line 806
    invoke-static {v1, p1}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    invoke-static {v0}, Lorg/fdroid/fdroid/nearby/SwapService;->putBluetoothVisibleUserPreference(Z)V

    goto :goto_0

    :cond_6
    const/4 p2, 0x4

    if-ne p1, p2, :cond_7

    .line 811
    invoke-direct {p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->sendFDroidApk()V

    :cond_7
    :goto_0
    return-void
.end method

.method public onAppsSelected()V
    .locals 1

    iget-boolean v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->hasPreparedLocalRepo:Z

    if-eqz v0, :cond_0

    .line 700
    invoke-virtual {p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->onLocalRepoPrepared()V

    goto :goto_0

    .line 702
    :cond_0
    invoke-virtual {p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->getSwapService()Lorg/fdroid/fdroid/nearby/SwapService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/fdroid/nearby/SwapService;->getAppsToSwap()Ljava/util/Set;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/fdroid/fdroid/nearby/LocalRepoService;->create(Landroid/content/Context;Ljava/util/Set;)V

    sget v0, Lorg/fdroid/fdroid/R$layout;->swap_connecting:I

    iput v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->currentSwapViewLayoutRes:I

    .line 704
    invoke-virtual {p0, v0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->inflateSwapView(I)V

    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->backstack:Ljava/util/Stack;

    .line 190
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->backstack:Ljava/util/Stack;

    .line 193
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    .line 194
    invoke-virtual {p0, v0, v1}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->inflateSwapView(IZ)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 245
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lorg/fdroid/fdroid/FDroidApp;

    .line 246
    invoke-virtual {v0, p0}, Lorg/fdroid/fdroid/FDroidApp;->setSecureWindow(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 248
    invoke-virtual {v0, p0}, Lorg/fdroid/fdroid/FDroidApp;->applyPureBlackBackgroundInDarkTheme(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 250
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 252
    new-instance p1, Lorg/fdroid/fdroid/nearby/SwapView;

    invoke-direct {p1, p0}, Lorg/fdroid/fdroid/nearby/SwapView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->currentView:Lorg/fdroid/fdroid/nearby/SwapView;

    .line 254
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lorg/fdroid/fdroid/nearby/SwapService;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->serviceConnection:Landroid/content/ServiceConnection;

    const/16 v1, 0x48

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "ERROR: cannot bind to SwapService!"

    const/4 v0, 0x1

    .line 256
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 257
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    sget p1, Lorg/fdroid/fdroid/R$layout;->swap_activity:I

    .line 260
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    sget p1, Lorg/fdroid/fdroid/R$id;->toolbar:I

    .line 262
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/appbar/MaterialToolbar;

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    .line 263
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    sget p1, Lorg/fdroid/fdroid/R$id;->container:I

    .line 265
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->container:Landroid/view/ViewGroup;

    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->backstack:Ljava/util/Stack;

    .line 267
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->clear()V

    .line 269
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 271
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 272
    invoke-static {p0}, Lcc/mvdan/accesspoint/WifiApControl;->getInstance(Landroid/content/Context;)Lcc/mvdan/accesspoint/WifiApControl;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->wifiApControl:Lcc/mvdan/accesspoint/WifiApControl;

    .line 274
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 276
    new-instance p1, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$SwapDebug;

    invoke-direct {p1, p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$SwapDebug;-><init>(Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;)V

    invoke-virtual {p1}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity$SwapDebug;->logStatus()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->compositeDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 281
    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->dispose()V

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->serviceConnection:Landroid/content/ServiceConnection;

    .line 282
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 283
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onLocalRepoPrepared()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->hasPreparedLocalRepo:Z

    .line 721
    invoke-virtual {p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->getSwapService()Lorg/fdroid/fdroid/nearby/SwapService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/fdroid/nearby/SwapService;->isConnectingWithPeer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 722
    invoke-direct {p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->startSwappingWithPeer()V

    goto :goto_0

    :cond_0
    sget v0, Lorg/fdroid/fdroid/R$layout;->swap_wifi_qr:I

    .line 724
    invoke-virtual {p0, v0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->inflateSwapView(I)V

    :goto_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 423
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 424
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->newIntent:Z

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 408
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->bluetoothScanModeChanged:Landroid/content/BroadcastReceiver;

    .line 410
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->onWifiStateChanged:Landroid/content/BroadcastReceiver;

    .line 412
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->localRepoStatus:Landroid/content/BroadcastReceiver;

    .line 413
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->bonjourFound:Landroid/content/BroadcastReceiver;

    .line 414
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->bonjourRemoved:Landroid/content/BroadcastReceiver;

    .line 415
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->bonjourStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 416
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->bluetoothFound:Landroid/content/BroadcastReceiver;

    .line 417
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->bluetoothStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 418
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .line 288
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 290
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->currentView:Lorg/fdroid/fdroid/nearby/SwapView;

    .line 291
    invoke-virtual {v1}, Lorg/fdroid/fdroid/nearby/SwapView;->getLayoutResId()I

    move-result v1

    sget v2, Lorg/fdroid/fdroid/R$layout;->swap_select_apps:I

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    sget v1, Lorg/fdroid/fdroid/R$menu;->swap_next_search:I

    .line 292
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 293
    invoke-virtual {p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->getSwapService()Lorg/fdroid/fdroid/nearby/SwapService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/fdroid/nearby/SwapService;->isConnectingWithPeer()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lorg/fdroid/fdroid/R$string;->next:I

    sget v1, Lorg/fdroid/fdroid/R$drawable;->ic_nearby:I

    .line 294
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->setUpNextButton(Landroid/view/Menu;ILjava/lang/Integer;)V

    goto :goto_0

    :cond_0
    sget v0, Lorg/fdroid/fdroid/R$string;->next:I

    const/4 v1, 0x0

    .line 296
    invoke-direct {p0, p1, v0, v1}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->setUpNextButton(Landroid/view/Menu;ILjava/lang/Integer;)V

    .line 298
    :goto_0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->setUpSearchView(Landroid/view/Menu;)V

    return v3

    :cond_1
    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->currentView:Lorg/fdroid/fdroid/nearby/SwapView;

    .line 300
    invoke-virtual {v1}, Lorg/fdroid/fdroid/nearby/SwapView;->getLayoutResId()I

    move-result v1

    sget v2, Lorg/fdroid/fdroid/R$layout;->swap_success:I

    if-ne v1, v2, :cond_2

    sget v1, Lorg/fdroid/fdroid/R$menu;->swap_search:I

    .line 301
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 302
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->setUpSearchView(Landroid/view/Menu;)V

    return v3

    :cond_2
    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->currentView:Lorg/fdroid/fdroid/nearby/SwapView;

    .line 304
    invoke-virtual {v1}, Lorg/fdroid/fdroid/nearby/SwapView;->getLayoutResId()I

    move-result v1

    sget v2, Lorg/fdroid/fdroid/R$layout;->swap_join_wifi:I

    if-ne v1, v2, :cond_3

    sget v1, Lorg/fdroid/fdroid/R$menu;->swap_next:I

    .line 305
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    sget v0, Lorg/fdroid/fdroid/R$string;->next:I

    sget v1, Lorg/fdroid/fdroid/R$drawable;->ic_arrow_forward:I

    .line 306
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->setUpNextButton(Landroid/view/Menu;ILjava/lang/Integer;)V

    return v3

    .line 310
    :cond_3
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onResume()V
    .locals 4

    .line 379
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->onWifiStateChanged:Landroid/content/BroadcastReceiver;

    .line 381
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "org.fdroid.fdroid.action.WIFI_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->localRepoStatus:Landroid/content/BroadcastReceiver;

    .line 383
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "localRepoStatusAction"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->bonjourFound:Landroid/content/BroadcastReceiver;

    .line 384
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "BonjourNewPeer"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->bonjourRemoved:Landroid/content/BroadcastReceiver;

    .line 385
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "BonjourPeerRemoved"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->bonjourStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 386
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "BonjourStatus"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->bluetoothFound:Landroid/content/BroadcastReceiver;

    .line 387
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "BluetoothNewPeer"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->bluetoothStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 388
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "BluetoothStatus"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->bluetoothScanModeChanged:Landroid/content/BroadcastReceiver;

    .line 390
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 393
    invoke-direct {p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->checkIncomingIntent()V

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->service:Lorg/fdroid/fdroid/nearby/SwapService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->newIntent:Z

    if-eqz v0, :cond_0

    .line 397
    invoke-direct {p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->showRelevantView()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->newIntent:Z

    :cond_0
    iget v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->currentSwapViewLayoutRes:I

    sget v1, Lorg/fdroid/fdroid/R$layout;->swap_start_swap:I

    if-ne v0, v1, :cond_1

    .line 402
    invoke-direct {p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->updateWifiBannerVisibility()V

    :cond_1
    return-void
.end method

.method public onToolbarBackPressed()V
    .locals 3

    sget v0, Lorg/fdroid/fdroid/R$layout;->swap_start_swap:I

    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->currentView:Lorg/fdroid/fdroid/nearby/SwapView;

    .line 206
    invoke-virtual {v1}, Lorg/fdroid/fdroid/nearby/SwapView;->getLayoutResId()I

    move-result v1

    sget v2, Lorg/fdroid/fdroid/R$layout;->swap_confirm_receive:I

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->backstack:Ljava/util/Stack;

    .line 207
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto/16 :goto_1

    :cond_0
    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->currentView:Lorg/fdroid/fdroid/nearby/SwapView;

    .line 208
    invoke-virtual {v1}, Lorg/fdroid/fdroid/nearby/SwapView;->getLayoutResId()I

    move-result v1

    sget v2, Lorg/fdroid/fdroid/R$layout;->swap_connecting:I

    if-ne v1, v2, :cond_1

    sget v0, Lorg/fdroid/fdroid/R$layout;->swap_select_apps:I

    goto/16 :goto_1

    :cond_1
    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->currentView:Lorg/fdroid/fdroid/nearby/SwapView;

    .line 210
    invoke-virtual {v1}, Lorg/fdroid/fdroid/nearby/SwapView;->getLayoutResId()I

    move-result v1

    sget v2, Lorg/fdroid/fdroid/R$layout;->swap_join_wifi:I

    if-ne v1, v2, :cond_2

    sget v0, Lorg/fdroid/fdroid/R$layout;->swap_start_swap:I

    goto/16 :goto_1

    :cond_2
    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->currentView:Lorg/fdroid/fdroid/nearby/SwapView;

    .line 212
    invoke-virtual {v1}, Lorg/fdroid/fdroid/nearby/SwapView;->getLayoutResId()I

    move-result v1

    sget v2, Lorg/fdroid/fdroid/R$layout;->swap_select_apps:I

    if-ne v1, v2, :cond_5

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->backstack:Ljava/util/Stack;

    .line 213
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->backstack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v1, Lorg/fdroid/fdroid/R$layout;->swap_start_swap:I

    if-ne v0, v1, :cond_3

    :goto_0
    move v0, v1

    goto/16 :goto_1

    .line 215
    :cond_3
    invoke-virtual {p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->getSwapService()Lorg/fdroid/fdroid/nearby/SwapService;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->getSwapService()Lorg/fdroid/fdroid/nearby/SwapService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/fdroid/nearby/SwapService;->isConnectingWithPeer()Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Lorg/fdroid/fdroid/R$layout;->swap_success:I

    goto :goto_1

    :cond_4
    sget v0, Lorg/fdroid/fdroid/R$layout;->swap_join_wifi:I

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->currentView:Lorg/fdroid/fdroid/nearby/SwapView;

    .line 220
    invoke-virtual {v1}, Lorg/fdroid/fdroid/nearby/SwapView;->getLayoutResId()I

    move-result v1

    sget v2, Lorg/fdroid/fdroid/R$layout;->swap_send_fdroid:I

    if-ne v1, v2, :cond_6

    sget v0, Lorg/fdroid/fdroid/R$layout;->swap_start_swap:I

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->currentView:Lorg/fdroid/fdroid/nearby/SwapView;

    .line 222
    invoke-virtual {v1}, Lorg/fdroid/fdroid/nearby/SwapView;->getLayoutResId()I

    move-result v1

    sget v2, Lorg/fdroid/fdroid/R$layout;->swap_start_swap:I

    if-ne v1, v2, :cond_8

    .line 223
    invoke-virtual {p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->getSwapService()Lorg/fdroid/fdroid/nearby/SwapService;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->getSwapService()Lorg/fdroid/fdroid/nearby/SwapService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/fdroid/nearby/SwapService;->isConnectingWithPeer()Z

    move-result v0

    if-eqz v0, :cond_7

    sget v0, Lorg/fdroid/fdroid/R$layout;->swap_success:I

    goto :goto_1

    .line 226
    :cond_7
    invoke-static {p0}, Lorg/fdroid/fdroid/nearby/SwapService;->stop(Landroid/content/Context;)V

    .line 227
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_8
    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->currentView:Lorg/fdroid/fdroid/nearby/SwapView;

    .line 230
    invoke-virtual {v1}, Lorg/fdroid/fdroid/nearby/SwapView;->getLayoutResId()I

    move-result v1

    sget v2, Lorg/fdroid/fdroid/R$layout;->swap_success:I

    if-ne v1, v2, :cond_9

    sget v0, Lorg/fdroid/fdroid/R$layout;->swap_start_swap:I

    goto :goto_1

    :cond_9
    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->currentView:Lorg/fdroid/fdroid/nearby/SwapView;

    .line 232
    invoke-virtual {v1}, Lorg/fdroid/fdroid/nearby/SwapView;->getLayoutResId()I

    move-result v1

    sget v2, Lorg/fdroid/fdroid/R$layout;->swap_wifi_qr:I

    if-ne v1, v2, :cond_b

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->backstack:Ljava/util/Stack;

    .line 233
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->backstack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v1, Lorg/fdroid/fdroid/R$layout;->swap_start_swap:I

    if-ne v0, v1, :cond_a

    goto :goto_0

    :cond_a
    sget v0, Lorg/fdroid/fdroid/R$layout;->swap_join_wifi:I

    :cond_b
    :goto_1
    iput v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->currentSwapViewLayoutRes:I

    .line 240
    invoke-virtual {p0, v0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->inflateSwapView(I)V

    return-void
.end method

.method public requestWriteSettingsPermission()V
    .locals 3

    .line 654
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.settings.action.MANAGE_WRITE_SETTINGS"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    .line 656
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v1, 0x5

    .line 657
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public sendFDroid()V
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_1

    .line 662
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/fdroid/fdroid/nearby/LocalHTTPDManager;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 665
    :cond_0
    invoke-virtual {p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->sendFDroidBluetooth()V

    goto :goto_1

    :cond_1
    :goto_0
    sget v0, Lorg/fdroid/fdroid/R$layout;->swap_send_fdroid:I

    .line 663
    invoke-virtual {p0, v0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->inflateSwapView(I)V

    :goto_1
    return-void
.end method

.method public sendFDroidBluetooth()V
    .locals 3

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 675
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 676
    invoke-direct {p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->sendFDroidApk()V

    goto :goto_0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_2

    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    .line 678
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 679
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.REQUEST_DISCOVERABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.extra.DISCOVERABLE_DURATION"

    const/16 v2, 0x78

    .line 680
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x4

    .line 681
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->requestPermissionLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 683
    invoke-virtual {v1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public showIntro()V
    .locals 2

    .line 631
    invoke-virtual {p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->getSwapService()Lorg/fdroid/fdroid/nearby/SwapService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/fdroid/fdroid/nearby/SwapService;->swapWith(Lorg/fdroid/fdroid/nearby/peers/Peer;)V

    .line 633
    invoke-static {p0}, Lorg/fdroid/fdroid/nearby/LocalRepoService;->create(Landroid/content/Context;)V

    sget v0, Lorg/fdroid/fdroid/R$layout;->swap_start_swap:I

    .line 635
    invoke-virtual {p0, v0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->inflateSwapView(I)V

    return-void
.end method

.method public showTetheringSettings()V
    .locals 4

    .line 644
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 645
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 646
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.TetherSettings"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 649
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 650
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public startBluetoothSwap()V
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_1

    .line 850
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    const-string v1, "SwapWorkflowActivity"

    if-eqz v0, :cond_0

    const-string v0, "Bluetooth enabled, will check if device is discoverable with device."

    .line 851
    invoke-static {v1, v0}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    invoke-direct {p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->ensureBluetoothDiscoverableThenStart()V

    goto :goto_0

    :cond_0
    const-string v0, "Bluetooth disabled, asking user to enable it."

    .line 854
    invoke-static {v1, v0}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 856
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public swapWith(Lorg/fdroid/fdroid/nearby/NewRepoConfig;)V
    .locals 2

    .line 747
    invoke-virtual {p1}, Lorg/fdroid/fdroid/nearby/NewRepoConfig;->toPeer()Lorg/fdroid/fdroid/nearby/peers/WifiPeer;

    move-result-object p1

    iget v0, p0, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->currentSwapViewLayoutRes:I

    sget v1, Lorg/fdroid/fdroid/R$layout;->swap_start_swap:I

    if-eq v0, v1, :cond_1

    sget v1, Lorg/fdroid/fdroid/R$layout;->swap_confirm_receive:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 753
    :cond_0
    invoke-virtual {p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->getSwapService()Lorg/fdroid/fdroid/nearby/SwapService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/fdroid/fdroid/nearby/SwapService;->swapWith(Lorg/fdroid/fdroid/nearby/peers/Peer;)V

    .line 754
    invoke-direct {p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->startSwappingWithPeer()V

    goto :goto_1

    .line 751
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->swapWith(Lorg/fdroid/fdroid/nearby/peers/Peer;)V

    :goto_1
    return-void
.end method

.method public swapWith(Lorg/fdroid/fdroid/nearby/peers/Peer;)V
    .locals 1

    .line 734
    invoke-virtual {p0}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->getSwapService()Lorg/fdroid/fdroid/nearby/SwapService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/fdroid/fdroid/nearby/SwapService;->swapWith(Lorg/fdroid/fdroid/nearby/peers/Peer;)V

    sget p1, Lorg/fdroid/fdroid/R$layout;->swap_select_apps:I

    .line 735
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/nearby/SwapWorkflowActivity;->inflateSwapView(I)V

    return-void
.end method
