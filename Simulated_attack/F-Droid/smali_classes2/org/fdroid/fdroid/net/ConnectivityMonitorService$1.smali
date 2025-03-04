.class Lorg/fdroid/fdroid/net/ConnectivityMonitorService$1;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/fdroid/net/ConnectivityMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 47
    invoke-static {p1}, Lorg/fdroid/fdroid/net/ConnectivityMonitorService;->start(Landroid/content/Context;)V

    return-void
.end method
