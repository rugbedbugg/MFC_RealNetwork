.class public Lorg/acra/interaction/DialogInteraction;
.super Lorg/acra/plugins/HasConfigPlugin;
.source "DialogInteraction.kt"

# interfaces
.implements Lorg/acra/interaction/ReportInteraction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/acra/interaction/DialogInteraction$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0017\u0018\u0000 \u000e2\u00020\u00012\u00020\u0002:\u0001\u000eB\u0005\u00a2\u0006\u0002\u0010\u0003J \u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0012J \u0010\u000c\u001a\u00020\r2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "Lorg/acra/interaction/DialogInteraction;",
        "Lorg/acra/plugins/HasConfigPlugin;",
        "Lorg/acra/interaction/ReportInteraction;",
        "()V",
        "createCrashReportDialogIntent",
        "Landroid/content/Intent;",
        "context",
        "Landroid/content/Context;",
        "config",
        "Lorg/acra/config/CoreConfiguration;",
        "reportFile",
        "Ljava/io/File;",
        "performInteraction",
        "",
        "Companion",
        "acra-dialog_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lorg/acra/interaction/DialogInteraction$Companion;

.field public static final EXTRA_REPORT_CONFIG:Ljava/lang/String; = "REPORT_CONFIG"

.field public static final EXTRA_REPORT_FILE:Ljava/lang/String; = "REPORT_FILE"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lorg/acra/interaction/DialogInteraction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/acra/interaction/DialogInteraction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/acra/interaction/DialogInteraction;->Companion:Lorg/acra/interaction/DialogInteraction$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-class v0, Lorg/acra/config/DialogConfiguration;

    .line 35
    invoke-direct {p0, v0}, Lorg/acra/plugins/HasConfigPlugin;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private createCrashReportDialogIntent(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;Ljava/io/File;)Landroid/content/Intent;
    .locals 4

    .line 7
    sget-boolean v0, Lorg/acra/ACRA;->DEV_LOGGING:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating DialogIntent for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-interface {v0, v1, v2}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/acra/config/DialogConfiguration;

    .line 29
    invoke-static {p2, v1}, Lorg/acra/config/ConfigUtils;->getPluginConfiguration(Lorg/acra/config/CoreConfiguration;Ljava/lang/Class;)Lorg/acra/config/Configuration;

    move-result-object v1

    check-cast v1, Lorg/acra/config/DialogConfiguration;

    .line 57
    invoke-virtual {v1}, Lorg/acra/config/DialogConfiguration;->getReportDialogClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "REPORT_FILE"

    .line 58
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "REPORT_CONFIG"

    .line 59
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public performInteraction(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;Ljava/io/File;)Z
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reportFile"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    new-instance v0, Lorg/acra/prefs/SharedPreferencesFactory;

    invoke-direct {v0, p1, p2}, Lorg/acra/prefs/SharedPreferencesFactory;-><init>(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;)V

    invoke-virtual {v0}, Lorg/acra/prefs/SharedPreferencesFactory;->create()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "acra.alwaysaccept"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 7
    :cond_0
    sget-boolean v0, Lorg/acra/ACRA;->DEV_LOGGING:Z

    if-eqz v0, :cond_1

    sget-object v0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    .line 43
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating CrashReportDialog for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-interface {v0, v1, v3}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lorg/acra/interaction/DialogInteraction;->createCrashReportDialogIntent(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;Ljava/io/File;)Landroid/content/Intent;

    move-result-object p2

    const/high16 p3, 0x10000000

    .line 45
    invoke-virtual {p2, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 46
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v2
.end method
