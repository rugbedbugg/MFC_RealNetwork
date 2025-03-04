.class final Linfo/guardianproject/netcipher/proxy/OrbotHelper$1;
.super Ljava/lang/Object;
.source "OrbotHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/guardianproject/netcipher/proxy/OrbotHelper;->requestStartTor(Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Linfo/guardianproject/netcipher/proxy/OrbotHelper$1;->val$context:Landroid/content/Context;

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    iget-object p1, p0, Linfo/guardianproject/netcipher/proxy/OrbotHelper$1;->val$context:Landroid/content/Context;

    .line 285
    invoke-static {p1}, Linfo/guardianproject/netcipher/proxy/OrbotHelper;->getTorStartIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object p1, p0, Linfo/guardianproject/netcipher/proxy/OrbotHelper$1;->val$context:Landroid/content/Context;

    .line 286
    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Linfo/guardianproject/netcipher/proxy/OrbotHelper$1;->val$context:Landroid/content/Context;

    .line 292
    invoke-static {p1}, Linfo/guardianproject/netcipher/proxy/OrbotHelper;->getTorStartIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
