.class Lorg/fdroid/fdroid/installer/InstallHistoryService$1;
.super Landroid/content/BroadcastReceiver;
.source "InstallHistoryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/fdroid/installer/InstallHistoryService;->register(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 78
    invoke-static {p1, p2}, Lorg/fdroid/fdroid/installer/InstallHistoryService;->-$$Nest$smqueue(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
