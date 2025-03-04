.class public final Lorg/fdroid/fdroid/nearby/LocalRepoManager;
.super Ljava/lang/Object;
.source "LocalRepoManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LocalRepoManager"

.field public static final WEB_ROOT_ASSET_FILES:[Ljava/lang/String;

.field private static localRepoManager:Lorg/fdroid/fdroid/nearby/LocalRepoManager;


# instance fields
.field private final apps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fdroid/fdroid/data/App;",
            ">;"
        }
    .end annotation
.end field

.field private final assetManager:Landroid/content/res/AssetManager;

.field private final context:Landroid/content/Context;

.field private final fdroidDir:Lorg/fdroid/fdroid/data/SanitizedFile;

.field private final fdroidDirCaps:Lorg/fdroid/fdroid/data/SanitizedFile;

.field private final fdroidPackageName:Ljava/lang/String;

.field private final indexJar:Lorg/fdroid/fdroid/data/SanitizedFile;

.field private final indexJarUnsigned:Lorg/fdroid/fdroid/data/SanitizedFile;

.field private final pm:Landroid/content/pm/PackageManager;

.field private final repoDir:Lorg/fdroid/fdroid/data/SanitizedFile;

.field private final repoDirCaps:Lorg/fdroid/fdroid/data/SanitizedFile;

.field private final webRoot:Lorg/fdroid/fdroid/data/SanitizedFile;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 0
    const-string v0, "swap-tick-done.png"

    const-string v1, "swap-tick-not-done.png"

    const-string v2, "swap-icon.png"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/fdroid/fdroid/nearby/LocalRepoManager;->WEB_ROOT_ASSET_FILES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/fdroid/fdroid/nearby/LocalRepoManager;->apps:Ljava/util/List;

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/nearby/LocalRepoManager;->context:Landroid/content/Context;

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/nearby/LocalRepoManager;->pm:Landroid/content/pm/PackageManager;

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/nearby/LocalRepoManager;->assetManager:Landroid/content/res/AssetManager;

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/nearby/LocalRepoManager;->fdroidPackageName:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lorg/fdroid/fdroid/data/SanitizedFile;->knownSanitized(Ljava/io/File;)Lorg/fdroid/fdroid/data/SanitizedFile;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/LocalRepoManager;->webRoot:Lorg/fdroid/fdroid/data/SanitizedFile;

    .line 95
    new-instance v0, Lorg/fdroid/fdroid/data/SanitizedFile;

    const-string v1, "fdroid"

    invoke-direct {v0, p1, v1}, Lorg/fdroid/fdroid/data/SanitizedFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/fdroid/fdroid/nearby/LocalRepoManager;->fdroidDir:Lorg/fdroid/fdroid/data/SanitizedFile;

    .line 96
    new-instance v1, Lorg/fdroid/fdroid/data/SanitizedFile;

    const-string v2, "FDROID"

    invoke-direct {v1, p1, v2}, Lorg/fdroid/fdroid/data/SanitizedFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/fdroid/fdroid/nearby/LocalRepoManager;->fdroidDirCaps:Lorg/fdroid/fdroid/data/SanitizedFile;

    .line 97
    new-instance p1, Lorg/fdroid/fdroid/data/SanitizedFile;

    const-string v2, "repo"

    invoke-direct {p1, v0, v2}, Lorg/fdroid/fdroid/data/SanitizedFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/LocalRepoManager;->repoDir:Lorg/fdroid/fdroid/data/SanitizedFile;

    .line 98
    new-instance v2, Lorg/fdroid/fdroid/data/SanitizedFile;

    const-string v3, "REPO"

    invoke-direct {v2, v1, v3}, Lorg/fdroid/fdroid/data/SanitizedFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lorg/fdroid/fdroid/nearby/LocalRepoManager;->repoDirCaps:Lorg/fdroid/fdroid/data/SanitizedFile;

    .line 99
    new-instance v1, Lorg/fdroid/fdroid/data/SanitizedFile;

    const-string v2, "index-v1.jar"

    invoke-direct {v1, p1, v2}, Lorg/fdroid/fdroid/data/SanitizedFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/fdroid/fdroid/nearby/LocalRepoManager;->indexJar:Lorg/fdroid/fdroid/data/SanitizedFile;

    .line 100
    new-instance v1, Lorg/fdroid/fdroid/data/SanitizedFile;

    const-string v2, "index-v1.unsigned.jar"

    invoke-direct {v1, p1, v2}, Lorg/fdroid/fdroid/data/SanitizedFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/fdroid/fdroid/nearby/LocalRepoManager;->indexJarUnsigned:Lorg/fdroid/fdroid/data/SanitizedFile;

    .line 102
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "LocalRepoManager"

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create empty base: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_1

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to create empty repo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_1
    new-instance v0, Lorg/fdroid/fdroid/data/SanitizedFile;

    const-string v1, "icons"

    invoke-direct {v0, p1, v1}, Lorg/fdroid/fdroid/data/SanitizedFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result p1

    if-nez p1, :cond_2

    .line 112
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to create icons folder: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private static attemptToDelete(Ljava/io/File;)V
    .locals 2

    .line 208
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not delete \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LocalRepoManager"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static attemptToMkdir(Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 199
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t make directory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " - it is already a file."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 203
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An error occurred trying to create directory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private cacheApps(Lorg/fdroid/index/v1/IndexV1;)V
    .locals 6

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/LocalRepoManager;->apps:Ljava/util/List;

    .line 269
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 270
    invoke-virtual {p1}, Lorg/fdroid/index/v1/IndexV1;->getApps()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fdroid/index/v1/AppV1;

    .line 271
    new-instance v2, Lorg/fdroid/fdroid/data/App;

    invoke-direct {v2}, Lorg/fdroid/fdroid/data/App;-><init>()V

    .line 272
    invoke-virtual {v1}, Lorg/fdroid/index/v1/AppV1;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/fdroid/fdroid/data/App;->packageName:Ljava/lang/String;

    .line 273
    invoke-virtual {v1}, Lorg/fdroid/index/v1/AppV1;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/fdroid/fdroid/data/App;->name:Ljava/lang/String;

    .line 274
    new-instance v3, Lorg/fdroid/fdroid/data/Apk;

    invoke-direct {v3}, Lorg/fdroid/fdroid/data/Apk;-><init>()V

    iput-object v3, v2, Lorg/fdroid/fdroid/data/App;->installedApk:Lorg/fdroid/fdroid/data/Apk;

    .line 275
    invoke-virtual {p1}, Lorg/fdroid/index/v1/IndexV1;->getPackages()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1}, Lorg/fdroid/index/v1/AppV1;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 276
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x0

    .line 277
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fdroid/index/v1/PackageV1;

    invoke-virtual {v1}, Lorg/fdroid/index/v1/PackageV1;->getVersionCode()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, v2, Lorg/fdroid/fdroid/data/App;->installedApk:Lorg/fdroid/fdroid/data/Apk;

    .line 278
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v3, Lorg/fdroid/fdroid/data/Apk;->versionCode:J

    :cond_0
    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/LocalRepoManager;->apps:Ljava/util/List;

    .line 280
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private deleteContents(Ljava/io/File;)V
    .locals 4

    .line 227
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 229
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 230
    invoke-direct {p0, v2}, Lorg/fdroid/fdroid/nearby/LocalRepoManager;->deleteContents(Ljava/io/File;)V

    goto :goto_1

    .line 232
    :cond_0
    invoke-static {v2}, Lorg/fdroid/fdroid/nearby/LocalRepoManager;->attemptToDelete(Ljava/io/File;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static get(Landroid/content/Context;)Lorg/fdroid/fdroid/nearby/LocalRepoManager;
    .locals 1

    sget-object v0, Lorg/fdroid/fdroid/nearby/LocalRepoManager;->localRepoManager:Lorg/fdroid/fdroid/nearby/LocalRepoManager;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lorg/fdroid/fdroid/nearby/LocalRepoManager;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/nearby/LocalRepoManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/fdroid/fdroid/nearby/LocalRepoManager;->localRepoManager:Lorg/fdroid/fdroid/nearby/LocalRepoManager;

    :cond_0
    sget-object p0, Lorg/fdroid/fdroid/nearby/LocalRepoManager;->localRepoManager:Lorg/fdroid/fdroid/nearby/LocalRepoManager;

    return-object p0
.end method

.method private symlinkEntireWebRootElsewhere(Ljava/lang/String;Ljava/io/File;)V
    .locals 4

    const-string v0, "index.html"

    .line 214
    invoke-direct {p0, v0, p1, p2}, Lorg/fdroid/fdroid/nearby/LocalRepoManager;->symlinkFileElsewhere(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    sget-object v0, Lorg/fdroid/fdroid/nearby/LocalRepoManager;->WEB_ROOT_ASSET_FILES:[Ljava/lang/String;

    .line 215
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 216
    invoke-direct {p0, v3, p1, p2}, Lorg/fdroid/fdroid/nearby/LocalRepoManager;->symlinkFileElsewhere(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private symlinkFileElsewhere(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 3

    .line 221
    new-instance v0, Lorg/fdroid/fdroid/data/SanitizedFile;

    invoke-direct {v0, p3, p1}, Lorg/fdroid/fdroid/data/SanitizedFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 222
    invoke-static {v0}, Lorg/fdroid/fdroid/nearby/LocalRepoManager;->attemptToDelete(Ljava/io/File;)V

    .line 223
    new-instance v1, Lorg/fdroid/fdroid/data/SanitizedFile;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p3, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2, p1}, Lorg/fdroid/fdroid/data/SanitizedFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lorg/fdroid/fdroid/Utils;->symlinkOrCopyFileQuietly(Lorg/fdroid/fdroid/data/SanitizedFile;Lorg/fdroid/fdroid/data/SanitizedFile;)Z

    return-void
.end method

.method private writeFdroidApkToWebroot()Ljava/lang/String;
    .locals 6

    const-string v0, "/"

    const-string v1, "https://f-droid.org/F-Droid.apk"

    :try_start_0
    iget-object v2, p0, Lorg/fdroid/fdroid/nearby/LocalRepoManager;->pm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lorg/fdroid/fdroid/nearby/LocalRepoManager;->fdroidPackageName:Ljava/lang/String;

    const/16 v4, 0x80

    .line 121
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 122
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-static {v2}, Lorg/fdroid/fdroid/data/SanitizedFile;->knownSanitized(Ljava/lang/String;)Lorg/fdroid/fdroid/data/SanitizedFile;

    move-result-object v2

    .line 123
    new-instance v3, Lorg/fdroid/fdroid/data/SanitizedFile;

    iget-object v4, p0, Lorg/fdroid/fdroid/nearby/LocalRepoManager;->fdroidDir:Lorg/fdroid/fdroid/data/SanitizedFile;

    const-string v5, "F-Droid.apk"

    invoke-direct {v3, v4, v5}, Lorg/fdroid/fdroid/data/SanitizedFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 124
    invoke-static {v3}, Lorg/fdroid/fdroid/nearby/LocalRepoManager;->attemptToDelete(Ljava/io/File;)V

    .line 125
    invoke-static {v2, v3}, Lorg/fdroid/fdroid/Utils;->symlinkOrCopyFileQuietly(Lorg/fdroid/fdroid/data/SanitizedFile;Lorg/fdroid/fdroid/data/SanitizedFile;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/fdroid/fdroid/nearby/LocalRepoManager;->fdroidDir:Lorg/fdroid/fdroid/data/SanitizedFile;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "LocalRepoManager"

    const-string v3, "Could not set up F-Droid apk in the webroot"

    .line 129
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-object v1
.end method

.method private writeIndexJar(Lorg/fdroid/fdroid/data/SanitizedFile;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 285
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lorg/fdroid/fdroid/nearby/LocalRepoManager;->indexJarUnsigned:Lorg/fdroid/fdroid/data/SanitizedFile;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 286
    new-instance v1, Ljava/util/jar/JarOutputStream;

    invoke-direct {v1, v0}, Ljava/util/jar/JarOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 287
    new-instance v2, Ljava/util/jar/JarEntry;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/jar/JarEntry;-><init>(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v1, v2}, Ljava/util/jar/JarOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 289
    invoke-static {p1, v1}, Lorg/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/OutputStream;)J

    .line 290
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 291
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :try_start_0
    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/LocalRepoManager;->context:Landroid/content/Context;

    .line 294
    invoke-static {p1}, Lorg/fdroid/fdroid/nearby/LocalRepoKeyStore;->get(Landroid/content/Context;)Lorg/fdroid/fdroid/nearby/LocalRepoKeyStore;

    move-result-object p1

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/LocalRepoManager;->indexJarUnsigned:Lorg/fdroid/fdroid/data/SanitizedFile;

    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/LocalRepoManager;->indexJar:Lorg/fdroid/fdroid/data/SanitizedFile;

    invoke-virtual {p1, v0, v1}, Lorg/fdroid/fdroid/nearby/LocalRepoKeyStore;->signZip(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Lorg/fdroid/fdroid/nearby/LocalRepoKeyStore$InitException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/LocalRepoManager;->indexJarUnsigned:Lorg/fdroid/fdroid/data/SanitizedFile;

    .line 298
    invoke-static {p1}, Lorg/fdroid/fdroid/nearby/LocalRepoManager;->attemptToDelete(Ljava/io/File;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 296
    :catch_0
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Could not sign index - keystore failed to initialize"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/LocalRepoManager;->indexJarUnsigned:Lorg/fdroid/fdroid/data/SanitizedFile;

    .line 298
    invoke-static {v0}, Lorg/fdroid/fdroid/nearby/LocalRepoManager;->attemptToDelete(Ljava/io/File;)V

    .line 299
    throw p1
.end method


# virtual methods
.method public deleteRepo()V
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/LocalRepoManager;->repoDir:Lorg/fdroid/fdroid/data/SanitizedFile;

    .line 250
    invoke-direct {p0, v0}, Lorg/fdroid/fdroid/nearby/LocalRepoManager;->deleteContents(Ljava/io/File;)V

    return-void
.end method

.method generateIndex(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fdroid/fdroid/Preferences;->getLocalRepoName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/fdroid/fdroid/FDroidApp;->ipAddressString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "A local FDroid repo generated from apps installed on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fdroid/fdroid/Preferences;->getLocalRepoName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 257
    new-instance v0, Lorg/fdroid/index/v1/RepoV1;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/16 v5, 0x4e21

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v8, "swap-icon.png"

    .line 258
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    move-object v2, v0

    move-object v9, p2

    invoke-direct/range {v2 .. v11}, Lorg/fdroid/index/v1/RepoV1;-><init>(JILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 259
    new-instance p2, Ljava/util/HashSet;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 260
    new-instance p3, Lorg/fdroid/index/v1/IndexV1Creator;

    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/LocalRepoManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lorg/fdroid/fdroid/nearby/LocalRepoManager;->repoDir:Lorg/fdroid/fdroid/data/SanitizedFile;

    invoke-direct {p3, v1, v2, p2, v0}, Lorg/fdroid/index/v1/IndexV1Creator;-><init>(Landroid/content/pm/PackageManager;Ljava/io/File;Ljava/util/Set;Lorg/fdroid/index/v1/RepoV1;)V

    .line 261
    invoke-virtual {p3}, Lorg/fdroid/index/v1/IndexV1Creator;->createRepo()Lorg/fdroid/index/v1/IndexV1;

    move-result-object p2

    .line 262
    invoke-direct {p0, p2}, Lorg/fdroid/fdroid/nearby/LocalRepoManager;->cacheApps(Lorg/fdroid/index/v1/IndexV1;)V

    .line 263
    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/nearby/LocalRepoManager;->writeIndexPage(Ljava/lang/String;)V

    .line 264
    new-instance p1, Lorg/fdroid/fdroid/data/SanitizedFile;

    iget-object p2, p0, Lorg/fdroid/fdroid/nearby/LocalRepoManager;->repoDir:Lorg/fdroid/fdroid/data/SanitizedFile;

    const-string p3, "index-v1.json"

    invoke-direct {p1, p2, p3}, Lorg/fdroid/fdroid/data/SanitizedFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 265
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/nearby/LocalRepoManager;->writeIndexJar(Lorg/fdroid/fdroid/data/SanitizedFile;)V

    return-void
.end method

.method public getIndexJar()Ljava/io/File;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/LocalRepoManager;->indexJar:Lorg/fdroid/fdroid/data/SanitizedFile;

    return-object v0
.end method

.method public getWebRoot()Ljava/io/File;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/LocalRepoManager;->webRoot:Lorg/fdroid/fdroid/data/SanitizedFile;

    return-object v0
.end method

.method writeIndexPage(Ljava/lang/String;)V
    .locals 11

    const-string v0, "../../"

    const-string v1, "../"

    const-string v2, "_"

    .line 135
    invoke-direct {p0}, Lorg/fdroid/fdroid/nearby/LocalRepoManager;->writeFdroidApkToWebroot()Ljava/lang/String;

    move-result-object v3

    .line 137
    :try_start_0
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lorg/fdroid/fdroid/nearby/LocalRepoManager;->webRoot:Lorg/fdroid/fdroid/data/SanitizedFile;

    const-string v6, "index.html"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 138
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    iget-object v7, p0, Lorg/fdroid/fdroid/nearby/LocalRepoManager;->assetManager:Landroid/content/res/AssetManager;

    const-string v8, "index.template.html"

    .line 139
    invoke-virtual {v7, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-direct {v6, v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 140
    new-instance v6, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/OutputStreamWriter;

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 143
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lorg/fdroid/fdroid/nearby/LocalRepoManager;->apps:Ljava/util/List;

    .line 144
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/fdroid/fdroid/data/App;

    const-string v9, "<li><a href=\"/fdroid/repo/"

    .line 145
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v8, Lorg/fdroid/fdroid/data/App;->packageName:Ljava/lang/String;

    .line 146
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v8, Lorg/fdroid/fdroid/data/App;->installedApk:Lorg/fdroid/fdroid/data/Apk;

    iget-wide v9, v9, Lorg/fdroid/fdroid/data/Apk;->versionCode:J

    .line 148
    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ".apk\">"

    .line 149
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "<img width=\"32\" height=\"32\" src=\"/fdroid/repo/icons/"

    .line 150
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v8, Lorg/fdroid/fdroid/data/App;->packageName:Ljava/lang/String;

    .line 151
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v8, Lorg/fdroid/fdroid/data/App;->installedApk:Lorg/fdroid/fdroid/data/Apk;

    iget-wide v9, v9, Lorg/fdroid/fdroid/data/Apk;->versionCode:J

    .line 153
    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ".png\">"

    .line 154
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v8, Lorg/fdroid/fdroid/data/App;->name:Ljava/lang/String;

    .line 155
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "</a></li>\n"

    .line 156
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_3

    .line 160
    :cond_0
    :goto_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v7, "\\{\\{REPO_URL\\}\\}"

    .line 161
    invoke-virtual {v2, v7, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "\\{\\{CLIENT_URL\\}\\}"

    .line 162
    invoke-virtual {v2, v7, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "\\{\\{APP_LIST\\}\\}"

    .line 163
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 164
    invoke-virtual {v6, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 166
    :cond_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 167
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V

    sget-object p1, Lorg/fdroid/fdroid/nearby/LocalRepoManager;->WEB_ROOT_ASSET_FILES:[Ljava/lang/String;

    .line 169
    array-length v2, p1

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_2

    aget-object v4, p1, v3

    iget-object v5, p0, Lorg/fdroid/fdroid/nearby/LocalRepoManager;->assetManager:Landroid/content/res/AssetManager;

    .line 170
    invoke-virtual {v5, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 171
    new-instance v6, Ljava/io/FileOutputStream;

    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lorg/fdroid/fdroid/nearby/LocalRepoManager;->webRoot:Lorg/fdroid/fdroid/data/SanitizedFile;

    invoke-direct {v7, v8, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 172
    invoke-static {v5, v6}, Lorg/fdroid/fdroid/Utils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 173
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 174
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/LocalRepoManager;->fdroidDir:Lorg/fdroid/fdroid/data/SanitizedFile;

    .line 179
    invoke-direct {p0, v1, p1}, Lorg/fdroid/fdroid/nearby/LocalRepoManager;->symlinkEntireWebRootElsewhere(Ljava/lang/String;Ljava/io/File;)V

    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/LocalRepoManager;->repoDir:Lorg/fdroid/fdroid/data/SanitizedFile;

    .line 180
    invoke-direct {p0, v0, p1}, Lorg/fdroid/fdroid/nearby/LocalRepoManager;->symlinkEntireWebRootElsewhere(Ljava/lang/String;Ljava/io/File;)V

    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/LocalRepoManager;->fdroidDirCaps:Lorg/fdroid/fdroid/data/SanitizedFile;

    .line 183
    invoke-static {p1}, Lorg/fdroid/fdroid/nearby/LocalRepoManager;->attemptToMkdir(Ljava/io/File;)V

    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/LocalRepoManager;->repoDirCaps:Lorg/fdroid/fdroid/data/SanitizedFile;

    .line 184
    invoke-static {p1}, Lorg/fdroid/fdroid/nearby/LocalRepoManager;->attemptToMkdir(Ljava/io/File;)V

    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/LocalRepoManager;->fdroidDirCaps:Lorg/fdroid/fdroid/data/SanitizedFile;

    .line 186
    invoke-direct {p0, v1, p1}, Lorg/fdroid/fdroid/nearby/LocalRepoManager;->symlinkEntireWebRootElsewhere(Ljava/lang/String;Ljava/io/File;)V

    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/LocalRepoManager;->repoDirCaps:Lorg/fdroid/fdroid/data/SanitizedFile;

    .line 187
    invoke-direct {p0, v0, p1}, Lorg/fdroid/fdroid/nearby/LocalRepoManager;->symlinkEntireWebRootElsewhere(Ljava/lang/String;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    const-string v0, "LocalRepoManager"

    const-string v1, "Error writing local repo index"

    .line 190
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    return-void
.end method
