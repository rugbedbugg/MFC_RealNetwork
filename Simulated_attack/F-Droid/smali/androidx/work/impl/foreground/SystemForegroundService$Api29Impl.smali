.class abstract Landroidx/work/impl/foreground/SystemForegroundService$Api29Impl;
.super Ljava/lang/Object;
.source "SystemForegroundService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/foreground/SystemForegroundService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api29Impl"
.end annotation


# direct methods
.method static startForeground(Landroid/app/Service;ILandroid/app/Notification;I)V
    .locals 0

    .line 179
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;I)V

    return-void
.end method
