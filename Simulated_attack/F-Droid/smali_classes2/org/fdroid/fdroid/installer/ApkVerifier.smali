.class Lorg/fdroid/fdroid/installer/ApkVerifier;
.super Ljava/lang/Object;
.source "ApkVerifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fdroid/fdroid/installer/ApkVerifier$ApkVerificationException;,
        Lorg/fdroid/fdroid/installer/ApkVerifier$ApkPermissionUnequalException;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ApkVerifier"


# instance fields
.field private final expectedApk:Lorg/fdroid/fdroid/data/Apk;

.field private final localApkUri:Landroid/net/Uri;

.field private final pm:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lorg/fdroid/fdroid/data/Apk;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/fdroid/fdroid/installer/ApkVerifier;->localApkUri:Landroid/net/Uri;

    iput-object p3, p0, Lorg/fdroid/fdroid/installer/ApkVerifier;->expectedApk:Lorg/fdroid/fdroid/data/Apk;

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/installer/ApkVerifier;->pm:Landroid/content/pm/PackageManager;

    return-void
.end method

.method static requestedPermissionsEqual([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5

    const-string v0, "Checking permissions"

    const-string v1, "ApkVerifier"

    .line 110
    invoke-static {v1, v0}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected:\n  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n  "

    const-string v3, "None"

    if-nez p0, :cond_0

    move-object v4, v3

    goto :goto_0

    :cond_0
    invoke-static {v2, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Actual:\n  "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v2, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_2

    if-nez p1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_3

    goto :goto_2

    .line 120
    :cond_3
    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_4

    return v0

    .line 123
    :cond_4
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 124
    new-instance p0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 125
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_5
    :goto_2
    return v0
.end method


# virtual methods
.method verifyApk()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fdroid/fdroid/installer/ApkVerifier$ApkVerificationException;,
            Lorg/fdroid/fdroid/installer/ApkVerifier$ApkPermissionUnequalException;
        }
    .end annotation

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "localApkUri.getPath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/fdroid/fdroid/installer/ApkVerifier;->localApkUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApkVerifier"

    invoke-static {v1, v0}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fdroid/fdroid/installer/ApkVerifier;->pm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lorg/fdroid/fdroid/installer/ApkVerifier;->localApkUri:Landroid/net/Uri;

    .line 65
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1000

    .line 64
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 76
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lorg/fdroid/fdroid/installer/ApkVerifier;->expectedApk:Lorg/fdroid/fdroid/data/Apk;

    iget-object v3, v3, Lorg/fdroid/fdroid/data/Apk;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 81
    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    if-ltz v2, :cond_3

    .line 85
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget-object v3, p0, Lorg/fdroid/fdroid/installer/ApkVerifier;->expectedApk:Lorg/fdroid/fdroid/data/Apk;

    .line 86
    iget v3, v3, Lorg/fdroid/fdroid/data/Apk;->targetSdkVersion:I

    .line 87
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "localTargetSdkVersion: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "expectedTargetSdkVersion: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_0

    const-string v2, "Skipping check for targetSdkVersion, not available in this app or repo!"

    .line 91
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    if-ne v2, v3, :cond_2

    :goto_0
    iget-object v1, p0, Lorg/fdroid/fdroid/installer/ApkVerifier;->expectedApk:Lorg/fdroid/fdroid/data/Apk;

    .line 99
    iget-object v1, v1, Lorg/fdroid/fdroid/data/Apk;->requestedPermissions:[Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/fdroid/fdroid/installer/ApkVerifier;->requestedPermissionsEqual([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 100
    :cond_1
    new-instance v0, Lorg/fdroid/fdroid/installer/ApkVerifier$ApkPermissionUnequalException;

    const-string v1, "Permissions in APK and index do not match!"

    invoke-direct {v0, v1}, Lorg/fdroid/fdroid/installer/ApkVerifier$ApkPermissionUnequalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_2
    new-instance v0, Lorg/fdroid/fdroid/installer/ApkVerifier$ApkVerificationException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 95
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "TargetSdkVersion of apk file (%d) is not the expected targetSdkVersion (%d)!"

    .line 94
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/fdroid/fdroid/installer/ApkVerifier$ApkVerificationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_3
    new-instance v0, Lorg/fdroid/fdroid/installer/ApkVerifier$ApkVerificationException;

    const-string v1, "Apk file has no valid versionCode!"

    invoke-direct {v0, v1}, Lorg/fdroid/fdroid/installer/ApkVerifier$ApkVerificationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_4
    new-instance v1, Lorg/fdroid/fdroid/installer/ApkVerifier$ApkVerificationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Apk file has unexpected packageName! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/fdroid/fdroid/installer/ApkVerifier$ApkVerificationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 70
    :cond_5
    new-instance v0, Lorg/fdroid/fdroid/installer/ApkVerifier$ApkVerificationException;

    const-string v1, "Parsing apk file failed! Maybe minSdk of apk is lower than current Sdk? Look into logcat for more specific warnings of Android\'s PackageParser"

    invoke-direct {v0, v1}, Lorg/fdroid/fdroid/installer/ApkVerifier$ApkVerificationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
