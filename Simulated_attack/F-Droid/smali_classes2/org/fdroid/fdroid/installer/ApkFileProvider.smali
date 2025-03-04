.class public Lorg/fdroid/fdroid/installer/ApkFileProvider;
.super Landroidx/core/content/FileProvider;
.source "ApkFileProvider.java"


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "org.fdroid.fdroid.installer.ApkFileProvider"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Landroidx/core/content/FileProvider;-><init>()V

    return-void
.end method

.method public static getSafeUri(Landroid/content/Context;Landroid/content/pm/PackageInfo;)Landroid/net/Uri;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    invoke-static {p0, p1}, Lorg/fdroid/fdroid/installer/ApkCache;->copyInstalledApkToFiles(Landroid/content/Context;Landroid/content/pm/PackageInfo;)Lorg/fdroid/fdroid/data/SanitizedFile;

    move-result-object p1

    const/4 v0, 0x1

    .line 64
    invoke-static {p0, p1, v0}, Lorg/fdroid/fdroid/installer/ApkFileProvider;->getSafeUri(Landroid/content/Context;Lorg/fdroid/fdroid/data/SanitizedFile;Z)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static getSafeUri(Landroid/content/Context;Landroid/net/Uri;Lorg/fdroid/fdroid/data/Apk;)Landroid/net/Uri;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-static {p0, v0, p2}, Lorg/fdroid/fdroid/installer/ApkCache;->copyApkFromCacheToFiles(Landroid/content/Context;Ljava/io/File;Lorg/fdroid/fdroid/data/Apk;)Lorg/fdroid/fdroid/data/SanitizedFile;

    move-result-object p1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 79
    invoke-virtual {p2}, Lorg/fdroid/fdroid/data/Apk;->isApk()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 78
    :goto_0
    invoke-static {p0, p1, p2}, Lorg/fdroid/fdroid/installer/ApkFileProvider;->getSafeUri(Landroid/content/Context;Lorg/fdroid/fdroid/data/SanitizedFile;Z)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private static getSafeUri(Landroid/content/Context;Lorg/fdroid/fdroid/data/SanitizedFile;Z)Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    const-string p2, "org.fdroid.fdroid.installer.ApkFileProvider"

    .line 97
    invoke-static {p0, p2, p1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "org.fdroid.fdroid.privileged"

    .line 98
    invoke-virtual {p0, p2, p1, v0}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    const-string p2, "com.android.bluetooth"

    .line 100
    invoke-virtual {p0, p2, p1, v0}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    const-string p2, "com.mediatek.bluetooth"

    .line 101
    invoke-virtual {p0, p2, p1, v0}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    .line 104
    invoke-virtual {p1, v0, p0}, Ljava/io/File;->setReadable(ZZ)Z

    .line 105
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method
