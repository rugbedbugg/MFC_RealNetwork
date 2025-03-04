.class Lorg/fdroid/fdroid/nearby/SwapService$1;
.super Ljava/util/TimerTask;
.source "SwapService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/fdroid/nearby/SwapService;->startPollingConnectedSwapRepo()V
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

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapService$1;->this$0:Lorg/fdroid/fdroid/nearby/SwapService;

    .line 546
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapService$1;->this$0:Lorg/fdroid/fdroid/nearby/SwapService;

    .line 549
    invoke-static {v0}, Lorg/fdroid/fdroid/nearby/SwapService;->-$$Nest$fgetpeer(Lorg/fdroid/fdroid/nearby/SwapService;)Lorg/fdroid/fdroid/nearby/peers/Peer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapService$1;->this$0:Lorg/fdroid/fdroid/nearby/SwapService;

    .line 550
    invoke-static {v0}, Lorg/fdroid/fdroid/nearby/SwapService;->-$$Nest$fgetpeer(Lorg/fdroid/fdroid/nearby/SwapService;)Lorg/fdroid/fdroid/nearby/peers/Peer;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/fdroid/fdroid/nearby/SwapService;->-$$Nest$mconnectTo(Lorg/fdroid/fdroid/nearby/SwapService;Lorg/fdroid/fdroid/nearby/peers/Peer;)V

    :cond_0
    return-void
.end method
