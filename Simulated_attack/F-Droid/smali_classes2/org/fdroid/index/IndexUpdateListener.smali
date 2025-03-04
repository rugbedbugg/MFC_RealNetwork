.class public interface abstract Lorg/fdroid/index/IndexUpdateListener;
.super Ljava/lang/Object;
.source "IndexUpdater.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007H&J \u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000bH&\u00a8\u0006\r"
    }
    d2 = {
        "Lorg/fdroid/index/IndexUpdateListener;",
        "",
        "onDownloadProgress",
        "",
        "repo",
        "Lorg/fdroid/database/Repository;",
        "bytesRead",
        "",
        "totalBytes",
        "onUpdateProgress",
        "appsProcessed",
        "",
        "totalApps",
        "database_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract onDownloadProgress(Lorg/fdroid/database/Repository;JJ)V
.end method

.method public abstract onUpdateProgress(Lorg/fdroid/database/Repository;II)V
.end method
