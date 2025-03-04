.class public Lorg/acra/sender/NullSender;
.super Ljava/lang/Object;
.source "NullSender.kt"

# interfaces
.implements Lorg/acra/sender/ReportSender;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic requiresForeground()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/acra/sender/ReportSender$-CC;->$default$requiresForeground(Lorg/acra/sender/ReportSender;)Z

    move-result v0

    return v0
.end method

.method public send(Landroid/content/Context;Lorg/acra/data/CrashReportData;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorContent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sget-object p2, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " reports will NOT be sent - no valid ReportSender was found!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-interface {p2, v0, p1}, Lorg/acra/log/ACRALog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public synthetic send(Landroid/content/Context;Lorg/acra/data/CrashReportData;Landroid/os/Bundle;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/acra/sender/ReportSender$-CC;->$default$send(Lorg/acra/sender/ReportSender;Landroid/content/Context;Lorg/acra/data/CrashReportData;Landroid/os/Bundle;)V

    return-void
.end method
