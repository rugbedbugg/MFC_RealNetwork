.class public Lorg/fdroid/fdroid/receiver/DeviceStorageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DeviceStorageReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    .line 19
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.action.DEVICE_STORAGE_LOW"

    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 21
    invoke-static {p1}, Lorg/fdroid/fdroid/Utils;->getImageCacheDirAvailableMemory(Landroid/content/Context;)J

    move-result-wide v0

    .line 22
    invoke-static {p1}, Lorg/fdroid/fdroid/Utils;->getImageCacheDirTotalMemory(Landroid/content/Context;)J

    move-result-wide v2

    .line 21
    invoke-static {v0, v1, v2, v3}, Lorg/fdroid/fdroid/Utils;->getPercent(JJ)I

    move-result p2

    .line 23
    invoke-static {p1}, Lorg/fdroid/fdroid/work/CleanCacheWorker;->force(Landroid/content/Context;)V

    const/4 v0, 0x2

    if-gt p2, v0, :cond_1

    .line 25
    invoke-static {p1}, Lorg/fdroid/fdroid/DeleteCacheService;->deleteAll(Landroid/content/Context;)V

    :cond_1
    return-void
.end method
