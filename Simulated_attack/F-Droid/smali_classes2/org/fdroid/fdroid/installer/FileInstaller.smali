.class public Lorg/fdroid/fdroid/installer/FileInstaller;
.super Lorg/fdroid/fdroid/installer/Installer;
.source "FileInstaller.java"


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lorg/fdroid/fdroid/installer/Installer;-><init>(Landroid/content/Context;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;)V

    return-void
.end method


# virtual methods
.method public getPermissionScreen()Landroid/content/Intent;
    .locals 1

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUninstallScreen()Landroid/content/Intent;
    .locals 1

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public installPackage(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 0

    .line 51
    invoke-virtual {p0, p1, p2}, Lorg/fdroid/fdroid/installer/FileInstaller;->installPackageInternal(Landroid/net/Uri;Landroid/net/Uri;)V

    return-void
.end method

.method protected installPackageInternal(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 3

    .line 56
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/fdroid/fdroid/installer/Installer;->context:Landroid/content/Context;

    const-class v2, Lorg/fdroid/fdroid/installer/FileInstallerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "org.fdroid.fdroid.installer.FileInstaller.action.INSTALL_PACKAGE"

    .line 57
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "org.fdroid.fdroid.net.Downloader.extra.CANONICAL_URL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "org.fdroid.fdroid.installer.Installer.extra.APP"

    iget-object v2, p0, Lorg/fdroid/fdroid/installer/Installer;->app:Lorg/fdroid/fdroid/data/App;

    .line 59
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "org.fdroid.fdroid.installer.Installer.extra.APK"

    iget-object v2, p0, Lorg/fdroid/fdroid/installer/Installer;->apk:Lorg/fdroid/fdroid/data/Apk;

    .line 60
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 61
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lorg/fdroid/fdroid/installer/Installer;->context:Landroid/content/Context;

    .line 64
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 65
    invoke-virtual {p1}, Landroid/net/Uri;->hashCode()I

    move-result p1

    const/high16 v2, 0xc000000

    .line 63
    invoke-static {v1, p1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const-string v0, "org.fdroid.fdroid.installer.Installer.action.INSTALL_USER_INTERACTION"

    .line 69
    invoke-virtual {p0, p2, v0, p1}, Lorg/fdroid/fdroid/installer/Installer;->sendBroadcastInstall(Landroid/net/Uri;Ljava/lang/String;Landroid/app/PendingIntent;)V

    return-void
.end method

.method protected isUnattended()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method protected uninstallPackage()V
    .locals 4

    .line 75
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/fdroid/fdroid/installer/Installer;->context:Landroid/content/Context;

    const-class v2, Lorg/fdroid/fdroid/installer/FileInstallerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "org.fdroid.fdroid.installer.FileInstaller.action.UNINSTALL_PACKAGE"

    .line 76
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "org.fdroid.fdroid.installer.Installer.extra.APP"

    iget-object v2, p0, Lorg/fdroid/fdroid/installer/Installer;->app:Lorg/fdroid/fdroid/data/App;

    .line 77
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "org.fdroid.fdroid.installer.Installer.extra.APK"

    iget-object v2, p0, Lorg/fdroid/fdroid/installer/Installer;->apk:Lorg/fdroid/fdroid/data/Apk;

    .line 78
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lorg/fdroid/fdroid/installer/Installer;->context:Landroid/content/Context;

    .line 80
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/fdroid/fdroid/installer/Installer;->apk:Lorg/fdroid/fdroid/data/Apk;

    iget-object v2, v2, Lorg/fdroid/fdroid/data/Apk;->packageName:Ljava/lang/String;

    .line 81
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/high16 v3, 0xc000000

    .line 79
    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const-string v1, "org.fdroid.fdroid.installer.Installer.action.UNINSTALL_USER_INTERACTION"

    .line 85
    invoke-virtual {p0, v1, v0}, Lorg/fdroid/fdroid/installer/Installer;->sendBroadcastUninstall(Ljava/lang/String;Landroid/app/PendingIntent;)V

    return-void
.end method
