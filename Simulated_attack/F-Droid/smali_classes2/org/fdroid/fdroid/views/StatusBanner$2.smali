.class Lorg/fdroid/fdroid/views/StatusBanner$2;
.super Landroid/content/BroadcastReceiver;
.source "StatusBanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/fdroid/views/StatusBanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fdroid/fdroid/views/StatusBanner;


# direct methods
.method constructor <init>(Lorg/fdroid/fdroid/views/StatusBanner;)V
    .locals 0

    iput-object p1, p0, Lorg/fdroid/fdroid/views/StatusBanner$2;->this$0:Lorg/fdroid/fdroid/views/StatusBanner;

    .line 186
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p2, p0, Lorg/fdroid/fdroid/views/StatusBanner$2;->this$0:Lorg/fdroid/fdroid/views/StatusBanner;

    .line 189
    invoke-static {p1}, Lorg/fdroid/fdroid/net/ConnectivityMonitorService;->getNetworkState(Landroid/content/Context;)I

    move-result p1

    invoke-static {p2, p1}, Lorg/fdroid/fdroid/views/StatusBanner;->-$$Nest$fputnetworkState(Lorg/fdroid/fdroid/views/StatusBanner;I)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/StatusBanner$2;->this$0:Lorg/fdroid/fdroid/views/StatusBanner;

    .line 190
    invoke-static {p1}, Lorg/fdroid/fdroid/views/StatusBanner;->-$$Nest$msetBannerTextAndVisibility(Lorg/fdroid/fdroid/views/StatusBanner;)V

    return-void
.end method
