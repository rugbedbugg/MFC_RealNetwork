.class public Lorg/fdroid/fdroid/installer/InstallerFactory;
.super Ljava/lang/Object;
.source "InstallerFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "InstallerFactory"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;)Lorg/fdroid/fdroid/installer/Installer;
    .locals 3

    .line 47
    iget-object v0, p2, Lorg/fdroid/fdroid/data/Apk;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 52
    invoke-virtual {p2}, Lorg/fdroid/fdroid/data/Apk;->isApk()Z

    move-result v0

    const-string v1, "InstallerFactory"

    if-nez v0, :cond_0

    const-string v0, "Using FileInstaller for non-apk file"

    .line 53
    invoke-static {v1, v0}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    new-instance v0, Lorg/fdroid/fdroid/installer/FileInstaller;

    invoke-direct {v0, p0, p1, p2}, Lorg/fdroid/fdroid/installer/FileInstaller;-><init>(Landroid/content/Context;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;)V

    goto :goto_0

    .line 55
    :cond_0
    invoke-static {p0}, Lorg/fdroid/fdroid/installer/PrivilegedInstaller;->isDefault(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "privileged extension correctly installed -> PrivilegedInstaller"

    .line 56
    invoke-static {v1, v0}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    new-instance v0, Lorg/fdroid/fdroid/installer/PrivilegedInstaller;

    invoke-direct {v0, p0, p1, p2}, Lorg/fdroid/fdroid/installer/PrivilegedInstaller;-><init>(Landroid/content/Context;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;)V

    goto :goto_0

    .line 58
    :cond_1
    iget v0, p2, Lorg/fdroid/fdroid/data/Apk;->targetSdkVersion:I

    invoke-static {v0}, Lorg/fdroid/fdroid/installer/SessionInstallManager;->isTargetSdkSupported(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    invoke-static {p0}, Lorg/fdroid/fdroid/installer/SessionInstallManager;->canBeUsed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "using experimental SessionInstaller, because app targets "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lorg/fdroid/fdroid/data/Apk;->targetSdkVersion:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    new-instance v0, Lorg/fdroid/fdroid/installer/SessionInstaller;

    invoke-direct {v0, p0, p1, p2}, Lorg/fdroid/fdroid/installer/SessionInstaller;-><init>(Landroid/content/Context;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;)V

    goto :goto_0

    .line 63
    :cond_2
    new-instance v0, Lorg/fdroid/fdroid/installer/DefaultInstaller;

    invoke-direct {v0, p0, p1, p2}, Lorg/fdroid/fdroid/installer/DefaultInstaller;-><init>(Landroid/content/Context;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;)V

    :goto_0
    return-object v0

    .line 48
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Apk.packageName must not be empty: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
