.class Lorg/fdroid/fdroid/nearby/UsbDeviceAttachedReceiver$1;
.super Landroid/database/ContentObserver;
.source "UsbDeviceAttachedReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/fdroid/nearby/UsbDeviceAttachedReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fdroid/fdroid/nearby/UsbDeviceAttachedReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lorg/fdroid/fdroid/nearby/UsbDeviceAttachedReceiver;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/UsbDeviceAttachedReceiver$1;->this$0:Lorg/fdroid/fdroid/nearby/UsbDeviceAttachedReceiver;

    iput-object p3, p0, Lorg/fdroid/fdroid/nearby/UsbDeviceAttachedReceiver$1;->val$context:Landroid/content/Context;

    .line 57
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/UsbDeviceAttachedReceiver$1;->val$context:Landroid/content/Context;

    .line 61
    invoke-static {p1}, Lorg/fdroid/fdroid/views/main/NearbyViewBinder;->updateUsbOtg(Landroid/content/Context;)V

    return-void
.end method
