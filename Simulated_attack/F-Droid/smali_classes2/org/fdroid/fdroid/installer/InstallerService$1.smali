.class Lorg/fdroid/fdroid/installer/InstallerService$1;
.super Ljava/lang/Thread;
.source "InstallerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/fdroid/installer/InstallerService;->onHandleWork(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fdroid/fdroid/installer/InstallerService;

.field final synthetic val$apk:Lorg/fdroid/fdroid/data/Apk;


# direct methods
.method constructor <init>(Lorg/fdroid/fdroid/installer/InstallerService;Lorg/fdroid/fdroid/data/Apk;)V
    .locals 0

    iput-object p1, p0, Lorg/fdroid/fdroid/installer/InstallerService$1;->this$0:Lorg/fdroid/fdroid/installer/InstallerService;

    iput-object p2, p0, Lorg/fdroid/fdroid/installer/InstallerService$1;->val$apk:Lorg/fdroid/fdroid/data/Apk;

    .line 84
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, 0x1

    .line 87
    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setPriority(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/installer/InstallerService$1;->val$apk:Lorg/fdroid/fdroid/data/Apk;

    .line 88
    invoke-virtual {v0}, Lorg/fdroid/fdroid/data/Apk;->getMainObbFile()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 92
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 96
    :cond_1
    new-instance v1, Lorg/apache/commons/io/filefilter/WildcardFileFilter;

    const-string v2, "*.obb"

    invoke-direct {v1, v2}, Lorg/apache/commons/io/filefilter/WildcardFileFilter;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 101
    :cond_2
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 102
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Uninstalling OBB "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "InstallerService"

    invoke-static {v5, v4}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-static {v3}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
