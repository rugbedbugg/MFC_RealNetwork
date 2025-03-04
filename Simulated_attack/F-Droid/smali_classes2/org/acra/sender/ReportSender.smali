.class public interface abstract Lorg/acra/sender/ReportSender;
.super Ljava/lang/Object;
.source "ReportSender.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/acra/sender/ReportSender$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/acra/sender/ReportSender$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    sget-object v0, Lorg/acra/sender/ReportSender$Companion;->$$INSTANCE:Lorg/acra/sender/ReportSender$Companion;

    sput-object v0, Lorg/acra/sender/ReportSender;->Companion:Lorg/acra/sender/ReportSender$Companion;

    return-void
.end method


# virtual methods
.method public abstract requiresForeground()Z
.end method

.method public abstract send(Landroid/content/Context;Lorg/acra/data/CrashReportData;)V
.end method

.method public abstract send(Landroid/content/Context;Lorg/acra/data/CrashReportData;Landroid/os/Bundle;)V
.end method
