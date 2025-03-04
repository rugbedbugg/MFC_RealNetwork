.class public Lorg/fdroid/fdroid/installer/DefaultInstaller;
.super Lorg/fdroid/fdroid/installer/Installer;
.source "DefaultInstaller.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "DefaultInstaller"


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lorg/fdroid/fdroid/installer/Installer;-><init>(Landroid/content/Context;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;)V

    return-void
.end method


# virtual methods
.method protected installPackageInternal(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/16 v2, 0x1f

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lorg/fdroid/fdroid/installer/Installer;->context:Landroid/content/Context;

    .line 55
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/fdroid/fdroid/installer/Installer;->context:Landroid/content/Context;

    .line 56
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0}, Lorg/fdroid/fdroid/installer/DefaultInstaller$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/pm/PackageManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.MANAGE_UNKNOWN_APP_SOURCES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 58
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/fdroid/fdroid/installer/Installer;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lorg/fdroid/fdroid/installer/Installer;->context:Landroid/content/Context;

    .line 60
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 64
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/fdroid/fdroid/installer/Installer;->context:Landroid/content/Context;

    const-class v2, Lorg/fdroid/fdroid/installer/DefaultInstallerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "org.fdroid.fdroid.installer.DefaultInstaller.action.INSTALL_PACKAGE"

    .line 65
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "org.fdroid.fdroid.net.Downloader.extra.CANONICAL_URL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "org.fdroid.fdroid.installer.Installer.extra.APP"

    iget-object v2, p0, Lorg/fdroid/fdroid/installer/Installer;->app:Lorg/fdroid/fdroid/data/App;

    .line 67
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "org.fdroid.fdroid.installer.Installer.extra.APK"

    iget-object v2, p0, Lorg/fdroid/fdroid/installer/Installer;->apk:Lorg/fdroid/fdroid/data/Apk;

    .line 68
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 69
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lorg/fdroid/fdroid/installer/Installer;->context:Landroid/content/Context;

    .line 72
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 73
    invoke-virtual {p1}, Landroid/net/Uri;->hashCode()I

    move-result p1

    const/high16 v2, 0xc000000

    .line 71
    invoke-static {v1, p1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const-string v0, "org.fdroid.fdroid.installer.Installer.action.INSTALL_USER_INTERACTION"

    .line 77
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

    .line 83
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/fdroid/fdroid/installer/Installer;->context:Landroid/content/Context;

    const-class v2, Lorg/fdroid/fdroid/installer/DefaultInstallerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "org.fdroid.fdroid.installer.DefaultInstaller.action.UNINSTALL_PACKAGE"

    .line 84
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "org.fdroid.fdroid.installer.Installer.extra.APP"

    iget-object v2, p0, Lorg/fdroid/fdroid/installer/Installer;->app:Lorg/fdroid/fdroid/data/App;

    .line 85
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "org.fdroid.fdroid.installer.Installer.extra.APK"

    iget-object v2, p0, Lorg/fdroid/fdroid/installer/Installer;->apk:Lorg/fdroid/fdroid/data/Apk;

    .line 86
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lorg/fdroid/fdroid/installer/Installer;->context:Landroid/content/Context;

    .line 88
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/fdroid/fdroid/installer/Installer;->apk:Lorg/fdroid/fdroid/data/Apk;

    iget-object v2, v2, Lorg/fdroid/fdroid/data/Apk;->packageName:Ljava/lang/String;

    .line 89
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/high16 v3, 0xc000000

    .line 87
    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const-string v1, "org.fdroid.fdroid.installer.Installer.action.UNINSTALL_USER_INTERACTION"

    .line 93
    invoke-virtual {p0, v1, v0}, Lorg/fdroid/fdroid/installer/Installer;->sendBroadcastUninstall(Ljava/lang/String;Landroid/app/PendingIntent;)V

    return-void
.end method
