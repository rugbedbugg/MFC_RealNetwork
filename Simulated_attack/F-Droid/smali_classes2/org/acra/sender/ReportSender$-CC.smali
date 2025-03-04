.class public abstract synthetic Lorg/acra/sender/ReportSender$-CC;
.super Ljava/lang/Object;
.source "ReportSender.kt"


# direct methods
.method public static $default$requiresForeground(Lorg/acra/sender/ReportSender;)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public static $default$send(Lorg/acra/sender/ReportSender;Landroid/content/Context;Lorg/acra/data/CrashReportData;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "context"

    .line 0
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorContent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-interface {p0, p1, p2}, Lorg/acra/sender/ReportSender;->send(Landroid/content/Context;Lorg/acra/data/CrashReportData;)V

    return-void
.end method
