.class public Lorg/fdroid/fdroid/privileged/views/AppDiff;
.super Ljava/lang/Object;
.source "AppDiff.java"


# instance fields
.field public final apkPackageInfo:Landroid/content/pm/PackageInfo;

.field public final installedApplicationInfo:Landroid/content/pm/ApplicationInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/fdroid/fdroid/data/Apk;)V
    .locals 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 39
    new-instance v0, Landroid/content/pm/PackageInfo;

    invoke-direct {v0}, Landroid/content/pm/PackageInfo;-><init>()V

    iput-object v0, p0, Lorg/fdroid/fdroid/privileged/views/AppDiff;->apkPackageInfo:Landroid/content/pm/PackageInfo;

    .line 40
    iget-object v1, p2, Lorg/fdroid/fdroid/data/Apk;->packageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 41
    new-instance v1, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v1}, Landroid/content/pm/ApplicationInfo;-><init>()V

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 42
    iget-object p2, p2, Lorg/fdroid/fdroid/data/Apk;->requestedPermissions:[Ljava/lang/String;

    iput-object p2, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    iget-object p2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 48
    array-length v2, v1

    if-lez v2, :cond_0

    const/4 v2, 0x0

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object p2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 51
    iput-object v1, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object p2, v1

    :cond_0
    const/16 v0, 0x2000

    const/4 v1, 0x0

    .line 60
    :try_start_0
    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 61
    iget p2, p1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v0, 0x800000

    and-int/2addr p2, v0

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p1

    :catch_0
    :goto_0
    iput-object v1, p0, Lorg/fdroid/fdroid/privileged/views/AppDiff;->installedApplicationInfo:Landroid/content/pm/ApplicationInfo;

    return-void
.end method
