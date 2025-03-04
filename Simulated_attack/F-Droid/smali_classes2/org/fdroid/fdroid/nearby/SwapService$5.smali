.class Lorg/fdroid/fdroid/nearby/SwapService$5;
.super Landroid/content/BroadcastReceiver;
.source "SwapService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/fdroid/nearby/SwapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fdroid/fdroid/nearby/SwapService;


# direct methods
.method constructor <init>(Lorg/fdroid/fdroid/nearby/SwapService;)V
    .locals 0

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapService$5;->this$0:Lorg/fdroid/fdroid/nearby/SwapService;

    .line 627
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapService$5;->this$0:Lorg/fdroid/fdroid/nearby/SwapService;

    .line 630
    invoke-static {p1}, Lorg/fdroid/fdroid/nearby/SwapService;->-$$Nest$fgetactivePeers(Lorg/fdroid/fdroid/nearby/SwapService;)Ljava/util/Set;

    move-result-object p1

    const-string v0, "extraBluetoothPeer"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lorg/fdroid/fdroid/nearby/peers/Peer;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
