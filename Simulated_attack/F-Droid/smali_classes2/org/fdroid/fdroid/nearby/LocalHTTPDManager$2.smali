.class Lorg/fdroid/fdroid/nearby/LocalHTTPDManager$2;
.super Landroid/os/Handler;
.source "LocalHTTPDManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/fdroid/nearby/LocalHTTPDManager;->start(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 83
    invoke-static {}, Lorg/fdroid/fdroid/nearby/LocalHTTPDManager;->-$$Nest$sfgetlocalHttpd()Lorg/fdroid/fdroid/nearby/LocalHTTPD;

    move-result-object p1

    invoke-virtual {p1}, Lfi/iki/elonen/NanoHTTPD;->stop()V

    .line 84
    invoke-static {}, Lorg/fdroid/fdroid/nearby/LocalHTTPDManager;->-$$Nest$sfgethandlerThread()Landroid/os/HandlerThread;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z

    const/4 p1, 0x0

    .line 85
    invoke-static {p1}, Lorg/fdroid/fdroid/nearby/LocalHTTPDManager;->-$$Nest$sfputhandlerThread(Landroid/os/HandlerThread;)V

    return-void
.end method
