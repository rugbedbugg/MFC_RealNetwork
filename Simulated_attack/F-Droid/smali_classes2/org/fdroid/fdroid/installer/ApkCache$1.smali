.class Lorg/fdroid/fdroid/installer/ApkCache$1;
.super Ljava/lang/Thread;
.source "ApkCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/fdroid/installer/ApkCache;->copyApkToFiles(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lorg/fdroid/fdroid/data/SanitizedFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$apkToDelete:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lorg/fdroid/fdroid/installer/ApkCache$1;->val$apkToDelete:Ljava/io/File;

    .line 113
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/16 v0, 0x13

    .line 116
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    const-wide/32 v0, 0x124f80

    .line 118
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    iget-object v0, p0, Lorg/fdroid/fdroid/installer/ApkCache$1;->val$apkToDelete:Ljava/io/File;

    .line 121
    invoke-static {v0}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/fdroid/fdroid/installer/ApkCache$1;->val$apkToDelete:Ljava/io/File;

    invoke-static {v1}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 122
    throw v0

    :goto_0
    return-void
.end method
