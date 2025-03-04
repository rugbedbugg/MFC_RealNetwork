.class Lorg/fdroid/fdroid/work/CleanCacheWorker$Impl21;
.super Ljava/lang/Object;
.source "CleanCacheWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/fdroid/work/CleanCacheWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl21"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static deleteIfOld(Ljava/io/File;J)V
    .locals 5

    const-string v0, "CleanCacheWorker"

    if-eqz p0, :cond_2

    .line 227
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 232
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/system/Os;->lstat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v1

    .line 233
    iget-wide v1, v1, Landroid/system/StructStat;->st_atime:J

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    cmp-long p1, v1, p1

    if-gez p1, :cond_1

    .line 234
    invoke-static {p0}, Lorg/fdroid/fdroid/work/CleanCacheWorker;->-$$Nest$smdeleteFileAndLog(Ljava/io/File;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "An exception occurred while deleting: "

    .line 237
    invoke-static {v0, p1, p0}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    :goto_1
    const-string p0, "No files to be cleared."

    .line 228
    invoke-static {v0, p0}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
