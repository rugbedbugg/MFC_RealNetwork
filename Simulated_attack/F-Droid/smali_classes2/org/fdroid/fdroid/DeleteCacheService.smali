.class public Lorg/fdroid/fdroid/DeleteCacheService;
.super Landroidx/core/app/JobIntentService;
.source "DeleteCacheService.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "DeleteCacheService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroidx/core/app/JobIntentService;-><init>()V

    return-void
.end method

.method public static deleteAll(Landroid/content/Context;)V
    .locals 3

    .line 25
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/fdroid/fdroid/DeleteCacheService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v2, 0x523432

    .line 26
    invoke-static {p0, v1, v2, v0}, Landroidx/core/app/JobIntentService;->enqueueWork(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected onHandleWork(Landroid/content/Intent;)V
    .locals 3

    const/16 p1, 0x13

    .line 31
    invoke-static {p1}, Landroid/os/Process;->setThreadPriority(I)V

    const-string p1, "DeleteCacheService"

    const-string v0, "Deleting all cached contents!"

    .line 32
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/Glide;->clearDiskCache()V

    .line 35
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    .line 36
    invoke-static {p1}, Lorg/apache/commons/io/FileUtils;->deleteDirectory(Ljava/io/File;)V

    .line 37
    invoke-static {p0}, Landroidx/core/content/ContextCompat;->getExternalCacheDirs(Landroid/content/Context;)[Ljava/io/File;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 38
    invoke-static {v2}, Lorg/apache/commons/io/FileUtils;->deleteDirectory(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    :cond_0
    return-void
.end method
