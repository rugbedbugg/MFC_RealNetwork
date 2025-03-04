.class abstract Landroidx/work/impl/background/systemjob/SystemJobService$Api31Impl;
.super Ljava/lang/Object;
.source "SystemJobService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/background/systemjob/SystemJobService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api31Impl"
.end annotation


# direct methods
.method static getStopReason(Landroid/app/job/JobParameters;)I
    .locals 0

    .line 279
    invoke-virtual {p0}, Landroid/app/job/JobParameters;->getStopReason()I

    move-result p0

    invoke-static {p0}, Landroidx/work/impl/background/systemjob/SystemJobService;->stopReason(I)I

    move-result p0

    return p0
.end method
