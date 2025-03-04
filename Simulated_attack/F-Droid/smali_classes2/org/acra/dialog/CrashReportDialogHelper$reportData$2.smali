.class final Lorg/acra/dialog/CrashReportDialogHelper$reportData$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CrashReportDialogHelper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/acra/dialog/CrashReportDialogHelper;-><init>(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/acra/dialog/CrashReportDialogHelper;


# direct methods
.method constructor <init>(Lorg/acra/dialog/CrashReportDialogHelper;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/acra/dialog/CrashReportDialogHelper$reportData$2;->this$0:Lorg/acra/dialog/CrashReportDialogHelper;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 82
    invoke-virtual {p0}, Lorg/acra/dialog/CrashReportDialogHelper$reportData$2;->invoke()Lorg/acra/data/CrashReportData;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lorg/acra/data/CrashReportData;
    .locals 2

    .line 84
    :try_start_0
    new-instance v0, Lorg/acra/file/CrashReportPersister;

    invoke-direct {v0}, Lorg/acra/file/CrashReportPersister;-><init>()V

    iget-object v1, p0, Lorg/acra/dialog/CrashReportDialogHelper$reportData$2;->this$0:Lorg/acra/dialog/CrashReportDialogHelper;

    invoke-static {v1}, Lorg/acra/dialog/CrashReportDialogHelper;->access$getReportFile$p(Lorg/acra/dialog/CrashReportDialogHelper;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/acra/file/CrashReportPersister;->load(Ljava/io/File;)Lorg/acra/data/CrashReportData;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 86
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
